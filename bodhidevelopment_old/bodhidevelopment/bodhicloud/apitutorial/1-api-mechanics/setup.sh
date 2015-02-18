#!/bin/bash

home=`pwd`

bodhi-types create MyResource
bodhi-types set-prop MyResource -r -S name
bodhi-types set-prop MyResource    -I age
bodhi-types set-prop MyResource    -B active
bodhi-types push MyResource
bodhi-types gen-instance MyResource > resource.json

bodhi delete resources/MyResource
bodhi post   resources/MyResource --file $home/alice.json
bodhi post   resources/MyResource --file $home/bob.json
bodhi post   resources/MyResource --file $home/carl.json

echo 'Setup Complete'

