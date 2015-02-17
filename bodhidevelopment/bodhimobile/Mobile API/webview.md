---
title: "Web View"
posted: 2014-01-30
post: true
---


# Web View Module Reference

## Overview

This module contains methods for working with webview screens.

## Tasks

  * `present` function
  * `dismiss` function
  * `open` function
  * `close` function

## Functions

### present

`webview.present( url )`

#### Discussion

Shows new screen with webview over currently visible.  
Current screen in this case continues working.

Opened page must contains functionality for closing using dismiss method
because iOS don't have hardware back button.

#### Arguments

  * _url_required

A String Value. Url of page which will be opened.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`webview.present( "http://www.google.com" );`  

### dismiss

`webview.dismiss( )`

#### Discussion

Closes current page if it was opened with present method or from local
notification about iBeacons.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`webview.dismiss( );`  

### open

`webview.open( url )`

#### Discussion

Push new screen with webview after currently visible.

Opened page must contains functionality for closing using close method because
iOS don't have hardware back button.

#### Arguments

  * _url_required

A String Value. Url of page which will be opened.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`webview.open( "http://www.google.com" );`  

### close

`webview.close( )`

#### Discussion

Closes current page if it was opened with open method.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`webview.close( );`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-20)

