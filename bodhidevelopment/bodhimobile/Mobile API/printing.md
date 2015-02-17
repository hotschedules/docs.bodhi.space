---
title: "Printing"
posted: 2014-01-30
post: true
---

# Printing Module Reference

## Overview

This module provides the support for documents printing. Currently working
only on iOS with printers which support **AirPrint** technology.

## Tasks

  * `OutputType` constant
  * `Orientation` constant
  * `Duplex` constant
  * `supported` property
  * `getSupportedContentTypes` function
  * `print` function

## Constants

### OutputType

#### Discussion

The output type, which is an indication of the type of content the application
is drawing or providing.

  * _printing.OutputType.GENERAL_

Specifies that the printed content consists of mixed text, graphics, and
images.

  * _printing.OutputType.PHOTO_

Specifies that the printed content consists of black-and-white or color
images.

  * _printing.OutputType.GRAYSCALE_

Specifies that the printed content is grayscale. Set the output type to this
value when your printable content contains no color—for example, it’s black
text only.

### Orientation

#### Discussion

The orientation of printing on a page.

  * _printing.Orientation.PORTRAIT_

Pages are printed in portrait orientation.

  * _printing.Orientation.LANDSCAPE_

Pages are printed in landscape orientation.

### Duplex

#### Discussion

The duplex mode of a selected printer.

  * _printing.Duplex.NONE_

No double-sided (duplex) printing; single-sided printing only.

  * _printing.Duplex.LONG_EDGE_

Duplex printing that flips the back page along the long edge of the paper.

  * _printing.Duplex.SHORT_EDGE_

Duplex print that flips the back page along the short edge of the paper.

## Properties

### supported

#### Discussion

Returns whether the device supports printing.

#### Sample

`var supported = printing.supported;`  

## Functions

### getSupportedContentTypes

`printing.getSupportedContentTypes( successCallback, errorCallback )`

#### Discussion

Returns the list of supported document's content types for printing.

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _contentTypes_ \- The list of supported document's content types. (Array of Strings)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`printing.getSupportedContentTypes( function(info) {  
    alert("Supported content types: "+info.contentTypes);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### print

`printing.print( options, successCallback, errorCallback )`

#### Discussion

Prints selected document.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _key_

A String value. Chooses document from [App Storage](appStorage.html) with key

    * _outputType_

See OutputType constants. Chooses output type. By default this property is
**printing.OutputType.GENERAL**

    * _orientation_

See Orientation constants. Chooses orientation of printing on a page. By
default this property is **printing.Orientation.PORTRAIT**

    * _duplex_

See Duplex constants. Chooses the duplex mode of a selected printer. By
default this property is **printing.Duplex.LONG_EDGE**

    * _showsPageRange_

A Boolean value. Prints the page number or not. By default this property is
**false**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    key: "document_key",  
    outputType: printing.OutputType.GENERAL,  
    orientation: printing.Orientation.PORTRAIT,  
    duplex: printing.Duplex.LONG_EDGE,  
    showsPageRange: false};  
printing.print( options, function(info) {  
    alert("Document printed.");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-13)

