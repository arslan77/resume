# Resume - Multi-Template Support

[![Latest Release](https://img.shields.io/github/v/release/arslan77/resume?label=Latest%20Release)](https://github.com/arslan77/resume/releases/latest)
[![Build Status](https://img.shields.io/github/actions/workflow/status/arslan77/resume/build-resume.yml?branch=main)](https://github.com/arslan77/resume/actions)
[![License](https://img.shields.io/badge/License-CC%20BY--SA%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-sa/4.0/)

Professional resume and CV for **M Arslan Arshad**, Senior Software Engineer with 8+ years of experience in backend development, microservices architecture, and distributed systems. Features multiple LaTeX templates, automated builds via GitHub Actions, and version management.

## 👨‍💻 About

- **Current Role**: Senior Software Engineer @ HungerStation (Delivery Hero)
- **Experience**: 8+ years in Go, Java, PHP, Ruby, Python
- **Education**: MS in Computer Science (IIS) - NUST SEECS | BS in Computer Science - NFC IET
- **Research**: Published in Journal of Economy and Technology (2023)

## 📄 Download Resume

### Quick Download (Latest Version)

<div align="center">

| Format | Template | Pages | Download |
|--------|----------|-------|----------|
| **Resume** | Awesome-CV | 2 pages | [📥 Download PDF](https://github.com/arslan77/resume/releases/latest/download/Resume-Arslan-Arshad-Latest.pdf) |
| **CV** | Awesome-CV | 4 pages | [📥 Download PDF](https://github.com/arslan77/resume/releases/latest/download/CV-Arslan-Arshad-Latest.pdf) |
| **Resume** | Deedy | 1 page | [📥 Download PDF](https://github.com/arslan77/resume/releases/latest/download/Resume-Arslan-Arshad-Deedy-Latest.pdf) |

**[📋 View All Releases](https://github.com/arslan77/resume/releases)** | **[⚡ Build Status](https://github.com/arslan77/resume/actions)**

</div>

> **Note**: Download links will work after you make the repository public and create your first release (v1.0)

## Directory Structure

```
Resume/
├── templates/
│   ├── awesome-cv/              # Awesome-CV template (current)
│   │   ├── awesome-cv.cls      # Template class file
│   │   ├── resume.tex          # Resume main file (2 pages)
│   │   ├── cv.tex              # CV main file (4 pages detailed)
│   │   ├── Makefile            # Template-specific Makefile
│   │   └── sections/           # Content sections
│   │       ├── resume/         # Resume sections (concise)
│   │       │   ├── skills.tex
│   │       │   ├── experience.tex
│   │       │   └── education.tex
│   │       └── cv/             # CV sections (detailed)
│   │           ├── summary.tex
│   │           ├── skills.tex
│   │           ├── experience.tex
│   │           ├── education.tex
│   │           ├── aitools.tex
│   │           └── projects.tex
│   └── deedy/                   # Deedy template
│       ├── deedy-resume-openfont.cls
│       ├── resume.tex
│       └── fonts/               # Lato and Raleway fonts
├── output/                      # Generated PDFs
│   ├── resume-awesome-cv.pdf
│   ├── cv-awesome-cv.pdf
│   └── resume-deedy.pdf
├── Makefile                     # Master Makefile for all templates
└── README.md                    # This file
```

## Building Your Resume

### Prerequisites
- Docker installed (for LaTeX compilation)

### Quick Start

```bash
# Build all templates
make

# Build specific template
make awesome-cv          # Both resume and CV
make awesome-cv-resume   # Resume only (2 pages)
make awesome-cv-cv       # CV only (4 pages)
make deedy               # Deedy resume (1 page)

# Clean up
make clean      # Remove auxiliary files
make clean-all  # Remove all generated files
make rebuild    # Clean and rebuild everything

# Get help
make help
```

### Output Files

All generated PDFs are placed in the `output/` directory:
- `output/resume-awesome-cv.pdf` - 2-page concise resume
- `output/cv-awesome-cv.pdf` - 4-page detailed CV
- `output/resume-deedy.pdf` - 1-page modern resume

## GitHub Actions - Automated Builds

This repository includes two GitHub Actions workflows:

### 1. Automatic Builds on Push (`build-resume.yml`)
- ✅ Triggers automatically when you push changes to `.tex` or `.cls` files
- ✅ Builds all 3 resume PDFs in the cloud using Docker
- ✅ PDFs available as downloadable artifacts (90-day retention)
- ✅ **100% FREE** for public repositories

### 2. Manual Release Creation (`create-release.yml`)
Create professional versioned releases with your resume PDFs:

**Via GitHub UI:**
1. Go to **Actions** tab
2. Select **"Create Resume Release"**
3. Click **"Run workflow"**
4. Enter version (e.g., `v1.1`) and release name
5. Download PDFs from **Releases** section

**What gets created:**
- 6 PDF files total:
  - `Resume-Arslan-Arshad-v1.1.pdf` (Awesome-CV Resume - 2 pages)
  - `CV-Arslan-Arshad-v1.1.pdf` (Awesome-CV CV - 4 pages)
  - `Resume-Arslan-Arshad-Deedy-v1.1.pdf` (Deedy Resume - 1 page)
  - `Resume-Arslan-Arshad-Latest.pdf` (Always points to latest resume)
  - `CV-Arslan-Arshad-Latest.pdf` (Always points to latest CV)
  - `Resume-Arslan-Arshad-Deedy-Latest.pdf` (Always points to latest Deedy)

**See detailed guides:**
- [HOW_TO_CREATE_RELEASE.md](HOW_TO_CREATE_RELEASE.md)
- [GITHUB_ACTIONS_GUIDE.md](GITHUB_ACTIONS_GUIDE.md)

## Adding a New Template

To add a new template (e.g., Deedy):

1. Create template directory:
   ```bash
   mkdir -p templates/deedy/sections
   ```

2. Add template files:
   - Download the template class file (e.g., `deedy-resume.cls`)
   - Create main `.tex` file
   - Create section files adapted to the template syntax

3. Update root `Makefile`:
   - Add build target for the new template
   - Copy/adapt from existing `awesome-cv` targets

4. Build:
   ```bash
   make deedy
   ```

## Current Templates

### Awesome-CV
- **Source**: https://github.com/posquit0/Awesome-CV
- **Features**: Professional, clean design with customizable colors
- **Outputs**:
  - Resume: 2-page concise version
  - CV: 4-page detailed version with projects and AI tools

### Deedy Resume
- **Source**: https://github.com/deedy/Deedy-Resume
- **Status**: ✅ Implemented
- **Features**: Modern, colorful single-page design with two-column layout
- **Output**: `output/resume-deedy.pdf` (1 page)

## Editing Content

### For Awesome-CV Template

**Resume (concise, 2 pages)**:
- Edit files in `templates/awesome-cv/sections/resume/`
- Each job limited to 3 bullet points
- Focus on impact and results

**CV (detailed, 4 pages)**:
- Edit files in `templates/awesome-cv/sections/cv/`
- More comprehensive descriptions (7-11 bullets per job)
- Includes side projects and AI tools section

### Personal Information

Edit in the main `.tex` files:
- `templates/awesome-cv/resume.tex` - lines 57-64
- `templates/awesome-cv/cv.tex` - lines 55-62

## 🔗 Related Projects

- **GitHub Profile**: [github.com/arslan77](https://github.com/arslan77) - Enhanced profile with stats and badges
- **Portfolio Website**: [arslan77.github.io](https://arslan77.github.io) - Interactive portfolio with dark/light themes

## Tips

1. **Keep content in sync**: When updating experience, update both resume and CV sections
2. **Template-specific syntax**: Different templates have different LaTeX syntax - content may need adaptation
3. **Test locally**: Always test builds locally before sharing
4. **Use CLAUDE.md**: Contains personal details and formatting rules for AI assistance

## Troubleshooting

### Build fails
- Check Docker is running
- Verify paths in Makefile are correct
- Check for LaTeX syntax errors in `.tex` files

### Fonts missing
- Awesome-CV uses system fonts (Roboto, Source Sans Pro)
- These are usually included in texlive
- If missing, install locally or modify template

## License

- Resume content: Personal, all rights reserved
- Awesome-CV template: CC BY-SA 4.0
- Other templates: Check individual licenses
