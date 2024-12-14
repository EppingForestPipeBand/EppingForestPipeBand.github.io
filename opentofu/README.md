# Configuring EFPB.org on Cloudflare with OpenTofu

This document explains how we manage the EFPB.org domain using Cloudflare for DNS (Domain Name System) configuration. It also highlights why this approach is beneficial, even if you aren’t deeply technical.

## What is Cloudflare?

Cloudflare is a service that helps manage domain names like EFPB.org. It acts as a phone book for the internet, translating human-friendly domain names (like EFPB.org) into IP addresses that computers understand. It also provides security and performance features to keep the website fast and reliable.

## What is OpenTofu?

OpenTofu is a tool that helps manage infrastructure as code. This means that all the settings for the EFPB.org domain are written in files, so:
- We can clearly see what changes have been made and when.
- It’s easier to avoid mistakes or fix them if they happen.
- Everyone involved has a shared understanding of the configuration.

## Why Use Cloudflare and OpenTofu?

1. Reliability:
   - Cloudflare ensures that EFPB.org is always online and fast, even during heavy traffic or technical issues.
2. Security:
   - Cloudflare protects the site from attacks and ensures it’s safe for visitors.
3. Transparency:
   - OpenTofu stores the domain’s settings in a shared repository, so we always know exactly how the domain is set up.
4. Ease of Collaboration:
   - Using OpenTofu makes it simple for others to contribute to or review changes without needing deep technical knowledge.

## How Does It Work?

1. OpenTofu Files:
   - All the domain’s settings (like where to point the website, email, etc.) are written in OpenTofu configuration files.
   - These files are stored in this version-controlled repository on GitHub for tracking changes.
2. Cloudflare Integration:
   - OpenTofu connects to Cloudflare to automatically apply the settings written in the files.
   - Examples of settings include:
     - Redirecting EFPB.org to the right server.
     - Configuring subdomains like www.efpb.org.
3. Deploying Changes:
   - Whenever a change is needed (e.g., adding a new subdomain), the files are updated, reviewed, and then applied using OpenTofu.
   - This ensures consistency and prevents manual errors.

## Why Should You Care?

By using Cloudflare and OpenTofu:
- Our website remains accessible and secure without needing constant technical intervention.
- Changes are safe and controlled, so mistakes are less likely.
- You can focus on what matters, like the band’s activities, while the technical details are handled efficiently.

## How to Request a Change

If you need to:
- Add a new subdomain (e.g., media.efpb.org).
- Redirect visitors to another website.
- Update the email configuration.

Either submit a PR or simply let us know! We’ll update the OpenTofu files and apply the changes.

If you have any questions or want to understand more about how this works, feel free to reach out!
