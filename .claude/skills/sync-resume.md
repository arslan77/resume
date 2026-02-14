# Sync Resume to All Profiles

When invoked, this skill syncs resume data to GitHub profile and portfolio website.

## What it does:

1. Reads latest experience from resume repo
2. Extracts key information (current company, years of experience, skills)
3. Updates arslan77/README.md with latest info
4. Updates arslan77.github.io/index.html with latest info
5. Commits and pushes all changes

## How to use:

```
/sync-resume
```

Or:

```
Hey Claude, sync my resume to all my profiles
```

## What gets updated:

- Current company and role
- Years of experience
- Latest achievements
- Project highlights
- Skills (if changed)
