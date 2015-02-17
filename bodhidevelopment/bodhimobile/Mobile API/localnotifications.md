---
title: "Local Notifications"
posted: 2014-01-30
post: true
---

# Local Notifications Module Reference

## Overview

This module used for showing scheduled notification for user when the
application is in background.  
For example developer can schedule notification about meeting or birthday.  
Different platforms used different methods for it:

  * **On iOS** used local notifications
  * **On Android** used notifications
  * **On Windows Phone** used toasts

## Tasks

  * `notification` object
  * `add` function
  * `cancel` function
  * `cancelAll` function
  * `getScheduled` function
  * `isScheduled` function
  * `received` function
  * `localnotifications.received` event

## Objects

### notification

#### Discussion

This Object contains information about notification. It is simple Object value
with predefined keys.

#### Keys

  * _id_required

The property with a String value. The identifier of notification.

  * _title_required

The property with a String value. The title of notification.

  * _message_optional

The property with a String value. The message of notification.

  * _badge_optional

The property with a Number value. This value will be displayed on application
icon when notification will be shown.

  * _fireDate_required

The property with a Date value. The date when notification will be shown.

  * _repeat_optional

The property with a String value. Repeat interval. The value can be one of:
secondly, minutely, hourly, daily, weekly, monthly, yearly

  * _otherInfo_optional

The property with a Object value. Developer defined data.

#### Sample

`var notification = {id: "1",  
        title: "Birthday",  
        message: "Today's Birthdays Alexey",  
        badge: 1,  
        fireDate: new Date(2014, 7, 25),  
        repeat: "yearly",  
        otherInfo: null};`  

## Functions

### add

`notifications.local.add( notification, successCallback, errorCallback )`

#### Discussion

Schedule new notification. If notification with id already exist it will be
rewritten.

#### Arguments

  * _notification_required

The parameter with information about new notification. See notification for
more info.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.local.add( newNotification, function () {  
    alert("Notification scheduled");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### cancel

`notifications.local.cancel( notification, successCallback, errorCallback )`

#### Discussion

Cancel scheduled notification.

#### Arguments

  * _notification_required

The parameter with information about new notification. See notification for
more info but really used only _id_ key.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.local.cancel( existNotification, function () {  
    alert("Notification cancelled");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### cancelAll

`notifications.local.cancelAll( successCallback, errorCallback )`

#### Discussion

Cancel all scheduled notifications.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.local.cancelAll( function () {  
    alert("All notifications cancelled");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### getScheduled

`notifications.local.getScheduled( successCallback, errorCallback )`

#### Discussion

Return all scheduled notifications.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _notifications_ \- The Array with notification objects

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.local.getScheduled( function (info) {  
    var text = "";  
    for (var i = 0; i < info.notifications.length; i++) {  
        text += " " \+ info.notifications[i].id;  
    }  
    alert("All notifications:"+text);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### isScheduled

`notifications.local.isScheduled(notification, successCallback, errorCallback
)`

#### Discussion

Test scheduled notification.

#### Arguments

  * _notification_required

The parameter with information about new notification. See notification for
more info but really used only _id_ key.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object and can contains keys:

    * _notification_ \- The notification object which function received as parameter.
    * _isScheduled_ \- The Boolean object. _true_ is scheduled instead _false_

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`notifications.local.isScheduled( existNotification, function (info) {  
    if (info.isScheduled)  
        alert("Notification Scheduled");  
    else  
        alert("Notification doesn't Scheduled");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### received

`notifications.local.received( callback )`

#### Discussion

Register _callback_ as observer for localnotifications.received event.

#### Arguments

  * _callback_required

Callback which execute when application oppened by notification.

#### Return Value

  * _this_

#### Sample

`notifications.local.received( function(info) {  
    alert("Notification recevied: " \+ info.notification.id);  
});`  

## Events

### localnotifications.received

#### Discussion

Event received when application oppened by notification

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-05)

