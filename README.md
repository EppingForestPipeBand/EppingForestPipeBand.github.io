# Epping Forest Pipe Band Website

[![Deploy Status](https://github.com/EppingForestPipeBand/efpb-org/actions/workflows/deploy.yml/badge.svg)](https://github.com/EppingForestPipeBand/efpb-org/actions/workflows/deploy.yml)
[![Built with Jekyll](https://img.shields.io/badge/built%20with-Jekyll-red.svg)](https://jekyllrb.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

The official website for the Epping Forest Pipe Band

## Table of Contents

- [Background](#background)
- [Install](#install)
- [Usage](#usage)
- [Maintenance](#maintenance)
- [Contributing](#contributing)
- [Contacting Us](#contacting-us)
- [Thanks](#thanks)
- [License](#license)

## Background

This is the official website for the Epping Forest Pipe Band, built using Jekyll and based on the Multiverse template. The site showcases our band's activities, history, and gallery.

### A Brief History of Our Website
- 2004: The late, great Alan Ronaldson created our first site at epping-forest-pipe-band.com using “ntlworld homepage”.
- 2006: We moved to efpb.org, the site was rebuilt from scratch in raw HTML.
- 2011: The site transitioned to WordPress, improving content management.
- 2018: We upgraded to a more polished version of WordPress.
- 2025: The fifth iteration arrives—hosted on GitHub Pages with a renewed focus on the band’s life and work.


### Continuous Integration and Continuous Deployment (CI/CD)
As far as we are aware, we are the only Bagpipe band in the world who practices Continuous Integration and Continuous Deployment (CI/CD) for our website. We use GitHub Actions to automatically build and deploy the site when changes are pushed to the main branch, and we [do not use feature branches](https://youtu.be/v4Ijkq6Myfc). This means that the website is always up-to-date and reflects the latest changes. If you belong to a Bagpipe band that also uses CI/CD, please let us know in an issue!

We have the following jobs in GitHub Actions:
1. `deploy.yml` - builds the site and deploys it to GitHub Pages
1. `analyse_workflows.yml` - analyzes GitHub workflow files for security and best practices using zizmor

#### Deploy
The `deploy.yml` job is triggered by,
- a push to the main branch.

This ensures that the site is rebuilt when there are any changes. If there are any changes to the `assets/images/fulls` directory, image thumbnails are also generated.

#### Analyse Workflows
The `analyse_workflows.yml` job is triggered by,
- a push to the main branch of the `.github/workflows` directory.
- a schedule of once a month at 00:00 UTC.

This ensures that the workflows are analysed for security and best practices whenever they are changed and also once a month to check for any new security vulnerabilities since we last made changes.


## Install

This project uses [Jekyll](https://jekyllrb.com). To install:


Install dependencies

```bash
bundle install
```

Serve locally

```bash
bundle exec jekyll serve
```

## Usage

### Adding Images
1. Place full-size images in `assets/images/fulls/`
2. Create a new file in `_images/` with the same name (e.g., `01.md`)
3. Add frontmatter:

```yaml
---
title: Image Title
caption: Image Description
---
```

Thumbnails will be automatically generated by GitHub Actions when you push to the repository.


### Updating Content
- Main configuration in `_config.yml`
- Social media links in `_config.yml` under `social:`
- Contact email in `_config.yml` under `email:` - should be an @efpb.org email address

## Maintenance

### Regular Tasks
1. Update images in gallery
2. Check and update social media links

### Build Process
- Site automatically builds when pushed to main branch
- Thumbnails are automatically generated via GitHub Actions when images are added to `assets/images/fulls/*`

## Contributing

| Membership  | Action                                                                                                                                                                                                                           |
|-------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Non-members | We will gladly accept any contributions to the site. Please fork the repository and submit a pull request with your changes. We will review and merge them as soon as possible.                                                  |
|
| Members     | Please [submit an issue](https://github.com/EppingForestPipeBand/EppingForestPipeBand.github.io/issues/new) to request an organisation invite. Once you have been invited, you will be able to push directly to the main branch. |
|

## Code of Conduct

When contributing to this repository, please remember this [traditional Scottish saying](https://en.wikipedia.org/wiki/Jock_Tamson%27s_bairns):

> We’re a’ Jock Tamson’s bairns.

This means that we are all the same, and we should treat each other with respect and kindness.

Additionally, as we are open source, everything here is public, so dinnae write anything ye widnae want your Granny tae read!

## Contacting Us


| Request                                                      | Action                                                                                               |
|--------------------------------------------------------------|------------------------------------------------------------------------------------------------------|
| Technical; code, website, bug reports, feature requests      | [Submit an issue](https://github.com/EppingForestPipeBand/EppingForestPipeBand.github.io/issues/new) |
| Anything else; general enquiries, joining or hiring the band | Email secretary@efpb.org                                                                             |



## Thanks

- [HTML5 UP](https://html5up.net) for the Multiverse template
- [joaomlneto](https://github.com/joaomlneto/jekyll-multiverse-template) for the Jekyll implementation
- All band members!

## License

Code is licensed under the MIT License. See [LICENSE](LICENSE) for more information.

Everything else is licensed under a [Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/).