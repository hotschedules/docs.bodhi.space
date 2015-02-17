@echo off

call bodhi-types create MyResource
call bodhi-types set-prop MyResource -r -S name
call bodhi-types set-prop MyResource    -I age
call bodhi-types set-prop MyResource    -B active
call bodhi-types push MyResource
call bodhi-types gen-instance MyResource > resource.json

call bodhi delete resources/MyResource
call bodhi post   resources/MyResource --file alice.json
call bodhi post   resources/MyResource --file bob.json
call bodhi post   resources/MyResource --file carl.json

echo Setup Complete

