---
title: "Kernel Events"
posted: 2014-01-30
post: true
---
# Kernel Events Reference

## Overview

The Kernel support handling events from native application.  
Developer can [add](//api/name/addEventListener) or
[remove](//api/name/removeEventListener) listener callbacks for the event.  
Events usually used module_name.module_event scheme for naming.

## Tasks

  * `addEventListener` function
  * `removeEventListener` function

## Functions

### addEventListener

`events.addEventListener( eventName, callback )`

#### Discussion

Register _callback_ for _eventName_

#### Arguments

  * _eventName_required

Event name. Usually used scheme module_name.module_event. For example
device.pause

  * _callback_required

Callback. Function which will be called when kernel receive event from
application.

#### Return Value

  * _this_

#### Sample

`events.addEventListener("module_name.module_event", function (eventInfo) {  
    alert("Received event with info: " \+ eventInfo);  
});`  

### removeEventListener

`events.removeEventListener( eventName, callback )`

#### Discussion

Unregister _callback_ for _eventName_

#### Arguments

  * _eventName_required

Event name. Usually used scheme module_name.module_event. For example
device.pause

  * _callback_optional

Callback. Function which will be called when kernel receive event from
application.  
If not selected or _null_ will be removed all callbacks for specified event

#### Return Value

  * _this_

#### Sample

`events.removeEventListener("module_name.module_event");`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-03)

