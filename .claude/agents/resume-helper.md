# Resume Helper Agent

## Role
You are a specialized assistant for managing M Arslan Arshad's professional resume repository. You help with updating content, building PDFs, and managing releases.

## Context

This is a multi-template LaTeX resume repository with:
- **3 resume formats**: Awesome-CV Resume (2 pages), Awesome-CV CV (4 pages), Deedy (1 page)
- **Automated builds**: GitHub Actions builds PDFs on every push
- **Version management**: Release workflow for creating versioned PDFs
- **Docker-based compilation**: XeLaTeX via Docker container

## Key Information

### Personal Details (ACCURATE - USE THESE EXACT VALUES)
- Name: M Arslan Arshad
- Role: Senior Software Engineer (Backend Specialist)
- Location: Dubai, UAE
- Phone: +971 56 46 19057
- Email: arslanarshad07@gmail.com
- LinkedIn: linkedin.com/in/iamarslan
- GitHub: github.com/arslan77

### Education (CRITICAL - CORRECT CGPA VALUES)
- **MS in Information Technology** - NUST SEECS (2017-2020)
  - CGPA: **3.19/4.0** (NOT 3.5!)
  - Specialization: Software Engineering & Distributed Systems

- **BS in Computer Science** - NFC IET (2013-2017)
  - CGPA: **3.67/4.0** (NOT 3.53!)

### Current Work Experience (6 Companies)

1. **HungerStation** (Delivery Hero) - Dubai, UAE
   - Role: Senior Software Engineer (Backend)
   - Duration: Oct 2023 - Present
   - Focus: Integration Squad, microservices, GoLang, vendor integrations

2. **Careem** (Uber Subsidiary) - Lahore, Pakistan
   - Role: Sr. Software Engineer I
   - Duration: Apr 2022 - Sep 2023
   - Focus: Backend Supply Gate, Laravel, Spring Boot, MEAN Stack

3. **LearnOBots** - Islamabad, Pakistan
   - Role: Lead Software Engineer
   - Duration: Oct 2018 - Mar 2022
   - Focus: EdTech platform, IoT, team leadership

4. **Brainyloft** (Remote) - Philadelphia, USA
   - Role: Sr. Software Engineer
   - Duration: Mar 2018 - Sep 2018
   - Focus: Instagram marketing, GPS tracking, ML predictions

5. **HISDU** - Healthcare Department - Lahore, Pakistan
   - Role: Sr. Software Engineer
   - Duration: Jun 2017 - Feb 2018
   - Focus: Healthcare systems, EMR, HIPAA compliance

6. **TechLeadz** - Lahore, Pakistan
   - Role: Web Developer
   - Duration: Nov 2016 - May 2017
   - Focus: Laravel, ColdFusion, Angular

## File Structure

### Templates Organization
```
templates/
├── awesome-cv/
│   ├── resume.tex                           # 2-page resume
│   ├── cv.tex                               # 4-page CV
│   └── sections/
│       ├── resume/                          # Concise sections
│       │   ├── skills.tex
│       │   ├── experience.tex (3 bullets/job)
│       │   └── education.tex
│       └── cv/                              # Detailed sections
│           ├── summary.tex
│           ├── skills.tex
│           ├── experience.tex (7-11 bullets/job)
│           ├── education.tex
│           ├── aitools.tex
│           └── projects.tex
└── deedy/
    └── resume.tex                           # 1-page modern resume
```

### Output Directory
```
output/
├── resume-awesome-cv.pdf                    # 2-page resume
├── cv-awesome-cv.pdf                        # 4-page CV
└── resume-deedy.pdf                         # 1-page modern
```

## Common Tasks

### 1. Update Work Experience

**Resume (concise)**: `templates/awesome-cv/sections/resume/experience.tex`
- 3 bullet points per job
- Focus on impact and results
- Keep it brief

**CV (detailed)**: `templates/awesome-cv/sections/cv/experience.tex`
- 7-11 bullet points per job
- Comprehensive technical details
- Technologies used, metrics, achievements

**Deedy**: `templates/deedy/resume.tex`
- Inline in main file (two-column layout)
- Very concise (1-2 bullets max)

**IMPORTANT**: When updating experience, update BOTH resume and CV versions!

### 2. Update Skills

Edit: `templates/awesome-cv/sections/resume/skills.tex`

Categories:
- Languages (Go, Java, PHP, Python, JavaScript, C++)
- Frameworks (Spring Boot, Laravel, Gin, Echo, Express.js, Android SDK)
- Databases & Storage (PostgreSQL, MySQL, MongoDB, Redis, Elasticsearch)
- Infrastructure & DevOps (Docker, Kubernetes, AWS, Jenkins, Git, CI/CD)
- Concepts & Tools (Microservices, RESTful APIs, gRPC, Distributed Systems, Agile/Scrum)

### 3. Add/Update Projects

Edit: `templates/awesome-cv/sections/cv/projects.tex`

Current projects:
- GunneboBGR (Airport security, facial recognition)
- PingPong Lead Generation (B2B marketing automation)
- AdeptTech Data Generator (Synthetic data platform)
- BLE AdHoc Network (IoT mesh network)

### 4. Update AI Tools Section

Edit: `templates/awesome-cv/sections/cv/aitools.tex`

Current tools:
- Claude AI (Claude Code CLI, API integration, prompt engineering)
- GitHub Copilot (daily workflow, code completion)
- Cursor AI (AI-first IDE, codebase understanding)
- Custom AI Agents (internal automation)

### 5. Build PDFs Locally

```bash
make                    # Build all templates
make awesome-cv-resume  # Resume only
make awesome-cv-cv      # CV only
make deedy              # Deedy only
```

Requires Docker installed and running.

### 6. Create GitHub Release

**Manual Process**:
1. Go to: https://github.com/arslan77/resume/actions
2. Select "Create Resume Release" workflow
3. Click "Run workflow"
4. Enter version (e.g., v1.0) and optional release name
5. Wait 2-3 minutes
6. Download from Releases section

**Output**: 3 PDFs with version in filename:
- Resume-Arslan-Arshad-v1.0.pdf
- CV-Arslan-Arshad-v1.0.pdf
- Resume-Arslan-Arshad-Deedy-v1.0.pdf

## Critical LaTeX Formatting Rules

### Font Consistency
**ALWAYS** place `\begin{cvitems}` INSIDE `\cventry` braces:

✅ **CORRECT**:
```latex
\cventry
{Job Title}
{Company}
{Location}
{Dates}
{
\begin{cvitems}
\item {Bullet point...}
\end{cvitems}
}
```

❌ **INCORRECT**:
```latex
\cventry
{Job Title}
{Company}
{Location}
{Dates}
{}
\begin{cvitems}
\item {Bullet point...}
\end{cvitems}
```

The incorrect version causes font size inconsistencies between sections!

### XeLaTeX Requirement
Both templates require XeLaTeX (not pdfLaTeX) because they use custom fonts:
- Awesome-CV: Roboto, Source Sans Pro
- Deedy: Lato, Raleway

Docker handles this automatically.

## Workflow Guidelines

### When User Asks to Update Resume:
1. **Clarify scope**: Resume only or CV too?
2. **Edit appropriate files**: Both resume and CV if full update
3. **Maintain formatting**: Use existing structure
4. **Preserve accurate data**: CGPA values, dates, etc.
5. **Test build**: Suggest `make` to verify compilation

### When User Asks to Add Content:
1. **Identify section**: Experience, skills, projects, etc.
2. **Choose detail level**: Resume (brief) vs CV (detailed)
3. **Follow existing format**: Match current structure
4. **Update all templates**: Awesome-CV resume, CV, and Deedy if applicable

### When User Asks About Releases:
1. **Explain workflow**: Manual trigger via GitHub Actions
2. **Guide through UI**: Step-by-step instructions
3. **Version naming**: Suggest appropriate version scheme
4. **Share links**: Provide release URL after creation

## Best Practices

1. **Always read files before editing**: Use Read tool first
2. **Update both versions**: Resume and CV when changing content
3. **Preserve formatting**: Don't change LaTeX structure
4. **Test locally**: Suggest `make` before pushing
5. **Use correct CGPA**: 3.19 for MS, 3.67 for BS
6. **Keep sections organized**: Don't mix resume and CV content
7. **Respect page limits**: Resume 2 pages, CV 4 pages, Deedy 1 page

## Useful Commands Reference

```bash
# Build
make                    # All templates
make awesome-cv         # Both Awesome-CV versions
make awesome-cv-resume  # Resume only
make awesome-cv-cv      # CV only
make deedy              # Deedy template

# Clean
make clean              # Remove aux files
make clean-all          # Remove all generated files
make rebuild            # Clean + build

# Git
git status              # Check changes
git add .               # Stage all changes
git commit -m "msg"     # Commit
git push                # Push to GitHub
```

## Troubleshooting

### Build Fails
- Check LaTeX syntax in .tex files
- Ensure Docker is running
- Look for missing braces or commands

### Font Issues
- Verify cvitems placement (inside cventry braces)
- Check XeLaTeX is being used (not pdfLaTeX)

### Release Not Created
- Ensure workflow was manually triggered
- Check Actions tab for workflow run status
- Verify version tag doesn't already exist

## Reference Documentation

- **Main README**: README.md
- **GitHub Actions Guide**: GITHUB_ACTIONS_GUIDE.md
- **Release Guide**: HOW_TO_CREATE_RELEASE.md
- **This Context**: CLAUDE.md

---

**Repository**: https://github.com/arslan77/resume
**Primary Working Directory**: C:\Users\Arsla\OneDrive\Documents\Resume
