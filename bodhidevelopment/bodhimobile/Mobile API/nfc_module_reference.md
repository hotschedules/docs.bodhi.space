---
title: "NFC"
posted: 2014-01-30
post: true
---

# NFC Module Reference

## Overview

This module provides the ability to read and write NDEF messages to tags or share NDEF messages with peers.

## Tasks

  
  * `write` function
  * `share` function
  * `unshare` function
  * `erase` function
  * `addTagDiscoveredListener` function
  * `removeTagDiscoveredListener` function
  * `addNdefListener` function
  * `removeNdefListener` function
  * `addNdefFormatableListener` function  
  * `handover` function
  * `stopHandover` function
  * `nfc.ndef` event
  * `nfc.ndefformatable` event
  * `nfc.tagdiscovered` event
  
  
## Functions


### write

Writes an NDEF Message to a NFC tag.

#### Discussion

	nfc.write(message, errorCallback);

#### Arguments

* _errorCallback_optional

Error Callback. Called when function return error.

* _message_required

A NDEF Message is an array of one or more NDEF Records

#### Sample

    var message = [
        ndef.textRecord("hello, world"),
        ndef.uriRecord("http://www.google.com")
    ];

	nfc.write(message, errorCallback);

### share

Function writes an NdefMessage via peer-to-peer.  This should appear as an NFC tag to another device.

#### Discussion

	nfc.share(message, errorCallback);

#### Arguments

* _errorCallback_optional

Error Callback. Called when function return error.

* _message_required

A NDEF Message is an array of one or more NDEF Records

#### Sample

    var message = [
        ndef.textRecord("hello, world"),
        ndef.uriRecord("http://www.google.com")
    ];

	nfc.share(message, errorCallback);

### unshare

Stop sharing NDEF data via peer-to-peer.

#### Discussion

	nfc.share(message, errorCallback);

#### Arguments

* _errorCallback_optional

Error Callback. Called when function return error.


#### Sample

	nfc.unshare(errorCallback);
		

### erase

Erase a tag by writing an empty message.  Will format unformatted tags before writing.

#### Discussion

	nfc.erase(errorCallback);

#### Arguments

* _errorCallback_optional

Error Callback. Called when function return error.


#### Sample

	nfc.erase(errorCallback);


### handover

Send a file to another device via NFC handover. Function shares files to a NFC peer using handover. Files are sent by specifying a file:// or context:// URI or a list of URIs. The file transfer is initiated with NFC but the transfer is completed with over Bluetooth or WiFi which is handled by a NFC handover request. The Android code is responsible for building the handover NFC Message. Supported only on Android

#### Discussion

	nfc.handover(uris, errorCallback);

#### Arguments

* _errorCallback_optional

Error Callback. Called when function return error.

* _uris_required

A URI as a String, or an *array* of URIs.

#### Sample

	var uri = "content://media/external/image/media/15";
    nfc.handover(uri, errorCallback);


    var uris = [
        "content://media/external/image/media/15",
        "content://media/external/image/media/126",
        "content://media/external/image/media/345"
    ];
    nfc.handover(uris, errorCallback);

### stopHandover

Stop sharing NDEF data via NFC handover.

#### Discussion

	nfc.stopHandover(errorCallback);

#### Arguments

* _errorCallback_optional

Error Callback. Called when function return error.

### addNdefListener

Registers an event listener for any NDEF tag.

#### Discussion

	nfc.addNdefListener(callback);

#### Arguments

* _callback_required

The callback that is called when an NDEF tag is read.

### removeNdefListener

Removes the event listener for NDEF tags added via `nfc.addNdefListener`.

#### Discussion

	nfc.removeNdefListener(callback);

#### Arguments
	
* _callback_required

The callback that is called when the listener is successfully removed.

### addNdefFormatableListener

Registers an event listener for formatable NDEF tags.

#### Discussion

	nfc.addNdefFormatableListener(callback);

#### Arguments

* _callback_required

The callback that is called when NDEF formatable tag is read.



### addTagDiscoveredListener

Registers the callback for tag events.

This event occurs when any tag is detected by the phone.

#### Discussion

	nfc.addTagDiscoveredListener(callback);

#### Arguments

* _callback_required

The callback that is called when a tag is detected.

### removeTagDiscoveredListener

Removes the event listener added via `nfc.addTagDiscoveredListener`.

#### Discussion

	nfc.removeTagDiscoveredListener(callback);

#### Arguments

* _callback_required

The callback that is called when the listener is successfully removed.


## Events

### nfc.ndef

#### Discussion
A ndef event is fired when a NDEF tag is read.

### nfc.ndefformatable

#### Discussion
A ndef-formatable event occurs when a tag is read that can be NDEF formatted. This is not fired for tags that are already formatted as NDEF. The ndef-formatable event will not contain an NdefMessage.

### nfc.tagdiscovered

#### Discussion
Tagdiscovered event occurs when any tag is detected by the phone.

* * *

(C) 2014 Red Book Connect. All rights reserved. (Last updated: 2014-10-28)