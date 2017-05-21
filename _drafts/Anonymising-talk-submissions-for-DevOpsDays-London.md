---
layout: post
title: Anonymising talk submissions for DevOpsDays London
---
I’m one of the organizers of [DevOpsDays London 2017](https://www.devopsdays.org/events/2017-london/), and for all sorts of reasons I’ve ended up with the job of anonymising [talk submissions](https://www.devopsdays.org/events/2017-london/propose/) so that the rest of the committee can review them without bias. We’re trying to run a [diverse and inclusive](https://medium.com/@hannahfoxwell/should-tech-conferences-be-more-inclusive-5a05a09cd302) conference, so this is an important step to make sure we end up with a diverse set of speakers. Given all of this, I thought I’d talk about the process I’m using to anonymise the submissions.

We’re accepting talk submissions via a [Google form](https://docs.google.com/forms/d/e/1FAIpQLSeOEbAXbJP2qNPIATC9WijkJAKJt_AOjxG2yDmrcrZtcrGjvQ/viewform#start=openform), which puts the data into a Google sheet which only I have access to. Every so often I copy and paste the titles, abstracts, and any other relevant details of new submissions into a text file which is version controlled in git and stored in a GitLab private repo. I then anonymise it all by removing personal names, company names, and gendered pronouns. I also create a unique ID for the submission, which hides the order of submission. I use a [script](https://github.com/rjw1/scripts/blob/master/hide-submission-number.pl) which encrypts the ID with  [Crypt::Skip32::Base32Crockford](https://metacpan.org/pod/Crypt::Skip32::Base32Crockford) (the key is different in the copy I’m using).

Here’s an example:

ID: 1 
Title: How to DevOps Production
Abstract: How Alice and her team made production better by using Large Company’s tool. Alice will explain the challenges of changing the culture at Small Company while trying to implement a new technology.

becomes

ID: 2W1FW2W
Title: How to DevOps Production
Abstract: How 2W1FW2W and their team made production better by using a clustering tool. 2W1FW2W will explain the challenges of changing the culture at their place of work while trying to implement a new technology.

The plan is to take these anonymised submissions and place them into a Google form which the reviewing panel will then score on a scale of 0-3:

- 0 = This submission is not suitable
- 1 = This submission is mostly suitable
- 2 = This submission is suitable
- 3 = This submission is very suitable

We also plan to make a copy of this form, allow anyone to review the submissions, and use the data from that to help shape our eventual schedule.

So please [submit a talk](https://www.devopsdays.org/events/2017-london/propose/) to make more work for me. We’re also still looking for [sponsors](https://www.devopsdays.org/events/2017-london/sponsor) to make DevOpsDays London as [inclusive as possible](https://medium.com/@hannahfoxwell/should-tech-conferences-be-more-inclusive-5a05a09cd302). Ticket sales are [already open](https://www.devopsdays.org/events/2017-london/registration), too.

