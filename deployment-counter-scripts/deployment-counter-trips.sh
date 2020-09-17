#!/bin/bash

az login --service-principal -u 9ea79052-60d0-4f6b-b489-49a1f06c6d3d -p ZSZfunP-jWVskbpB~6Bp~6-x8zuN3Qj.7b --tenant 198bf91c-2b6e-44df-962f-5a7a134effe5 >> /dev/null

BLUE_STATUS=`az webapp config container show --name openhack62d3tcj1trips --resource-group openhack62d3tcj1rg --query '[*].value | [3]' | cut -d':' -f2- | sed s/.$//`
echo "Prod tag value: $BLUE_STATUS"

GREEN_STATUS=`az webapp config container show --name openhack62d3tcj1trips --slot staging --resource-group openhack62d3tcj1rg --query '[*].value | [3]' | cut -d':' -f2- | sed s/.$//`
echo "Staging tag value: $GREEN_STATUS"
