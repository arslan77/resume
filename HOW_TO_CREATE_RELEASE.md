# How to Create a Resume Release

## Quick Guide: Create a Release with Your Resume PDFs

This guide shows you how to manually create a GitHub Release with your resume PDFs using the automated workflow.

## Step-by-Step Instructions

### Option 1: Via GitHub Web UI (Easiest)

1. **Go to your repository**: https://github.com/arslan77/resume

2. **Navigate to Actions**:
   - Click the "Actions" tab at the top

3. **Select the Release Workflow**:
   - In the left sidebar, click "Create Resume Release"

4. **Run the Workflow**:
   - Click the "Run workflow" dropdown button (top right)
   - Fill in the required information:
     - **Branch**: Select `main` (or your working branch)
     - **Release version**: Enter your version tag (e.g., `v1.0`, `v2024.02`, `v1.0.0`)
     - **Release name** (optional): Enter a descriptive name (e.g., "February 2024 Update")
   - Click "Run workflow"

5. **Wait for Completion**:
   - The workflow takes 2-3 minutes to build all PDFs
   - You'll see a green checkmark when done

6. **Download Your PDFs**:
   - Go to the "Releases" section (right sidebar or `/releases` URL)
   - Click on your new release
   - Download the PDFs attached under "Assets"

### Generated Files

Each release creates 3 PDFs with your version number:

- `Resume-Arslan-Arshad-v1.0.pdf` - 2-page professional resume
- `CV-Arslan-Arshad-v1.0.pdf` - 4-page detailed CV
- `Resume-Arslan-Arshad-Deedy-v1.0.pdf` - 1-page modern resume

## Version Naming Conventions

Choose a version format that works for you:

### Semantic Versioning (recommended)
- `v1.0.0` - Major version 1, first release
- `v1.1.0` - Minor update (new job, skill added)
- `v1.0.1` - Patch (typo fixes, small changes)

### Date-based Versioning
- `v2024.02` - February 2024
- `v2024.02.14` - February 14, 2024
- `v2024-q1` - Q1 2024

### Simple Versioning
- `v1`, `v2`, `v3` - Simple incremental versions

## Example Scenarios

### Scenario 1: First Release
```
Version: v1.0
Release name: Initial Resume Release
```

### Scenario 2: Job Change Update
```
Version: v1.1.0
Release name: Updated with HungerStation promotion
```

### Scenario 3: Monthly Update
```
Version: v2024.02
Release name: February 2024 - New certifications
```

### Scenario 4: Major Overhaul
```
Version: v2.0
Release name: Complete resume redesign
```

## What Happens When You Create a Release

The workflow automatically:

1. ✅ Builds all 3 resume templates (Awesome-CV Resume, CV, and Deedy)
2. ✅ Renames PDFs with your version number
3. ✅ Creates a Git tag with the version
4. ✅ Creates a GitHub Release with:
   - Version tag
   - Release notes (auto-generated with links and description)
   - All 3 PDFs attached as downloadable assets
5. ✅ Publishes the release (publicly visible)

## Sharing Your Resume

After creating a release, you can share:

### Direct PDF Links
Each PDF gets a permanent URL like:
```
https://github.com/arslan77/resume/releases/download/v1.0/Resume-Arslan-Arshad-v1.0.pdf
```

### Release Page Link
```
https://github.com/arslan77/resume/releases/tag/v1.0
```

### Latest Release (always points to most recent)
```
https://github.com/arslan77/resume/releases/latest
```

## Tips and Best Practices

### 📌 When to Create a Release

Create a new release when:
- ✅ Starting a job search (create versioned snapshot)
- ✅ Major updates (new job, significant achievements)
- ✅ Before important interviews (specific version for that company)
- ✅ Monthly/quarterly updates to keep current

### 🎯 Naming Guidelines

- **Be consistent**: Pick a versioning scheme and stick to it
- **Be descriptive**: Use release name to explain what changed
- **Use tags**: Add keywords like "Senior-Engineer", "Backend-Focus" in release notes

### 🔄 Version History

Benefits of versioned releases:
- Track resume evolution over time
- Retrieve exact version you sent to a company
- Compare what changed between versions
- Professional version management

## Accessing Past Releases

1. Go to https://github.com/arslan77/resume/releases
2. See all your releases with version history
3. Download any previous version anytime

## Troubleshooting

### Workflow Fails

**Check the Actions tab → failed run → view logs**

Common issues:
- LaTeX syntax error: Fix the `.tex` file and re-run
- Version tag already exists: Use a different version number

### Can't Find Release

- Check you're looking at the "Releases" section (right sidebar)
- Ensure workflow completed successfully (green checkmark)
- Refresh the page

### Want to Delete a Release

1. Go to Releases
2. Click on the release
3. Click "Delete" button (requires repository permissions)

## Advanced: Command Line

You can also trigger the workflow via GitHub CLI:

```bash
# Install GitHub CLI first: https://cli.github.com

# Create release v1.0
gh workflow run create-release.yml -f version=v1.0 -f release_name="My First Release"

# Check workflow status
gh run list --workflow=create-release.yml

# Download release assets
gh release download v1.0
```

## Summary

✅ **No coding required** - just click buttons in GitHub UI
✅ **3 PDFs generated automatically** in 2-3 minutes
✅ **Permanent links** for sharing with recruiters
✅ **Version history** for tracking changes
✅ **100% free** with public repository

**You're ready to create professional releases of your resume! 🎉**
