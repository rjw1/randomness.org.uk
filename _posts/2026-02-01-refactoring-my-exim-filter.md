---
layout: post
title: Testing and Refactoring my exim filter file with Docker and Gemini CLI
---

I run [Sympl](https://sympl.io/) on a [Mythic Beasts](https://www.mythic-beasts.com/) VM as my mail server and one of my web hosts. My `exim` filter file had grown into a massive (776 lines), repetitive file over at least 15 years (I have `git` commits going back 10 years) if not longer that certainly needed a refactor, but I was worried about breaking at least my filtering if not my mail delivery entirely.

To solve this, I built with help from [gemini-cli](https://github.com/google-gemini/gemini-cli) a Docker-based testing suite to verify my rules before making changes. Since its much better to have tests before a refactor. Also using `docker` means I can test locally before pushing the updated filter to my server.

## The Testing Strategy

The system uses `exim4-daemon-light` inside a container and leverages `exim`'s filter testing mode (`exim -bF`). I wrote a simple `bash` helper to pipe mock emails into `exim` and verify the output:

```bash
run_test 'Spam Domain Block' \
"From: info@spamsite.best
Subject: Urgent" \
"Save message to: /path/to/Maildir/.caughtspam/"
```

## Refactoring with Gemini CLI

With a solid test suite in place, I used **[gemini-cli](https://github.com/google-gemini/gemini-cli)** to handle the tedious bit. It helped me:

- Consolidate lots of repetitive `if` blocks into cleaner `or` conditions.
- Standardize header checks across the entire file.
- Generate new test cases for edge cases I hadn't covered.

The combination of a local test suite and an AI-powered CLI turned a slightly risky manual chore into a safe, automated workflow. Now I can refactor with confidence, knowing my mail is still going where it should.

As of today the filter file is down to 492 lines.

Next I plan to set up some CI to run on my recently deployed [gitea](https://gitea.com/) instance to automatically run the tests on any future changes to the filter file.
