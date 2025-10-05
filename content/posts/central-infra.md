---
title: "Why a Central Platform Matters"
date: 2025-10-04T18:41:00+02:00
draft: false
hidemeta: false
comments: false
description: "An IdP is Not Magic (Yet)"
ShowBreadCrumbs: false
showToc: true
tags: ["management", "infrastructure", "strategy", "operations"]
categories: ["Opinion", "Story Time"]
---

## Context

I work as a Senior Cloud DevOps engineer in the digital R&D department of a global German chemical company. As part of my job I attend conferences like KubeCon, where I am always impressed to see other companies running fully automated internal development (IdP) / self service platforms (often Backstage in front of Argo CD, Crossplane, or similar tooling). Developers can choose from infrastructure or code repository templates enter a few parameters, and minutes later have a running application on company infrastructure. I keep thinking: this is the experience I am missing. 

## The Core Problem

Back home the world is different. Our department is mostly independent as teams handle their own development workflows, needed infrastructure and managearial parts. The company's central IT department focuses on global topics such as cloud landing zone, identity, networking, security and compliance tooling. That split of concern allows us to quickly create solutions to our internal needs, but also leaves gaps. The default message I often get from central IT is: "Want to run this application? Then you also have to run the infrastructure.” Build it, deploy it, operate it—and while you’re at it, stay on top of every moving part: your code, the underlying infrastructure, cloud security practices, and changes in your own development domain. While this is my daily business it creates a serious challenge for colleagues who are feature developers, suddenly expected to own infrastructure, security, and operations beyond their role. 

## How an IdP Could Help

In my opinion, the strongest advantage of an IdP is that it makes the developers life easier and let's them deliver more value for the company. Developers have to only care about their code while all the infrastructure heavy lifting is done by the platform. An IdP can serve as a central hub of established "golden paths" that have been developed in the company and enable the best solutions for a given problem. From governance and compliance perspective it makes sense to have an IdP. Having a collection of golden paths makes development of new features much easier since developers do not need additional approvals. Everything in the IdP can be regarded as "this is secure and compliant, feel free to use it". A centrally managed platform makes configurations and applications more consistent and reproducable. Different teams that face similar problems do not have re-invent the wheel, but just rely on what has been built before. General or security related patches can be deployed much easier throughout the platfrom while also obervability is a key benefit.

## Why Decide Against an IdP?

As there are several advantages of hosting an IdP there might also be valid reasons to decide against an IdP. First of all the organisation might simply not be ready yet. That means that there is no clear owner or support team of the platform. It might also be the case that there is a lack of awareness whether such a platform would actually be used or just ignored. Second, hiring senior engineers or train already existing staff for building and running such a platform is costly. In addition, it is time and money NOT invested in core products and research work. Third, if decided for an IdP it is an on-going and never ending story: Upgrades, security fixes and template maintenance are all points that have to be kept up to date before there is enough scale to justify it.

## Conclusion

In my opinion the real benefit does not come from "my company runs an IdP and it is magic", but removing pain from the developers life such that they can do what they are good at: Deliviring products that bring value to the company. And I think if a full platform is out of reach (yet), creating shared services to already relieve pain today is more important than anything else. In the end, consistency is key.