---
layout: "post"
title: "Reflection after reading: Amdahl to Zipf: Ten Laws of the Physics of People"
date: "2016-02-06 13:25"
tags: [universal-law]
---

The link to the article: [Amdahl to Zipf: Ten Laws of the Physics of People](http://hintjens.com/blog:100)
was sent by my colleague. I started reading it and quickly realized that it's very accurate.
Every one of the named laws is applicable to situations I've met in the companies I worked for.

Laws:
1. Newton's First Law of Motion

  > *Everything we do has an economic motive.*

  Usually I could observe this law, when one of my colleagues decides to change an employee. However this law has deeper meaning.

  Perhaps you met a situation when a super upper boss decides about very tiny detail of an application. Usually the result is catastrophic. No one want to stand against boss wishes and a whole team leaves all current activities and tries everything to fulfill boss expectation. Work is spoiled, deadline crossed, boss feature not delivered and the team becomes frustrating because their plan has been changed one again and nobody wished to listen them, when they objected.

  Such a decision forced upon a team by the super upper boss has no economic motive (all right, some times has). On the other hand system driven by economical means are successful.

  It's so true: ** the more accurate economic motive, the more accurate direction of movement **

  I remember a blog post by one of google's engineers. He describes a service that used to many calls to fulfill its purpose. Over-usage of requests caused troubles in dependent services. The team developing this service didn't optimize the service trough two years. Then someone came to an idea to bill service usage. After the idea had been put into a practice the service was optimized in less then month.

  Learnt: Invent (or use already invented) economic guidelines and use them to reach the goal.

2. Newton's Second Law of Motion

  > The bigger the team the more force it needs.

  Once again it conforms with my experience. Every team bigger than 8 people seemed to be unable to proceed. I can observe it in the initiative, in which I currently participate. The team consists of more than 15 people and its speed reminds a very slow turtle.

  Learnt: small team better effect

3. Newton's Third Law of Motion

  > When you push an organization, organization pushes it back.

  Once I decided to convince colleagues outside of team to allow Continuous Delivery introduction in one project. It took me about 4 months (or more) of discussion about the same topics over and over. Without support of my manager, it could be bad for me to finish.

  Learnt: Proceed slowly and consequently

4. The Equivalency Principle

  > Falling is indistinguishable from making progress

  I like this law especially. Once I was in a team that decided to prepare a technical basis for future development. It was at early stages on my career. First we spent a week preparing environment, servers, CI and so on. Then one week was too small then we extended this part by 2 others weeks. Soon, appeared that we were unprepared to meet our customer and the framework, we decided to write in meanwhile, wasn't ready as well. Fortunately for both sides our customer decided to meet sooner. I think, if he will contact us as was agreed on the project's begging, then we could have troubles to fulfill the contract.

  Learnt: Deliver in small steps and do things only necessary for the delivery.

5. Murphy's Law

  > If it can break, it will break. In fact the full law adds, "in the worst possible way, at the worst possible time."

  As for Today, I remember discussion between me and one of my colleagues when a bug appeared on production - connection between us and a remote provider sometimes was broken for unknown reason. He insisted on enhancement of logging to investigate the issue, I stood on a position to apply rather connection renewal or automatic application restart (less than a second) in case resources leak. We both failed because:
  * logging didn't give as an answer - there were too many reasons,
  * connection renewal caused resource leak and
  * automatic application restart worked but we didn't take lack of scaling into an account.

  Nevertheless the error's cause was an old router.

  Learnt: There are too many things to control, so conviction of having the control is just an illusion. The only was is preparation to stand up and walk again as quickly as possible.

6. The Uncertainty Principle

  >The more you know about one topic, the stupider you become

  Once after a designing meeting, I had a conclusion that I don't need to hear others, because I already know their proposals. Then during kitchen flash talk my colleague proposed brilliant solution and I thought, what an arrogant idiot I am.

  Learnt: Always encourage others and yourself for discussion during designing; each opinion and argument is worthy to be said and listen to.

7. Zipf's Law of Power Distributions

  > 20% of any system always has 80% of the power

  It was 1 AM, when we delivered a patch to fix production errors. We said to ourselves: shitty but works. Our client - a banker said on that: you had prevented 10^X loss of money, so if it's shit then it's made from pure gold.

  Learnt: if a code brings benefits then for sure isn't shitty

8. Moore's Law of Cost Gravity

  > Cool stuff gets 50% cheaper every 18-24 months

  I'm always surprise by application's code and behavior, my colleagues wonder on that. If they ask, I say only - there are to many things you need to know and code still evolves. Simple, I'm no savant.

  Learnt: adjust, control small parts, frequently review critical paths.

9. Amdahl's Law

  > The more you need consensus, the less work you can do

  I'm a member of team consisting of 15 people and we're proceeding very slowly. This law is so true...

  Learnt: keep a team small enough and *enough* is the key to success

10. Conway's Law

  >The software you make looks like your organization

  It's true for every organization I worked for.

  Learnt: Just take the initiative to fix the issue and be responsible. Nobody will solve the issue for you.
