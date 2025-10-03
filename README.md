# Hugo Blog

A modern, fast blog built with Hugo and hosted on GitHub Pages.

## 🚀 Quick Start

### Prerequisites

- [Hugo Extended](https://gohugo.io/getting-started/installing/) (v0.120.4 or later)
- [Git](https://git-scm.com/)
- [Go](https://golang.org/) (optional, for Hugo modules)

### Local Development

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/your-blog-repo.git
   cd your-blog-repo
   ```

2. **Initialize submodules**
   ```bash
   git submodule update --init --recursive
   ```

3. **Start the development server**
   ```bash
   hugo server -D
   ```

4. **Open your browser**
   Visit [http://localhost:1313](http://localhost:1313)

### Creating New Content

```bash
# Create a new blog post
hugo new posts/my-new-post.md

# Create a new page
hugo new pages/my-page.md
```

### Building for Production

```bash
hugo --gc --minify
```

The site will be generated in the `public/` directory.

## 📝 Writing Posts

Posts are created in the `content/posts/` directory. Each post should have front matter:

```yaml
---
title: "Your Post Title"
date: 2025-01-01T12:00:00Z
draft: false
tags: ["tag1", "tag2"]
categories: ["category1"]
author: "Your Name"
description: "A brief description of your post"
---

Your content here...
```

### Front Matter Options

- `title`: Post title
- `date`: Publication date
- `draft`: Set to `false` to publish
- `tags`: Array of tags
- `categories`: Array of categories
- `author`: Author name
- `description`: Meta description for SEO
- `showToc`: Show table of contents
- `cover.image`: Featured image URL

## 🎨 Customization

### Configuration

Edit `hugo.toml` to customize:
- Site title and description
- Social media links
- Menu items
- Theme parameters

### Custom CSS

Add custom styles in `assets/css/extended/custom.css`:

```css
/* Your custom styles */
.custom-class {
    /* Your styles here */
}
```

### Custom Shortcodes

Create shortcodes in `layouts/shortcodes/` for reusable content blocks.

## 🚢 Deployment

This blog is configured for automatic deployment to GitHub Pages using GitHub Actions.

### Setup Steps

1. **Enable GitHub Pages**
   - Go to repository Settings → Pages
   - Set source to "GitHub Actions"

2. **Configure base URL**
   Update `baseURL` in `hugo.toml`:
   ```toml
   baseURL = 'https://yourusername.github.io/your-repo-name'
   ```

3. **Push to main branch**
   ```bash
   git add .
   git commit -m "Deploy blog"
   git push origin main
   ```

Your blog will be available at `https://yourusername.github.io/your-repo-name`

### Custom Domain

To use a custom domain:

1. Add a `CNAME` file to the `static/` directory with your domain
2. Configure DNS with your domain provider
3. Update `baseURL` in `hugo.toml`

## 📊 Analytics & SEO

### Google Analytics

Add your Google Analytics ID to `hugo.toml`:

```toml
[params.analytics.google]
  SiteVerificationTag = "your-verification-tag"
```

### SEO Features

- Automatic sitemap generation
- RSS feed
- Meta tags and Open Graph
- Structured data
- Search functionality

## 🔧 Troubleshooting

### Common Issues

1. **Submodule not found**
   ```bash
   git submodule update --init --recursive
   ```

2. **Hugo version mismatch**
   Check the Hugo version in `.github/workflows/hugo.yml`

3. **Build fails**
   Check that all front matter is properly formatted

### Getting Help

- [Hugo Documentation](https://gohugo.io/documentation/)
- [PaperMod Theme Wiki](https://github.com/adityatelange/hugo-PaperMod/wiki)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Happy blogging!** 🎉
