---
layout: "post"
title: "Hide and Seek: Communication performance"
date: "2016-02-09 21:07"
tags: [performance, partial result, partial request, stream, reactive, java]
categories: [2016]
---
One of the major player in a system architecture is communication between
components / services / application. Since it's used in almost every place
(http/json communication between webpage and restful api, http/something between
tiers, etc.) perhaps it's worthy deeper insight.

Measurements show that one of the slowest operations are:

* network communication and
* database access.

Just increasing speed of network communication could results in a performance
improvement of a whole process - accordingly to an observation that:

> a process is as fast as its slowest part

A communication process, which I see mostly, on the client side looks like:

* collect calling arguments (some times an argument is a collections)
* perform a request using the collected arguments
* wait for a response
* once the response is fully receipted process it

On the server side:

* once calling arguments are received perform data transformation
* collect transformed data
* send them to the client

In the world of servlets 3.0, asynchronous communication,
non-blocking operations few changes may be applied to improve communication:

* performing asynchronous non-blocking request
  (for example by usage of CompletableFuture and AsynchorousHttpInvoker)
* asynchronous non-blocking reception of a response (using the same approach as
  mentioned afore)

The applied changes improve performance and resource usage, however still some
parts are not touched at all like:

* collecting calling arguments before performing a request
* collecting incoming call parameters to receipt a request
* collecting full response before is sent back

It would be nice to have a possibility to send request parameters in parts -
so a response preparing process could start and
also send back a response in parts - so a calling client can start processing
the response. Such a process would resemble a transmission belt.

Google invented [such protocol](http://www.grpc.io/docs/) in order
to improve performance and resource usage. I got the link from my colleague.
GRPC seems to be a protocol allowing partial request response and starting
processing right away - something I need.

Next step - evaluation and see how easy and performant is GRPC.
