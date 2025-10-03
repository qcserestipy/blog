#!/bin/bash

# Hugo Blog Setup Script
# This script helps you customize your blog for deployment

set -e

echo "🚀 Hugo Blog Setup"
echo "=================="

# Get user input
read -p "Enter your GitHub username: " GITHUB_USERNAME
read -p "Enter your blog repository name: " REPO_NAME
read -p "Enter your blog title: " BLOG_TITLE
read -p "Enter your name: " AUTHOR_NAME
read -p "Enter your email: " AUTHOR_EMAIL

echo ""
echo "🔧 Configuring your blog..."

# Update hugo.toml
sed -i.bak "s|https://yourusername.github.io/your-blog-name|https://${GITHUB_USERNAME}.github.io/${REPO_NAME}|g" hugo.toml
sed -i.bak "s|Your Blog Title|${BLOG_TITLE}|g" hugo.toml
sed -i.bak "s|Your Name|${AUTHOR_NAME}|g" hugo.toml
sed -i.bak "s|your.email@example.com|${AUTHOR_EMAIL}|g" hugo.toml
sed -i.bak "s|yourusername|${GITHUB_USERNAME}|g" hugo.toml

# Update post files
find content/ -name "*.md" -exec sed -i.bak "s|Your Name|${AUTHOR_NAME}|g" {} \;
find content/ -name "*.md" -exec sed -i.bak "s|yourusername|${GITHUB_USERNAME}|g" {} \;
find content/ -name "*.md" -exec sed -i.bak "s|your-blog-repo|${REPO_NAME}|g" {} \;
find content/ -name "*.md" -exec sed -i.bak "s|your.email@example.com|${AUTHOR_EMAIL}|g" {} \;

# Update README
sed -i.bak "s|yourusername|${GITHUB_USERNAME}|g" README.md
sed -i.bak "s|your-blog-repo|${REPO_NAME}|g" README.md
sed -i.bak "s|your-repo-name|${REPO_NAME}|g" README.md

# Clean up backup files
find . -name "*.bak" -delete

echo "✅ Configuration complete!"
echo ""
echo "📝 Next steps:"
echo "1. Review and customize the generated content"
echo "2. Test locally: hugo server -D"
echo "3. Commit your changes: git add . && git commit -m 'Initial blog setup'"
echo "4. Push to GitHub: git push origin main"
echo "5. Enable GitHub Pages in repository settings"
echo ""
echo "🌍 Your blog will be available at: https://${GITHUB_USERNAME}.github.io/${REPO_NAME}"
