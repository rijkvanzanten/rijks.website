---
layout: page
---

# Project 1

> "Add a feature onto an app"

For this project, I'm tasked with designing a new integration between an email client and a calendar app to make scheduling meetings easier.

Seeing that we're using way more channels than just email to plan meetings nowadays, I'll try to come up with a solution that will work with other forms of communication as well (for example Slack, WhatsApp, or Telegram).

The calendar app I'll use as base is Apple's Calendar app:

![Apple Calendar](/assets/major-studio-1/apple-calendar.png)

I've chosen Apple's calendar because it's a very barebones calendar application and shares the same core layout as Google's and Microsoft's offerings, without all the additional options.

## Design Brief

### Introduction

I think everyone has had an experience where they've set up a meeting or appointment with someone only to find out that they already had another thing planned at that exact same time.

It's especially bad when you only find out the day of the appointment itself.

In this project, I'll try to come up with an improved user experience which will alleviate the pain points of managing calendar appointments.

### Problem Definition

The flow of booking a meeting often happens in one of two ways:

1. The user doesn't check anything
1. The user goes back and forth between email & calendar client

![Problem flow visualized](/assets/major-studio-1/problem-flow.png)
*[Full size](/assets/major-studio-1/problem-flow.png) • [Sketch](/assets/major-studio-1/problem-flow.sketch) • [IRL version](/assets/major-studio-1/problem-flow-irl.jpeg)*

I feel like we're all familiar with the problems that can arise when opting for the first way of booking meetings. This method is especially unsuitable for professional settings like setting up office or client meetings.

That doesn't mean that the second—I'd argue the most used way—of setting up meetings is perfect. The (context) switches between apps in the bottom half of the image above are especially troubling[^1]. Each time the user switch from application—eg from email to calendar—they need to re-adjust to the user interface which can cause confusion and frustration. Besides, I think most people might do another "pass" back-and-forth to double, and maybe even triple, check they got the dates, locations, and other information right.

#### Existing solution

It's currently possible to schedule meetings in Apple's Calendar based on text by hitting the "+" button in the top left.

![Apple Calendar quick event](/assets/major-studio-1/apple-calendar-quick-event.png)

![Apple Calendar quick event with content](/assets/major-studio-1/apple-calendar-quick-event-with-content.png)

While this feature allows you to quickly schedule meetings, there are a few big problems:

* Only available within calendar
* Not very smart
* Doesn't show you other events on that time
* Doesn't allow you to set any other metadata

After you hit enter, the calendar jumps to the date and selects the just-added item. This switch is not announced in any way and disregards whatever the user was doing in the calendar before.

<video muted autoplay loop src="/assets/major-studio-1/apple-calendar-flow.mov"></video>

### Design Challenge

How can a email application be extended in a way that allows the user to immediately check date and time availability in order to prevent double bookings from happening and in order to speed up and simplify the planning process?

#### Sub-questions

* Can this approach be used in other non-email contexts (f.e. WhatsApp or Telegram)?
* What are the differences in calendar usage between different user groups?
* What are the biggest competitors in this space?

### Stakeholders / Target audience

On the client side there is the original manufacturer of the calendar application that's being used. For this stakeholder, it's important that the solution coheres to the existing design language and system. It's also important that the solution provides the user with an improved experience which doesn't sit in the way when it's not used.

On the user side, it's quite hard to define a "calendar user" group. This group would contain basically all demographics. This group would become even broader if we rephrase it to "email users".

In order to have a specific sense of who to design this solution for, I'll be focusing on a group of which I think the calendar-email usage will be the biggest: Yuppies. Yuppies are self-absorbed young professionals, earning good pay, enjoying the cultural attractions of sophisticated urban life and thought, and generally out of touch with most challenges and concerns of less well-off people[^2].

### Trends & Threats

I think it's safe to say that as long as there are humans trying to connect with one another, there will be a need for a calendar in some fashion. The same can't be said for email however. The total volume of sent emails has dropped about 10 percent since 2010[^3].

That being said, the biggest threat in this space is the sheer volume of email/calendar apps and integrations out there. It seems like every day a new calendar or email related app releases. Based on Product Hunt alone, there are more than 1,500 different email and calendar apps[^4]!

## Research

### Use Cases

#### Questions
* Why might a user need your product?
* What questions might they have?
* What other products and solutions might they interact with?

#### Possible Use Cases
* Schedule meetings
* Invite other people
* Manage work time
* Track time
* Check if you have something to do on a certain date or time
* Schedule a meeting with multiple people

#### Questions the user might have
* Do I have anything to do next Wednesday between 12p & 4p?
* When can my friends meet up?
* Where did this meeting come from?
* How can I do *X*
* Where is a meeting?
* How do I get there?
* Who’s going to be there

#### Other products and solutions
* Google Calendar
* doodle.com (datumprikker.nl)

### Persona's

Based on my initial desk research into the target audience, I came up with the following hypothetical archetype of my user.

![Persona](/assets/major-studio-1/persona.png)
*[Full size](/assets/major-studio-1/persona.png) • [Sketch](/assets/major-studio-1/persona.sketch)*

### Project Charter

*We Believe*  
Users struggle with double bookings when planning meetings

*We Know We're*  
Right

*When the user*  
Isn't as agitated when planning meetings as before

### SWOT Analysis MixMax Calendar

Competitor: [MixMax Calendar](https://mixmax.com/calendar)

![](/assets/major-studio-1/swot/calendar_hero.png)

![](/assets/major-studio-1/swot/feature_calendar.png)

#### Strengths
* Integrations with existing email clients and services (Gmail / iCloud / MS)
* Calendly like service to setup meetings (main focus)
* Web based scheduling services doesn’t require other users to download an app

#### Weaknesses
* Identity crisis  
  * Is it trying to be a calendar, or just an additional tool?
* You have to manually select your availability
* Doesn’t take “outside” calendar events in consideration

#### Opportunities
* High demand for this kind of service (based on Product Hunt popularity)
* Added value by adding automation features (like automatic follow ups and reminders)

#### Threats
* Big calendar providers already provide invite options and might introduce this at a moments notice, completely negating the usefulness of this separate application
* Existing provider with the exact same feature set: Calendly, Doodle.com
* Not enough added value for the user to have to install yet another app

## Design 

### Initial Ideation Sketches

#### Prompt

How can we allow users to quickly check, reschedule, and plan at specific times and dates?

How can we provide the user with the same functionality no matter where the user is?

#### Separate mobile application

![Mobile App sketch](/assets/major-studio-1/sketches/mobile-app.jpg)
*[Full size](/assets/major-studio-1/sketches/mobile-app.jpg)*

This mobile style interaction would be a nearly empty main screen that would prompt the user to enter a date and time. Based on the entered datetime info, the app would show the availability for that exact timeslot.

#### Right click idea

![Right Click](/assets/major-studio-1/sketches/desktop-r-click.jpg)
*[Full size](/assets/major-studio-1/sketches/mobile-app.jpg)*

In this interaction, the user would select any date anywhere in the system, hit the right mouse button and hit a new "Show in Calendar" (or something along those lines) option. This would then open an overlay on top over the screen showing the add-to-calendar interface.

#### Menubar

![Menubar](/assets/major-studio-1/sketches/menubar.jpg)
*[Full size](/assets/major-studio-1/sketches/menubar.jpg)*

This could be an alternative way to open the same interface as above. 

#### Nataly's idea

![](/assets/major-studio-1/sketches/nataly.jpeg)
*[Full size](/assets/major-studio-1/sketches/nataly.jpeg)*

#### Shefali's Idea

![](/assets/major-studio-1/sketches/shefali.jpeg)
*[Full size](/assets/major-studio-1/sketches/shefali.jpeg)*

#### Conclusion

I think I should focus on creating one interface that can be re-used in all the different ideas seen above. The Apple Calendar "Quick Event" interface could be a good starting point. 

## Sources

[^1]: Harris, J. (2016, April 5). _The Invisible Problem Wrecking Your Productivity And How To Stop It_. Retrieved from [blog.trello.com](https://blog.trello.com/why-context-switching-ruins-productivity)
[^2]: Victor Davis Hanson (2010, August 13). _Obama: Fighting the Yuppie Factor_. National Review. Retrieved from [nationalreview.com](https://www.nationalreview.com/2010/08/obama-fighting-yuppie-factor-victor-davis-hanson/)
[^3]: Pogue, D. (2015, March 1). _Is Messaging Going to Kill E-mail?_. Retrieved from [scientificamerican.com](https://www.scientificamerican.com/article/is-messaging-going-to-kill-e-mail/)
[^4]: ProductHunt. (n.d.). _Search Results_. Retrieved from [producthunt.com](https://www.producthunt.com/search?all=true&q=calendar)
