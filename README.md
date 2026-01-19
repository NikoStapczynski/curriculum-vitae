# Curriculum Vitae Generator

A structured repository for managing and tailoring resumes for different job applications. This system allows you to maintain modular resume components and generate customized versions for specific job postings.

## Repository Structure

```
curriculum-vitae/
├── templates/
│   ├── base_resume.md          # Complete resume template
│   └── styles/
│       └── resume.css          # Custom styling for HTML output
├── jobs/
│   └── software-engineer-example/
│       ├── customizations.md   # Job-specific tailoring notes
│       └── job_description.txt # Original job posting for reference
├── output/
│   └── software-engineer-example/
│       ├── resume.md           # Generated markdown resume
│       ├── resume.html         # Generated HTML resume
│       └── resume.pdf          # Generated PDF resume
├── scripts/
│   ├── generate_html.sh        # Convert markdown to HTML
│   └── generate_pdf.sh         # Convert markdown to PDF
├── config/
│   └── job_configs.yaml        # Configuration for different jobs
└── README.md                   # This file
```

## Quick Start

1. **Install Dependencies**
   ```bash
   # Install pandoc for HTML/PDF generation
   sudo apt install pandoc  # Debian
   ```

2. **Create a New Job Application**
   ```bash
   # Create job directory
   mkdir -p jobs/new-job-name

   # Add job description and customizations
   cp jobs/software-engineer-example/job_description.txt jobs/new-job-name/
   cp jobs/software-engineer-example/customizations.md jobs/new-job-name/
   ```

3. **Generate Resume**
   ```bash
   # Generate HTML
   ./scripts/generate_html.sh new-job-name

   # Generate PDF
   ./scripts/generate_pdf.sh new-job-name
   ```

## Workflow for Job Applications

1. **Save Job Posting**: Copy the job description to `jobs/[job-name]/job_description.txt`

2. **Plan Customizations**: Note what to emphasize/de-emphasize in `jobs/[job-name]/customizations.md`

3. **Edit Resume**: Modify `templates/base_resume.md` for this job

4. **Generate Outputs**: Run the generation scripts to create tailored resume files

5. **Apply**: Use the generated files in `output/[job-name]/` for your application

## Customization Tips

- **Summary**: Tailor the objective statement to match job requirements
- **Skills**: Reorder and prioritize skills mentioned in the job posting
- **Experience**: Lead with roles most relevant to the target position
- **Projects**: Highlight projects that demonstrate required skills
- **Keywords**: Incorporate keywords from the job description naturally

## Scripts

- `generate_html.sh`: Converts markdown to styled HTML (requires pandoc)
- `generate_pdf.sh`: Converts markdown to PDF (requires pandoc)

## Dependencies

- Bash
- pandoc (for HTML/PDF generation)

## Contributing

When updating your base resume:
1. Edit `templates/base_resume.md` directly
2. Update any job-specific customizations as needed

## License

This repository contains personal resume information. Please respect privacy and do not distribute without permission.
