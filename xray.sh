#!/bin/sh
if [ ! -f UUID ]; then
  UUID="01014a38-b94a-48e6-841d-481fe483f23d"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

