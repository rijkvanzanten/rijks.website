---
layout: page
---

# Project 2: Subway Interventions

> New Yorkers take pride in their subway system—it’s the oldest, the biggest, the most democratic—but if you really press them they’d probably all have some complaints, too.

> Got one of your own? Well this is your opportunity to address it. For this project, we’re going to find something about the subway that we’d like to improve using design, specifically typography.

[Full project details](http://www.jacobheftmann.com/teaching/typography-interaction-18/projects#project-2subway-interventions)

## Research

I've spent a good hour at the city's biggest subway station: Times Square-42 St[^1]. While observing people indoors, I noticed that this station is almost an ant nest. The sheer volume of people combined with the fact that everybody is seemingly going a random direction makes this station one of the most chaotic. I initially thought that there clearly must be something problematic going on in the wayfinding department. If we take a brief look at the actual layout of this station, it isn't hard to imagine the insanity that is finding your way around:

![Map of Times Sq-42 St](https://static1.squarespace.com/static/55ababf2e4b064e8b6004ad2/55e3b9bbe4b0eacb0638102d/58c9ca0fcd0f6839cdd75cfb/1537298869091/02+Times+Square+Image.jpg?format=2500w)
*[Full Size](https://static1.squarespace.com/static/55ababf2e4b064e8b6004ad2/55e3b9bbe4b0eacb0638102d/58c9ca0fcd0f6839cdd75cfb/1537298869091/02+Times+Square+Image.jpg?format=2500w) • [Source](http://www.projectsubwaynyc.com/gallery/)*

This thought is further strengthened by the overload of signs and arrows pointing people in different directions:

![Wayfinding in Times Sq-42 St](/assets/type-and-interaction/times-sq-1.jpeg)
*[Full Size](/assets/type-and-interaction/times-sq-1.jpeg)*

However, after studying people's routes and behaviors more closely, I came to an interesting conclusion. While it looks like everyone is running around in circles from the outside, the individual trajectories are very clear. Almost everyone I observed was going to their destination (the platform) in a straight line.

I figured that—even though it might look messy from the outside—the actual wayfinding inside of the subway stations must be pretty decent. I know that part of this "skill to navigate" in certain stations is caused by the fact that most of the people present are locals who are intimately familiar with the stations and lines, but I'm certain that in a tourist-heavy area like Times Square this percentage won't be the vast majority.

### Tickets

On my way out of the station, I literally ran into what seemed like the perfect problem to solve: lines at the ticket machines. It's fascinating to see the difference in MetroCard Vending Machine usage between people who are familiar with the MTA and people who are not. I've seen a friend of mine who has lived in NYC his whole life top up his MetroCard in seconds, pressing on the correct screen positions even before the interface was fully visible yet. This is a classic example of muscle memory at play. On the other side of the spectrum however, people who aren't familiar with the MetroCard (and it's difference between "Time" and "Value") take a very long time to figure out what to do. I have even witnessed multiple people (often with groups / families) give up halfway in the process to make their way to the information / helpdesk in the station. 

When a person is taking a long time at the machine, it creates a loop of frustration:

* Person A gets frustrated because they can't reach their goal efficiently
* Person B (in line) gets frustrated at Person A for taking so long
* Person A gets more frustrated at the machine for holding up others as well
* Person B gets more frustrated at Person A for taking so damn long (and because he's about to miss the 7)
* etc etc etc

This will go on and on until:

A. Person A gives up, or;  
B. Person A finally manages to get the machine to work, or;  
C. Person B uses another machine (at which point, Person B is replaced by Person C).

## The Problem

The MetroCard Vending Machines are too hard to use for new users, which causes frustrations and delays at the ticket point of sales.

This problem can be further dissected into these core problems:

### Unclear Structure

The machine itself has various different elements all in bright colors that scream for the user's attention. Meanwhile, the most important part—the screen—is surrounded by a black border which makes it stand out less:

![MVM](https://media.gettyimages.com/photos/metrocard-vending-machine-in-a-subway-station-in-new-york-new-york-picture-id869796512?k=6&m=869796512&s=612x612&w=0&h=ljfmRxi8HJw1i1EAckkk74Ii3z7nUB_zKTVDJKnw2As=)
*[Full Size](https://media.gettyimages.com/photos/metrocard-vending-machine-in-a-subway-station-in-new-york-new-york-picture-id869796512?k=6&m=869796512&s=612x612&w=0&h=ljfmRxi8HJw1i1EAckkk74Ii3z7nUB_zKTVDJKnw2As=) • [Source](https://www.gettyimages.com/detail/news-photo/metrocard-vending-machine-in-a-subway-station-in-new-york-news-photo/869796512)*

Other key points:
* The user has to find the relatively tiny "Start" button in the top right of the screen, which is the least notable thing on in this interface
* The arrangement doesn't indicate any sort of order in the process
* Certain elements aren't needed anymore, like the separate pin-pad or single-ride slot\*

\* There might be a technical reason why these things have to be here, but for the sake of this project, I won't spend too much time on realism.

### Confusion in Products

There is quite a complicated mess of fares, rules, discounts, and options you need to take into account when purchasing a MetroCard.

![Ticket Types](/assets/type-and-interaction/ticket-types.png)
*[Full Size](/assets/type-and-interaction/ticket-types.png) • [Source](http://web.mta.info/nyct/fare/FaresatAGlance.htm)*

While this is more a problem in the MTA's fares and tolls, it hinders the interaction with the machine directly, as you need to be familiar with all of the rules in order to use the vending machines well.

### Cumbersome flow

All the above options and rules combined with some poor choices in user flow result in a fairly big user flow for a seemingly simple interaction:

![MTA Flowchart](/assets/type-and-interaction/mta-flowchart.png)
*[Full Size](/assets/type-and-interaction/mta-flowchart.png) • [Sketch](/assets/type-and-interaction/mta-flowchart.sketch) • [IRL](/assets/type-and-interaction/mta-flowchart.pdf) • [Based on the Times Sq 42 St machine](/assets/type-and-interaction/mta-flowchart-source.pdf)*

After playing around with a vending machine, and creating this, I immediately wondered a few things:

* Why do I have to press start in order to do anything?
* Why do I have to choose a language? Can't it default to English with the ability to change at any time?
* Why do I have to choose to refill my MetroCard before I can enter my MetroCard?
* Why does the card info have to be shown on a separate screen?
* What's the difference between time and value?
* Why are the amounts weird?  
  When you choose to add value, you're presented with options like $26.20 and $20.95. It turns out with those specific amounts you get a bonus that makes the total value equal an _n_ amount of trips. 
* Do we _need_ receipts?

![Why](/assets/type-and-interaction/why.gif)
*[Full Size](https://nextcity.org/images/forefront/_resized/why_800.gif) • [Source](https://nextcity.org/features/view/what-is-the-best-way-to-sell-a-train-ticket)*

_Turns out I wasn't the only one wondering about these things. I came across an amazing article that goes in depth on why these things are the way they are. It doesn't explain how to solve them though, so let's move on with the design research._

## Sources

[^1]: MTA. (n.d.). _Subways: Facts and Figures_. Retrieved from [web.mta.info](http://web.mta.info/nyct/facts/ffsubway.htm)
