---
title: "Setting Up Hugo with GitHub Pages"
date: 2025-10-03T15:31:34+02:00
draft: false
tags: ["hugo", "github-pages", "tutorial", "static-site"]
categories: ["Tutorial", "Web Development"]
showToc: true
TocOpen: false
hidemeta: false
comments: false
description: "A comprehensive guide to setting up a Hugo blog with GitHub Pages for free hosting"
disableHLJS: false
disableShare: false
hideSummary: false
searchHidden: false
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
cover:
    image: ""
    alt: "Hugo and GitHub Pages"
    caption: ""
    relative: false
    hidden: true
editPost:
    URL: "https://github.com/qcserestipy/blog/tree/main/content"
    Text: "Suggest Changes"
    appendFilePath: true
---

# Setting Up Hugo with GitHub Pages

In this post, I'll walk you through setting up a Hugo blog with GitHub Pages for free hosting and automatic deployment.

## Why Hugo + GitHub Pages?

### Hugo Benefits
- ⚡ **Lightning Fast**: Builds sites in milliseconds
- 🎨 **Beautiful Themes**: Hundreds of themes available
- 📝 **Markdown Focused**: Write in simple Markdown
- 🔧 **Highly Customizable**: Flexible templating system

### GitHub Pages Benefits
- 🆓 **Free Hosting**: No cost for public repositories
- 🚀 **Automatic Deployment**: Push to deploy
- 🌍 **Custom Domains**: Use your own domain
- 🔒 **HTTPS**: SSL certificates included

## Prerequisites

Before we start, make sure you have:
- A GitHub account
- Git installed on your computer
- Hugo installed locally (optional, but recommended for development)

## Step-by-Step Setup

### 1. Create a New Repository

Create a new repository on GitHub. You can name it anything you like (e.g., `my-blog`).

### 2. Initialize Hugo Site

```bash
# Clone your repository
git clone https://github.com/yourusername/your-blog-repo.git
cd your-blog-repo

# Initialize Hugo site
hugo new site . --force

# Add a theme (PaperMod in this example)
git submodule add --depth=1 https://github.com/adityatelange/hugo-PaperMod.git themes/PaperMod
```

### 3. Configure Your Site

Create or edit `hugo.toml`:

```toml
baseURL = 'https://yourusername.github.io/your-blog-repo'
languageCode = 'en-us'
title = 'Your Blog Title'
theme = 'PaperMod'

[params]
  homeInfoParams.Title = "Hi there 👋"
  homeInfoParams.Content = "Welcome to my blog!"

[menu]
  [[menu.main]]
    name = "Home"
    url = "/"
    weight = 10
  [[menu.main]]
    name = "Posts"
    url = "/posts/"
    weight = 20
```

### 4. Set Up GitHub Actions

Create `.github/workflows/hugo.yml` for automatic deployment:

```yaml
name: Deploy Hugo site to Pages

on:
  push:
    branches: ["main"]
  workflow_dispatch:

permissions:
  contents: read
  pages: write
  id-token: write

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4
        with:
          submodules: recursive
      - name: Setup Hugo
        uses: peaceiris/actions-hugo@v2
        with:
          hugo-version: 'latest'
          extended: true
      - name: Build
        run: hugo --minify
      - name: Upload artifact
        uses: actions/upload-pages-artifact@v2
        with:
          path: ./public

  deploy:
    environment:
      name: github-pages
      url: ${{ steps.deployment.outputs.page_url }}
    runs-on: ubuntu-latest
    needs: build
    steps:
      - name: Deploy to GitHub Pages
        uses: actions/deploy-pages@v2
```

### 5. Enable GitHub Pages

1. Go to your repository settings
2. Navigate to **Pages**
3. Set source to **GitHub Actions**

### 6. Create Your First Post

```bash
hugo new posts/my-first-post.md
```

Edit the created file and set `draft: false` when ready to publish.

### 7. Deploy

```bash
git add .
git commit -m "Initial blog setup"
git push origin main
```

Your blog will be live at `https://yourusername.github.io/your-blog-repo`!

## Local Development

For local development:

```bash
# Install Hugo
brew install hugo  # macOS
# or download from https://github.com/gohugoio/hugo/releases

# Start development server
hugo server -D
```

Visit `http://localhost:1313` to preview your site.

## Tips for Success

1. **Regular Commits**: Small, frequent commits are better than large ones
2. **Use Drafts**: Set `draft: true` for work-in-progress posts
3. **Organize Content**: Use categories and tags for better organization
4. **Custom Domain**: Set up a custom domain for a professional look
5. **SEO**: Use descriptive titles and meta descriptions

## Conclusion

Hugo + GitHub Pages is a powerful combination for bloggers who want:
- Fast, secure static sites
- Version control for their content
- Free hosting and deployment
- Complete control over their blog

The setup might seem complex initially, but once configured, the workflow is incredibly smooth. Just write Markdown, commit, and push - your blog updates automatically!

Happy blogging! 🚀

---

*Have questions about Hugo or GitHub Pages? Feel free to reach out!*

