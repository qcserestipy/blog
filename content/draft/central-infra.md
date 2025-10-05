---
title: "Central Infrastructure"
date: 2025-10-04T18:41:00+02:00
draft: false
hidemeta: false
comments: false
description: "Why it matters"
ShowBreadCrumbs: false
showToc: true
searchHidden: true
tags: ["management", "infrastructure", "strategy", "operations"]
categories: ["Opinion", "Story Time"]
---



- I was always of the opinion that an internal self service development platform is beautiful and definitely what I need or want. 
- But why do I think so?
- In my opinion, an IdP can drastically increase the speed of feature developers and reduce their cognitive load. 
- This means that the developers have to only care about their code and do not have to care about corresponding topics such as cloud infrastructure, security aspects, run overhead, but they can do only what they are good it which developing code.
- From a platform engieering perspective i also think it is beautiful to create a platform where a developer has to only choose a few parameters in a deployment template and get something that follows an established golden path.
- From my own experience I can tell how it can be when there is no IdP in a company and how cumbersome it is to do development
- When it comes to running infra in the cloud it is also important to see the cost perspective. Infra for an IdP only really works with a certain size. The cost and maintenance overhead is too big for to less use cases. 
- In a world scale company it can make a lot of sense to establish it, where for a small startup or company it might be to much of an overhead.
- Golden paths, documentation and other resources are bundled in one single place. Developers can look up get resources and info quickly.
- Additionally, a collection of already approved workflows, use cases makes development of new features much easier since they do not need additional manager approvals. So also from governance and compliance perspective it makes sense to have an IdP. Everything in the IdP is marked as "Secure and Compliant, feel free to use it".
- When doing platform engineering properly the responsibilities and duties are spread among the people and focus on what everyone is good at. Platform engineers build the platform, security specialists provide security best practices for the platform and developers develop features. 
- When running a central IT department with teams responsible for those topics slows down development. Teams do only partially responsible for topics, tickets might shift back and forth between teams until decided on. Developers have to understand the language LZ, security or other global teams are speaking.
- When running a central infra as a platform the wheel does not have to be reinvented but solutions can co exist and be reused. Consistent standards and golden paths emerge.
- Why would you do a "you run it, you manage it" style? Clear responsibility, for a solution. Decentralized, maybe less dependencies
- Harder to monitor, harder to keep everyone up to date on new developments and regulations. When done in IdP source can be updated or modifies such that the devs do not have to it themselves. The platform team does not have to go through everyones accounts and check whether they did the patches or changes or not





Why it matters

- 



I work as a Senior Cloud DevOps engineer in the digital R&D department of a global German chemical company. As part of my job I attend conferences like KubeCon, where I am always impressed to see other companies running fully automated internal development / self service platforms (often Backstage in front of Argo CD, Crossplane, or similar tooling). Developers can choose from infrastrucutre or code repository templates enter a few parameters, and minutes later have a running application on company infrastructure. I keep thinking: this is the experience I am missing. 

Back home the world is different. Our department is mostly independent as teams handle their own development workflows, needed infrastructure and managearial parts. The company's central IT department focuses on global topics such as cloud landing zone, identity, networking, security and compliance tooling. That split of concern allows us to quickly create solutions to our internal needs, but also leaves gaps. The default message I often get from central IT is: "Want to run this application? Then you also have to run the infrastructure.” Build it, deploy it, operate it—and while you’re at it, stay on top of every moving part: your code, the underlying infrastructure, cloud security practices, and changes in your own development domain. While this is my daily business it creates a serious challenge for colleagues who are feature developers suddenly expected to own infrastructure, security, and operations beyond their role. 





The result was predictable: developers took on infrastructure work outside their role, increasing cognitive load and slowing delivery. Frustration turned into quiet quitting. Were their concerns heard? Partially! A few determined engineers formed informal self‑help groups to cope—some jokingly called it “guerrilla management.” Islands of ad‑hoc infrastructure and expertise grew but never converged. Cross‑department collaboration stayed slow and sporadic. 




A company‑wide self‑service platform would need a dedicated team that doesn’t yet exist (and, for now, isn’t prioritized). Cloud experiments can inflate cost without broad adoption, so our department platform grew on‑prem instead.



- coming back from kubecon trying to make use of some of those learnings to create these kind of self services
- quickly realize that this is a mammoth task and needs a team of devs that does not yet exist and is not wanted in the company
- reality check; you run it, you maintain it
- when trying to do it in the cloud cost can quickly explode and only feasible if it is company wide shift. run on on-premises infra for department
- island solutions and movement starting








## Everyone for Themselves!

"Want to run this application? Then you also have to run the infrastructure.” That was the default message from central IT. Build it, deploy it, operate it—and while you’re at it, stay on top of every moving part: your code, the underlying infrastructure, cloud security practices, and changes in your own development domain. The result was predictable: developers took on infrastructure work outside their role, increasing cognitive load and slowing delivery. Frustration turned into quiet quitting. Were their concerns heard? Partially! A few determined engineers formed informal self‑help groups to cope—some jokingly called it “guerrilla management.” Islands of ad‑hoc infrastructure and expertise grew but never converged. Cross‑department collaboration stayed slow and sporadic. 

It was during that time when I joined the company, tasked with building an on-premises Kubernetes (K8s) platform for our department. I focused on getting the platform running because I didn’t yet see the broader organizational picture. The first shared service we placed on it was a pool of CI runners for our internal developers. Central IT hosted Git, but every team still had to stand up and patch its own runners. That gap made the need for a departmental platform obvious. Over the following months we met most internal needs: shared CI runners, hardened cluster baselines, basic observability, repeatable delivery paths, data pipelines. For our department it became one of the most mature internal platforms in the company. But it remained a departmental island; parallel efforts elsewhere duplicated similar groundwork. A push toward a central development platform is emerging, yet the default “you build it, you run it” mindset still frames most decisions. 

## What I Learned

- The beauty of declarative setups
- The need of automation and consistency, especially when managing infra with not so much staff at scale
- Active engagement with other groups is the right way. The "guerrilla management" is actually really a valid approach when it comes to making things work.
- The right managers listen and make changes possible even though those are difficult in big companies
- Keeping eyes and ears open is always important
- Look out for the "company influencers", developers or engineers that are very good at what they are doing. Talk to them, listen to them, learn from them and try to work with them on the change in the right things.
- Try to connect the islands, connecting a few smaller islands can become one bigger island




...existing code above...

## What I Learned

When working on the CI runner project what became obvious to first to me was how many “islands” existed—each team solving similar problems in isolation. Collaborating with other teams listening to what are their struggles and telling them what are ours quickly resulted in better solutions for problems that before co-existed hard to solve. 


When working on these solutions, for me personally the biggest improvement came when I decided to do all my work declarative infrastrucutre as code (IaC). Describing desired state and tweaking ways how it can be reached consistently at scale became my passion. I started loving delivery tools such as Helm, Kustomize and Argo CD.


The biggest leverage came from going declarative. Describing desired state instead of curating snowflake setups made recovery boring and upgrades repeatable. Once manifests (and their intent) lived in Git, conversations shifted from “who changed this?” to “should the desired state look different?”







With a small staff, automation and consistency weren’t luxuries—they were survival. Every manual chore deferred became future toil plus drift. Standardizing pipelines, runner images, and cluster baselines bought back focus and reduced the blast radius of mistakes.

Real progress happened through active engagement with other groups. The informal cross‑team circles some joked about as “guerrilla management” were simply practitioners comparing notes, trimming dead ends, and cloning what worked. Lightweight, peer‑driven alignment beat formal mandates.

Identifying the quiet “company influencers” mattered: engineers others already trusted. Getting their early feedback, incorporating it, and letting them retell the story accelerated adoption more than slide decks ever did.

Supportive managers made the harder changes possible—shielding time, approving consolidation, and pushing back on premature divergence. Without that air cover, experiments would have stayed local hacks.

In the end, connecting a few small islands—shared runners here, a common baseline there—slowly formed a larger, more stable landmass. None of it felt dramatic while we were doing it; it was steady reduction of friction through observability, consistency, and relationships.



## Is this the end?

## Does it always make sense to manage infra centrally?