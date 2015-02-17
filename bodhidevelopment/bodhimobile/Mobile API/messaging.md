---
title: "Messaging"
posted: 2014-01-30
post: true
---

# Messaging Module Reference

## Overview

This module provides the ability to send email and sms messages with
attachments (If device supported its) from [App Storage](appStorage.html).

## Tasks

  * `supportAttachments` function
  * `sms` function
  * `email` function

## Functions

### supportAttachments

`messaging.supportAttachments( successCallback, errorCallback )`

#### Discussion

The method returns information about whether attachments are supported in SMS
and email.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains keys:

    * _sms_ \- True if application support attachments for SMS (or iMessage). (Boolean)
    * _email_ \- True if application support attachments for Email. (Boolean)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`messaging.supportAttachments( function(info) {  
    if (info.sms && info.email) {  
        alert("SMS and Email attachments supported");  
    } else if (info.sms) {  
        alert("SMS attachments supported");  
    } else if (info.email) {  
        alert("Email attachments supported");  
    } else {  
        alert("Attachments doesn't supported");  
    }  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### sms

`messaging.sms( options, successCallback, errorCallback )`

#### Discussion

The method opens a new sms composer window with predefined values.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _to_

An Array of Strings. The key can contains the list of recipients.

    * _body_

A String value. The key can contains SMS message text.

    * _attachments_

An Array of Strings. The key can contains the list of keys from [App
Storage](appStorage.html) which will be added as attachments.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`messaging.sms( {to:["+1111111"], body:"Message Text",
attachments:["image_key"]}  
function(info) {  
    alert("SMS sent successfully.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### email

`messaging.email( options, successCallback, errorCallback )`

#### Discussion

The method opens a new email composer window with predefined values.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _to_

An Array of Strings. The key can contains the list of recipients.

    * _cc_

An Array of Strings. The key can contains the list of secondary (carbon copy)
recipients.

    * _bcc_

An Array of Strings. The key can contains the list of hidden secondary (blind
carbon copy) recipients.

    * _subject_

A String value. The key can contains Email subject.

    * _body_

A String value. The key can contains Email message text.

    * _attachments_

An Array of Strings. The key can contains the list of keys from [App
Storage](appStorage.html) which will be added as attachments.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`messaging.email( {to:["test@test.com"], subject:"Test Email", body:"Email
Message Text", attachments:["image_key"]}  
function(info) {  
    alert("Email sent successfully.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-12)

