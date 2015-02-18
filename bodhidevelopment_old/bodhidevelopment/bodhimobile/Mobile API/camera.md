---
title: "Camera"
posted: 2014-01-30
post: true
---

# Camera Module Reference

## Overview

This module provides the ability to taking photos and videos from camera and
getting its from photo album.

Developer can receive photo's data directly to html in base64 format and can
save photo and video file to [App Storage](appStorage.html).

## Tasks

  * `DestinationType` constant
  * `EncodingType` constant
  * `MediaType` constant
  * `PictureSourceType` constant
  * `Direction` constant
  * `getMedia` function
  * `takeMedia` function
  * `chooseMedia` function
  * `recordVideo` function
  * `chooseVideo` function
  * `capturePhoto` function
  * `choosePhoto` function
  * `cleanup` function

## Constants

### DestinationType

#### Discussion

This enum contains all variants of saving media content.

  * _camera.DestinationType.DATA_URL_

With this destination type methods will return photos directly to html in
base64 encoding.

This type supported only for photos. Videos is too large for it.

  * _camera.DestinationType.APP_STORAGE_

With this destination type methods will save photos or video to [App
Storage](appStorage.html).

### EncodingType

#### Discussion

This enum contains variants of photos file's encoding. Used only for image
content.

  * _camera.EncodingType.JPEG_

Photo will encoded in jpeg format.

  * _camera.EncodingType.PNG_

Photo will encoded in png format.

### MediaType

#### Discussion

This enum contains variants of media to select from.

  * _camera.MediaType.PICTURE_

Allows selection of still pictures only.

  * _camera.MediaType.VIDEO_

Allows selection of video only.

  * _camera.MediaType.ALLMEDIA_

Allows selection from all media types.

### PictureSourceType

#### Discussion

This enum contains variants of sources.

  * _camera.PictureSourceType.PHOTOLIBRARY_

Chooses media from photo library.

  * _camera.PictureSourceType.CAMERA_

Takes media from camera.

  * _camera.PictureSourceType.SAVEDPHOTOALBUM_

Chooses media from saved photo album.

### Direction

#### Discussion

Chooses the camera to use (front- or back-facing).

  * _camera.Direction.BACK_

Chooses back camera to use.

  * _camera.Direction.FRONT_

Chooses front camera to use.

## Functions

### getMedia

`camera.getMedia( options, successCallback, errorCallback )`

#### Discussion

The method allows taking or choosing all types of media.

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _destinationType_

See DestinationType constants. Chooses destination for saving media. By
default this property is **camera.DestinationType.APP_STORAGE**

    * _sourceType_

See PictureSourceType constants. Chooses media source. By default this
property is **camera.PictureSourceType.CAMERA**

    * _encodingType_

See EncodingType constants. Chooses photos file's encoding. Used only for
image content. By default this property is **camera.EncodingType.JPEG**

    * _mediaType_

See MediaType constants. Chooses supported type of media. By default this
property is **camera.MediaType.PICTURE**

    * _cameraDirection_

See Direction constants. Chooses the camera to use. By default this property
is **camera.Direction.BACK**

    * _quality_

An Interger value. The value range is 0-100. Chooses quality for jpeg. By
default this property is **50**.

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    quality: 50,  
    destinationType: camera.DestinationType.APP_STORAGE,  
    sourceType: camera.PictureSourceType.CAMERA,  
    encodingType: camera.EncodingType.JPEG,  
    mediaType: camera.MediaType.PICTURE,  
    allowEdit: true,  
    saveToPhotoAlbum: true,  
    cameraDirection: camera.Direction.BACK};  
camera.getMedia( options, function(info) {  
    alert("Image saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### takeMedia

`camera.takeMedia( options, successCallback, errorCallback )`

#### Discussion

The method allows taking all types of media. It use
[getMedia](//api/name/getMedia) method with predefined options.sourceType =
**camera.PictureSourceType.CAMERA**

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _destinationType_

See DestinationType constants. Chooses destination for saving media. By
default this property is **camera.DestinationType.APP_STORAGE**

    * _encodingType_

See EncodingType constants. Chooses photos file's encoding. Used only for
image content. By default this property is **camera.EncodingType.JPEG**

    * _mediaType_

See MediaType constants. Chooses supported type of media. By default this
property is **camera.MediaType.PICTURE**

    * _cameraDirection_

See Direction constants. Chooses the camera to use. By default this property
is **camera.Direction.BACK**

    * _quality_

An Interger value. The value range is 0-100. Chooses quality for jpeg. By
default this property is **50**.

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    quality: 50,  
    destinationType: camera.DestinationType.APP_STORAGE,  
    encodingType: camera.EncodingType.JPEG,  
    mediaType: camera.MediaType.PICTURE,  
    allowEdit: true,  
    saveToPhotoAlbum: true,  
    cameraDirection: camera.Direction.BACK};  
camera.takeMedia( options, function(info) {  
    alert("Image saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### chooseMedia

`camera.chooseMedia( options, successCallback, errorCallback )`

#### Discussion

The method allows choosing all types of media. It use
[getMedia](//api/name/getMedia) method with predefined options.sourceType =
**camera.PictureSourceType.PHOTOLIBRARY**

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _destinationType_

See DestinationType constants. Chooses destination for saving media. By
default this property is **camera.DestinationType.APP_STORAGE**

    * _encodingType_

See EncodingType constants. Chooses photos file's encoding. Used only for
image content. By default this property is **camera.EncodingType.JPEG**

    * _mediaType_

See MediaType constants. Chooses supported type of media. By default this
property is **camera.MediaType.PICTURE**

    * _quality_

An Interger value. The value range is 0-100. Chooses quality for jpeg. By
default this property is **50**.

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    quality: 50,  
    destinationType: camera.DestinationType.APP_STORAGE,  
    encodingType: camera.EncodingType.JPEG,  
    mediaType: camera.MediaType.PICTURE,  
    allowEdit: true,  
    saveToPhotoAlbum: true,  
    cameraDirection: camera.Direction.BACK};  
camera.chooseMedia( options, function(info) {  
    alert("Image saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### recordVideo

`camera.recordVideo( options, successCallback, errorCallback )`

#### Discussion

The method allows recording video from camera. It use
[takeMedia](//api/name/takeMedia) method with predefined options.mediaType =
**camera.MediaType.VIDEO**

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _cameraDirection_

See Direction constants. Chooses the camera to use. By default this property
is **camera.Direction.BACK**

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    destinationType: camera.DestinationType.APP_STORAGE,  
    allowEdit: true,  
    saveToPhotoAlbum: true,  
    cameraDirection: camera.Direction.BACK};  
camera.recordVideo( options, function(info) {  
    alert("Video saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### chooseVideo

`camera.chooseVideo( options, successCallback, errorCallback )`

#### Discussion

The method allows choosing video from photo library. It use
[chooseMedia](//api/name/chooseMedia) method with predefined options.mediaType
= **camera.MediaType.VIDEO**

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    destinationType: camera.DestinationType.APP_STORAGE,  
    allowEdit: true,  
    saveToPhotoAlbum: true};  
camera.chooseVideo( options, function(info) {  
    alert("Video saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### capturePhoto

`camera.capturePhoto( options, successCallback, errorCallback )`

#### Discussion

The method allows capturing photo from camera. It use
[takeMedia](//api/name/takeMedia) method with predefined options.mediaType =
**camera.MediaType.PICTURE**

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _destinationType_

See DestinationType constants. Chooses destination for saving media. By
default this property is **camera.DestinationType.APP_STORAGE**

    * _encodingType_

See EncodingType constants. Chooses photos file's encoding. Used only for
image content. By default this property is **camera.EncodingType.JPEG**

    * _cameraDirection_

See Direction constants. Chooses the camera to use. By default this property
is **camera.Direction.BACK**

    * _quality_

An Interger value. The value range is 0-100. Chooses quality for jpeg. By
default this property is **50**.

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    quality: 50,  
    destinationType: camera.DestinationType.APP_STORAGE,  
    encodingType: camera.EncodingType.JPEG,  
    allowEdit: true,  
    saveToPhotoAlbum: true,  
    cameraDirection: camera.Direction.BACK};  
camera.capturePhoto( options, function(info) {  
    alert("Image saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### choosePhoto

`camera.choosePhoto( options, successCallback, errorCallback )`

#### Discussion

The method allows choosing photo from photo library. It use
[chooseMedia](//api/name/chooseMedia) method with predefined options.mediaType
= **camera.MediaType.PICTURE**

#### Arguments

  * _options_required

Object with key-value. Supported keys:

    * _destinationType_

See DestinationType constants. Chooses destination for saving media. By
default this property is **camera.DestinationType.APP_STORAGE**

    * _encodingType_

See EncodingType constants. Chooses photos file's encoding. Used only for
image content. By default this property is **camera.EncodingType.JPEG**

    * _quality_

An Interger value. The value range is 0-100. Chooses quality for jpeg. By
default this property is **50**.

    * _allowEdit_

A Boolean value. Allows editing media after taking or choosing. By default
this property is **true**

    * _saveToPhotoAlbum_

A Boolean value. Save media to photo album after taking it. By default this
property is **true**

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is object which contains:

    * _data_ \- Data in base64 returned if destinationType is equal to **camera.DestinationType.DATA_URL**. (String)
    * _contentType_ \- Content Type of the data. (String)
    * _key_ \- The key in [App Storage](appStorage.html) which was saved for media. (String)

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`var options = {  
    quality: 50,  
    destinationType: camera.DestinationType.APP_STORAGE,  
    encodingType: camera.EncodingType.JPEG,  
    allowEdit: true,  
    saveToPhotoAlbum: true};  
camera.choosePhoto( options, function(info) {  
    alert("Image saved for key: "+info.key);  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

### cleanup

`camera.cleanup( successCallback, errorCallback )`

#### Discussion

Cleanup all records with media from [Camera](camera.html) in [App
Storage](appStorage.html)

#### Arguments

  * _succesCallback_optional

Success callback. Called when function finished without errors

Callback parameter is always null.

  * _errorCallback_optional

Error Callback. Called when function return error.

#### Return Value

  * _[RBCPromise](kernel_promise.html) object_

#### Sample

`camera.cleanup( function(info) {  
    alert("All media was deleted");  
}, function (error) {  
    alert("code: " \+ error.code + "\nmessage: " \+ error.message);  
});`  

  * [Index](../index.html)

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-06-13)

