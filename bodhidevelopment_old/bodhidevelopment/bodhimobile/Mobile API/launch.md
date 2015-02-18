---
title: "Launch"
posted: 2014-01-30
post: true
---

# Launch Module Reference

## Overview

This module provides support for opening url in external browser and opening
external map application with specific location coordinates or addresses.

## Tasks

  * `browser` function
  * `map` function

## Functions

### browser

`launch.browser( options, errorCallback )`

#### Discussion

Opens links in external browser.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _url_

A String value. The key must contains URL.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`launch.browser( {url:"http://www.google.com"},  
function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### map

`launch.map( options, errorCallback )`

#### Discussion

Opens external map application with specific location coordinates or
addresses.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _address_

A String value. The key can contains address.

    * _coordinates_

An Object value. The key can contains location coordinates.

Object must contains 2 properties:

      * _latitude_ \- latitude. (Float)
      * _longitude_ \- longitude. (Float)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`launch.map( {address:"1 Infinite Loop Cupertino"},  
function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-08-20)

