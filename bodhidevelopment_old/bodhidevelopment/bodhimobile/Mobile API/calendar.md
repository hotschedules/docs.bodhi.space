---
title: "Calendar"
posted: 2014-01-30
post: true
---

# Calendar Module Reference

## Overview

This module provides the access to events in caledar. Developer can receive
calendars and events list, create and delete event items.

## Tasks

  * `calendarItem` object
  * `recurrenceRuleItem` object
  * `eventAlarmItem` object
  * `eventItem` object
  * `getCalendars` function
  * `getCalendarById` function
  * `getEvents` function
  * `getEventById` function
  * `create` function
  * `delete` function

## Objects

### calendarItem

#### Discussion

This object contains information about the calendar.

#### Keys

  * _id_required

A String value. A unique identifier for the calendar.

  * _title_required

A String value. The title of the calendar.

  * _type_optional

A String value. The type of the calendar. The value can be one of:

    * _local_

This calendar is sync'd from either Mobile Me or tethered.

    * _calDAV_

This calendar is from a CalDAV server.

    * _exchange_

This calendar comes from an Exchange server.

    * _subscription_

This is a locally subscribed calendar.

    * _birthday_

This is the built-in birthday calendar.

  * _allowsModifications_optional

A Boolean value. Represents whether developer can modify items in this
calendar.

### recurrenceRuleItem

#### Discussion

This object describes the recurrence pattern for a repeating event.

#### Keys

  * _frequency_required

A String value. The frequency of a recurrence. The value can be one of:

    * _daily_

Indicates a daily recurrence rule.

    * _weekly_

Indicates a weekly recurrence rule.

    * _monthly_

Indicates a monthly recurrence rule.

    * _yearly_

Indicates a yearly recurrence rule.

  * _interval_optional

An Integer value. Specifies how often the recurrence rule repeats over the
unit of time described by the _frequency_. Not available on android.

  * _daysOfTheWeek_optional

An Array of Strings. Valid for all _frequency_ types except _daily_. Not
available on android. The arrai item can be one of:

    * _mo_ \- Monday
    * _tu_ \- Tuesday
    * _we_ \- Wednesday
    * _th_ \- Thursday
    * _fr_ \- Friday
    * _sa_ \- Saturday
    * _su_ \- Sunday

  * _daysOfTheMonth_optional

An Array of Integers ([+/-] 1 to 31). Valid only for _monthly_ _frequency_.
Not available on android.

  * _monthsOfTheYear_optional

An Array of Integers (1 to 12). Valid only for _yearly_ _frequency_. Not
available on android.

  * _weeksOfTheYear_optional

An Array of Integers ([+/1] 1 to 53). Valid only for _yearly_ _frequency_. Not
available on android.

  * _daysOfTheYear_optional

An Array of Integers ([+/1] 1 to 366). Valid only for _yearly_ _frequency_.
Not available on android.

  * _endDate_optional

A Date value. Recurrence end with a specific end date.

  * _occurrenceCount_optional

An Interger value. Recurrence end with a maximum occurrence count. Not
available on android.

### eventAlarmItem

#### Discussion

This object represents alarms on an eventItem. An alarm can be relative (e.g.
15 mins before) or absolute (specific time).

#### Keys

  * _date_optional

A Date value. The date the alarm should fire. Not available on android.

  * _offset_optional

An Integer value. The offset from the event start that the alarm should fire.
In milliseconds.

### eventItem

#### Discussion

This object contains information about the calendar's event item.

#### Keys

  * _id_required

A String value. A unique identifier for the event.

  * _title_optional

A String value. The title for the event.

  * _location_optional

A String value. The location associated with the event.

  * _notes_optional

A String value. The notes associated with the event.

  * _url_optional

A String value. The URL for the event.

  * _alarm_optional

An eventAlarmItem object. The alarm associated with the event.

  * _calendarId_optional

A String value. The unique identifier for the calendar for the event.
Developer can receive calendar info with getCalendarById method.

  * _startDate_required

A Date value. The start date for the event.

  * _endDate_required

A Date value. The end date for the event.

  * _availability_optional

A String value. The event’s availability setting for scheduling purposes. The
value can be one of:

    * _notSupported_

Availability settings are not supported by the event’s calendar.

    * _busy_

The event has a busy availability setting.

    * _free_

The event has a free availability setting.

    * _tentative_

The event has a tentative availability setting.

    * _unavailable_

The event has an unavailable availability setting.

  * _status_optional

A String value. The event’s status. The value can be one of:

    * _none_

The event has no status.

    * _confirmed_

The event is confirmed.

    * _tentative_

The event is tentative.

    * _canceled_

The event is canceled.

  * _recurrenceRules_optional

Array of recurrenceRuleItem objects. The recurrence rules for the event.

## Functions

### getCalendars

`calendar.getCalendars( successCallback, errorCallback )`

#### Discussion

Returns a list of the calendars.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _calendars_ \- The list of calendarItem objects. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`calendar.getCalendars( function(info) {  
    alert("Calendars count: "+info.calendars.length);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getCalendarById

`calendar.getCalendarById( calendarId, successCallback, errorCallback )`

#### Discussion

Returns the calendar with specified id.

#### Arguments

  * _calendarId_required

A String value. The identifier of the calendar.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _calendars_ \- The list of calendarItem objects with one element. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`calendar.getCalendarById( "2e2b9f86-4a27-43d4-8f1e-c1566244bf3b",
function(info) {  
    alert("Found calendars count: "+info.calendars.length);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getEvents

`calendar.getEvents( options, successCallback, errorCallback )`

#### Discussion

Returns a list of events for specified range of dates.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _startDate_required

A Date value. The start date for the search range.

    * _endDate_required

A Date value. The end date for the search range.

    * _calendars_optional

An Array of Strings. The list with calendar's identifiers.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _events_ \- The list of eventItem objects. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`calendar.getEvents( {"startDate":aStartDate, "endDate":anEndDate },
function(info) {  
    alert("Found "+info.events.length+" events.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getEventById

`calendar.getEventById( eventId, successCallback, errorCallback )`

#### Discussion

Returns the event with specified id.

#### Arguments

  * _eventId_required

A String value. The identifier of the event.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _events_ \- The list of eventItem objects with one element. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`calendar.getEventById( "18ab2e21-333b-48d1-b010-6ade00639451", function(info)
{  
    alert("Found "+info.events.length+" events.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### create

`calendar.create( event, successCallback, errorCallback )`

#### Discussion

Adds new event to calendar.

#### Arguments

  * _event_required

eventItem object. Contains information about new event item.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _events_ \- The list of eventItem objects with one element. (Array of Object)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var event = {  
    title: "Test event",  
    location: "Test location",  
    notes: "Some notes",  
    url: "http://www.test.com",  
    alarm: {  
        offset: -600000}, // 10 minutes  
    startDate: aStartDate,  
    endDate: anEndDate,  
    recurrenceRules: [{  
        frequency: "weekly",  
        interval: 1,  
        daysOfTheWeek: ["mo","we","fr"]}]};  
calendar.create( event, function(info) {  
    alert("Event added with id: "+info.events[0].id);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### delete

`calendar.delete( event, successCallback, errorCallback )`

#### Discussion

Deletes exist event item from calendar.

#### Arguments

  * _event_required

eventItem object. Contains information for the event. Must contain id. Other
fields ignored.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always **null**

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var event = { id: "18ab2e21-333b-48d1-b010-6ade00639451" };  
calendar.delete( event, function(info) {  
    alert("Event removed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-20)

