# Resume Repository - Claude Context

This repository contains M Arslan Arshad's professional resume and CV with multi-template support, automated builds, and version management.

## 👤 About Me

- **Name**: M Arslan Arshad
- **Role**: Senior Software Engineer (Backend Specialist)
- **Location**: Dubai, UAE
- **Experience**: 8+ years in backend development, microservices, distributed systems
- **Education**:
  - MS in Information Technology (CGPA: 3.19/4.0) - NUST SEECS, Islamabad (2017-2020)
  - BS in Computer Science (CGPA: 3.67/4.0) - NFC IET, Multan (2013-2017)

## 📁 Repository Structure

```
Resume/
├── templates/
│   ├── awesome-cv/              # Awesome-CV template
│   │   ├── awesome-cv.cls       # Template class file
│   │   ├── resume.tex           # Resume main file (2 pages)
│   │   ├── cv.tex               # CV main file (4 pages)
│   │   └── sections/
│   │       ├── resume/          # Resume sections (concise)
│   │       │   ├── skills.tex
│   │       │   ├── experience.tex
│   │       │   └── education.tex
│   │       └── cv/              # CV sections (detailed)
│   │           ├── summary.tex
│   │           ├── skills.tex
│   │           ├── experience.tex
│   │           ├── education.tex
│   │           ├── aitools.tex
│   │           └── projects.tex
│   └── deedy/                   # Deedy template
│       ├── deedy-resume-openfont.cls
│       ├── resume.tex           # Single-page modern resume
│       └── fonts/               # Lato and Raleway fonts
├── output/                      # Generated PDFs
│   ├── resume-awesome-cv.pdf
│   ├── cv-awesome-cv.pdf
│   └── resume-deedy.pdf
├── .github/workflows/
│   ├── build-resume.yml         # Auto-build on push
│   └── create-release.yml       # Manual release creation
├── Makefile                     # Build automation
├── CLAUDE.md                    # This file
├── README.md                    # Main documentation
├── GITHUB_ACTIONS_GUIDE.md     # GitHub Actions guide
└── HOW_TO_CREATE_RELEASE.md    # Release creation guide
```

## 🎯 Available Templates

### 1. Awesome-CV (2 versions)
- **Resume**: 2-page concise version for job applications
  - File: `templates/awesome-cv/resume.tex`
  - Output: `output/resume-awesome-cv.pdf`
  - Sections: Skills, Experience (3 bullets/job), Education

- **CV**: 4-page detailed version for comprehensive overview
  - File: `templates/awesome-cv/cv.tex`
  - Output: `output/cv-awesome-cv.pdf`
  - Sections: Summary, Skills, Experience (7-11 bullets/job), Education, AI Tools, Projects

### 2. Deedy Resume
- **Single-page**: Modern, colorful two-column layout
  - File: `templates/deedy/resume.tex`
  - Output: `output/resume-deedy.pdf`
  - Features: Condensed content, tech-focused design

## 🔧 Build Commands

**Local builds** (requires Docker):
```bash
make                    # Build all templates
make awesome-cv         # Build both Awesome-CV resume and CV
make awesome-cv-resume  # Build resume only (2 pages)
make awesome-cv-cv      # Build CV only (4 pages)
make deedy              # Build Deedy resume (1 page)
make clean              # Remove auxiliary files
make clean-all          # Remove all generated files
make rebuild            # Clean and rebuild everything
```

**GitHub Actions** (automatic):
- Triggers on push to `.tex` or `.cls` files
- Builds all 3 PDFs in cloud
- PDFs available as artifacts (90-day retention)

## 📝 Content Structure

### Experience
6 companies spanning 2016-2025:
1. **HungerStation** (Delivery Hero) - Senior Software Engineer (Oct 2023 - Present)
2. **Careem** (Uber Subsidiary) - Sr. Software Engineer I (Apr 2022 - Sep 2023)
3. **LearnOBots** - Lead Software Engineer (Oct 2018 - Mar 2022)
4. **Brainyloft** (Remote) - Sr. Software Engineer (Mar 2018 - Sep 2018)
5. **HISDU** - Healthcare Dept - Sr. Software Engineer (Jun 2017 - Feb 2018)
6. **TechLeadz** - Web Developer (Nov 2016 - May 2017)

### Skills
- **Languages**: Go, Java, PHP, Python, JavaScript, C++
- **Frameworks**: Spring Boot, Laravel, Gin, Echo, Express.js, Android SDK
- **Databases**: PostgreSQL, MySQL, MongoDB, Redis, Elasticsearch
- **DevOps**: Docker, Kubernetes, AWS, Jenkins, CI/CD
- **Concepts**: Microservices, RESTful APIs, gRPC, Distributed Systems

### AI Tools Usage
- Claude AI (Claude Code CLI, API integration)
- GitHub Copilot (daily workflow integration)
- Cursor AI (AI-first IDE)
- Custom AI Agents (internal tools)

### Side Projects
1. **GunneboBGR** - Airport security system with facial recognition
2. **PingPong Lead Generation** - B2B marketing automation
3. **AdeptTech Data Generator** - Large-scale synthetic data platform
4. **BLE AdHoc Network** - IoT mesh network for asset tracking

## 🚀 GitHub Actions Workflows

### 1. Automatic Build (build-resume.yml)
**Triggers**: Push to main, changes to `.tex`/`.cls` files, PRs, manual
**Actions**:
- Builds all 3 resume PDFs
- Uploads artifacts (90-day retention)
- Optional: Create release on tags

### 2. Release Creation (create-release.yml)
**Trigger**: Manual via GitHub UI
**Inputs**:
- Version (e.g., v1.0, v2024.02)
- Release name (optional)
**Actions**:
- Builds all PDFs
- Creates GitHub Release with tag
- Attaches renamed PDFs (Resume-Arslan-Arshad-{version}.pdf)
- Generates professional release notes

## ✏️ Common Tasks

### Update Work Experience
Edit the appropriate file based on template:
- Resume (concise): `templates/awesome-cv/sections/resume/experience.tex`
- CV (detailed): `templates/awesome-cv/sections/cv/experience.tex`
- Deedy: `templates/deedy/resume.tex`

**Format** (Awesome-CV):
```latex
\cventry
{Job Title}
{Company Name}
{Location}
{Start - End Date}
{
\begin{cvitems}
\item {Achievement or responsibility...}
\item {Achievement or responsibility...}
\end{cvitems}
}
```

### Update Skills
Edit: `templates/awesome-cv/sections/resume/skills.tex` (or cv version)

### Update Education
Edit:
- Resume: `templates/awesome-cv/sections/resume/education.tex`
- CV: `templates/awesome-cv/sections/cv/education.tex`
- Deedy: `templates/deedy/resume.tex` (inline in main file)

### Add New Project
Edit: `templates/awesome-cv/sections/cv/projects.tex`

### Update AI Tools Section
Edit: `templates/awesome-cv/sections/cv/aitools.tex`

## 🎓 Important Notes

### Font Consistency
- **CRITICAL**: Place `\begin{cvitems}` INSIDE `\cventry` braces
- Incorrect placement causes font size inconsistencies
- Already fixed in current files

### CGPA Values (ACCURATE)
- MS: 3.19/4.0 (NOT 3.5)
- BS: 3.67/4.0 (NOT 3.53)

### Template Requirements
- **Awesome-CV**: Requires XeLaTeX (uses custom fonts)
- **Deedy**: Requires XeLaTeX (uses Lato/Raleway fonts)
- Both handled by Docker/GitHub Actions automatically

### File Organization
- Keep resume sections in `sections/resume/` (2-3 bullets per job)
- Keep CV sections in `sections/cv/` (7-11 bullets per job)
- Output always goes to `output/` directory

## 📦 Version Management

### Creating Releases
1. Go to GitHub Actions
2. Select "Create Resume Release"
3. Run workflow with version tag
4. Download PDFs from Releases section

### Version Naming
- Semantic: `v1.0.0`, `v1.1.0` (for updates)
- Date-based: `v2024.02`, `v2024.02.14`
- Simple: `v1`, `v2`, `v3`

## 🔐 Repository Settings

- **Visibility**: Public (for free unlimited GitHub Actions)
- **Default Branch**: main
- **Remote**: git@github.com:arslan77/resume.git
- **LaTeX Compiler**: XeLaTeX via Docker (texlive/texlive:latest)

## 💡 Tips for Claude

1. **When updating content**: Update BOTH resume and CV versions (different detail levels)
2. **When making changes**: Always preserve formatting and structure
3. **Font issues**: Ensure `\begin{cvitems}` is inside `\cventry{...}{...}{...}{...}{ HERE }`
4. **Building**: Use Docker commands or GitHub Actions, not local LaTeX installation
5. **Testing changes**: Run `make` locally before pushing to verify compilation
6. **CGPA accuracy**: Always use 3.19 for MS and 3.67 for BS

## 🎯 Common Requests

### "Update my work experience"
→ Edit `templates/awesome-cv/sections/resume/experience.tex` AND `sections/cv/experience.tex`

### "Add a new skill"
→ Edit `templates/awesome-cv/sections/resume/skills.tex` (categorized: Languages, Frameworks, etc.)

### "Create a new release"
→ Guide user to GitHub Actions → Create Resume Release workflow

### "Change template color"
→ Edit main `.tex` file, change `\colorlet{awesome}{awesome-red}` to other colors

### "Add more content to Deedy"
→ Deedy is 1-page only, must condense content or suggest using Awesome-CV instead

## 📚 Reference Files

- **Full docs**: README.md
- **GitHub Actions**: GITHUB_ACTIONS_GUIDE.md
- **Release creation**: HOW_TO_CREATE_RELEASE.md
- **Build config**: Makefile
- **Templates**: templates/awesome-cv/, templates/deedy/

---

**Last Updated**: February 2024
**Repository**: https://github.com/arslan77/resume
