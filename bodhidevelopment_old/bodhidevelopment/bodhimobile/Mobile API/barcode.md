---
title: "Bar Code"
posted: 2014-01-30
post: true
---

# Bar Code Module Reference

## Overview

This module provides the ability to scanning barcodes.

## Tasks

  * `TYPES` constant
  * `scan` function

## Constants

### TYPES

#### Discussion

This enum contains variants of supported bar- or qr- codes.

  * _barcode.TYPES.QRCODE_

Will be recognized only QR codes.

  * _barcode.TYPES.BARCODE_

Will be recognized only Bar Codes.

## Functions

### scan

`barcode.scan( options, successCallback, errorCallback )`

#### Discussion

Recognize bar- or qr- codes.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _type_

See TYPES constants. Chooses supported codes. If not selected recorgnize all
supported codes.

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _code_ \- Recognized bar- or qr- code. (String)
    * _image_ \- Optional image with recognized bar- or qr- code. Working only on iOS. 
      * _data_ \- Image data in base64 format. (String)
      * _contentType_ \- Content Type of the data. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`barcode.scan( {"type":barcode.TYPES.QRCODE}, function(info) {  
    alert("QR Code recognized: "+info.code);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-13)

