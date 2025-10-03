# 🚀 Blog Deployment Guide

Follow these steps to move your blog to a new GitHub repository and start hosting it.

## Step 1: Create New GitHub Repository

1. Go to [GitHub](https://github.com) and create a new repository
2. Name it something like `my-blog`, `personal-blog`, or `<yourusername>.github.io`
3. Make it **public** (required for free GitHub Pages)
4. **Don't** initialize with README, .gitignore, or license (we already have these)

## Step 2: Move Blog to New Repository

```bash
# Navigate to the blog directory
cd /path/to/your/blog

# Remove current git remote (if any)
git remote remove origin

# Add your new repository as origin
git remote add origin https://github.com/yourusername/your-new-blog-repo.git

# Run the setup script to customize your blog
./setup.sh

# Add all files and commit
git add .
git commit -m "Initial blog setup with Hugo and PaperMod theme"

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section
4. Under **Source**, select **GitHub Actions**
5. The workflow will automatically run and deploy your site

## Step 4: Configure Your Blog

### Edit Configuration
Update `hugo.toml` with your details:
- `baseURL`: Your GitHub Pages URL
- `title`: Your blog title
- Social media links
- Author information

### Customize Content
- Edit `content/about.md` with your information
- Review and modify the sample posts
- Add your own posts in `content/posts/`

## Step 5: Test Locally (Optional)

```bash
# Install Hugo (macOS)
brew install hugo

# Start development server
hugo server -D

# Visit http://localhost:1313
```

## Step 6: Publishing Workflow

Once set up, your workflow is simple:

```bash
# Create new post
hugo new posts/my-new-post.md

# Edit the post, set draft: false when ready

# Commit and push
git add .
git commit -m "Add new post: My New Post"
git push

# Your site automatically updates!
```

## 🎯 Your Blog URLs

- **Repository**: `https://github.com/yourusername/your-repo-name`
- **Live Site**: `https://yourusername.github.io/your-repo-name`
- **RSS Feed**: `https://yourusername.github.io/your-repo-name/index.xml`

## 🛠️ Customization Tips

### Change Theme Colors
Edit `assets/css/extended/custom.css`:
```css
:root {
    --primary: #your-color;
    --secondary: #your-color;
}
```

### Add Custom Domain
1. Add `CNAME` file to `static/` directory with your domain
2. Configure DNS settings with your domain provider
3. Update `baseURL` in `hugo.toml`

### Enable Comments
Uncomment and configure in `hugo.toml`:
```toml
[params.comments]
  provider = "giscus"  # or "disqus"
```

### Add Analytics
Add your Google Analytics ID:
```toml
[params.analytics.google]
  SiteVerificationTag = "your-verification-tag"
```

## 🆘 Troubleshooting

### Build Fails
- Check that all posts have proper front matter
- Ensure `draft: false` for published posts
- Verify theme submodule is properly initialized

### Site Not Updating
- Check GitHub Actions tab for build status
- Verify GitHub Pages is set to "GitHub Actions"
- Wait a few minutes for changes to propagate

### Local Development Issues
```bash
# Reset submodules
git submodule update --init --recursive

# Clear Hugo cache
hugo mod clean
```

## 📚 Resources

- [Hugo Documentation](https://gohugo.io/documentation/)
- [PaperMod Theme Guide](https://github.com/adityatelange/hugo-PaperMod/wiki)
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [Markdown Guide](https://www.markdownguide.org/)

---

**Happy blogging!** 🎉

*Need help? Check the repository issues or create a new one.*
