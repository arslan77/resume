# GitHub Actions Guide for Resume Building

## Overview

This repository includes a GitHub Actions workflow that automatically builds your resume PDFs whenever you make changes to the LaTeX files.

## Do You Need a Paid Plan?

**NO!** GitHub Actions is **FREE** for public repositories with generous limits:
- ✅ **2,000 minutes/month** of Actions for free (on public repos)
- ✅ **Unlimited** for public repositories
- ✅ **No credit card required**

For private repositories:
- Free tier: 2,000 minutes/month (usually sufficient for resume building)
- Each build takes ~2-3 minutes, so you get ~600+ builds/month for free
- Only need paid plan if you exceed this limit

**Recommendation**: Keep your resume repo **public** to get unlimited Actions for free, unless you have privacy concerns.

## What the Workflow Does

The GitHub Actions workflow (`.github/workflows/build-resume.yml`) automatically:

1. **Triggers on**:
   - Push to `main` branch (when `.tex` or `.cls` files change)
   - Pull requests
   - Manual trigger (via GitHub UI)

2. **Builds three PDFs**:
   - `resume-awesome-cv.pdf` (2-page resume)
   - `cv-awesome-cv.pdf` (4-page detailed CV)
   - `resume-deedy.pdf` (1-page Deedy template)

3. **Stores artifacts**:
   - PDFs are saved as downloadable artifacts for 90 days
   - Access via GitHub Actions tab → Workflow run → Artifacts

4. **Optional features** (commented out by default):
   - Auto-commit PDFs back to repository
   - Create releases with PDF attachments when you tag versions

## How to Use

### Basic Usage

1. **Make changes** to your resume:
   ```bash
   # Edit your resume content
   vim templates/awesome-cv/sections/resume/experience.tex

   # Commit and push
   git add .
   git commit -m "Update work experience"
   git push
   ```

2. **Check build status**:
   - Go to your GitHub repo: https://github.com/arslan77/resume
   - Click "Actions" tab
   - See the workflow running

3. **Download PDFs**:
   - Wait for workflow to complete (2-3 minutes)
   - Click on the workflow run
   - Scroll down to "Artifacts" section
   - Download `resume-pdfs` zip file

### Manual Trigger

You can manually trigger a build without pushing code:

1. Go to GitHub repo → Actions tab
2. Click "Build Resume PDFs" workflow
3. Click "Run workflow" button
4. Select branch and click "Run workflow"

### Creating Releases

To create a versioned release with PDFs:

```bash
# Tag your commit
git tag -a v1.0 -m "Resume version 1.0"
git push origin v1.0
```

The workflow will automatically:
- Build all PDFs
- Create a GitHub Release
- Attach PDFs to the release

**Note**: You need to uncomment the release section in the workflow if you want this feature.

### Auto-commit PDFs (Optional)

If you want PDFs automatically committed to your repo:

1. Edit `.github/workflows/build-resume.yml`
2. Uncomment the last step (lines 60-65)
3. Push the change

**Pros**: PDFs always available in repo
**Cons**: Git history cluttered with auto-commits, larger repo size

## Monitoring

- **Build status**: Check the Actions tab for green checkmark ✓
- **Notifications**: GitHub will email you if builds fail
- **Logs**: Click on workflow runs to see detailed build logs

## Troubleshooting

### Build Fails

1. Check the Actions tab for error logs
2. Common issues:
   - LaTeX syntax errors in `.tex` files
   - Missing packages (rare, most included in action)
   - Font issues (usually auto-resolved)

### Workflow Not Triggering

1. Ensure you're pushing to `main` branch
2. Check that you modified files in `templates/` directory
3. Verify `.github/workflows/build-resume.yml` is in your repo

### Download Issues

1. Artifacts are kept for 90 days, then deleted
2. Must be logged into GitHub to download artifacts
3. For permanent storage, use the Releases feature

## Cost Comparison

| Repo Type | GitHub Actions | Monthly Minutes | Cost |
|-----------|----------------|-----------------|------|
| **Public** | ✅ Unlimited | ∞ | **FREE** |
| **Private (Free)** | ✅ Limited | 2,000 min | **FREE** |
| **Private (Paid)** | ✅ Unlimited | 3,000+ min | $4+/month |

**Recommendation**: Use a public repo to keep it completely free forever!

## Advanced: Slack/Email Notifications

Want notifications when builds complete? Add to workflow:

```yaml
- name: Notify on Slack
  if: always()
  uses: 8398a7/action-slack@v3
  with:
    status: ${{ job.status }}
    text: 'Resume build completed!'
    webhook_url: ${{ secrets.SLACK_WEBHOOK }}
```

## Local Development

You can still build locally using:
```bash
make              # Build all
make awesome-cv   # Build Awesome-CV only
make deedy        # Build Deedy only
```

GitHub Actions is just a bonus for automatic cloud builds!

## Summary

✅ **Free** for public repos (unlimited builds)
✅ **No payment needed** unless you have a private repo and exceed 2,000 minutes/month
✅ **Automatic** PDF generation on every push
✅ **90-day artifact retention** for downloads
✅ **Easy sharing** via GitHub Releases

**You're all set! No paid plan required!**
