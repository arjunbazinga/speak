#!/bin/bash

# find a better way to kill last command
killall mpg123


# adding gcloud to path
source /home/rjn/Documents/experiments/google-cloud-sdk/env.sh

export GOOGLE_APPLICATION_CREDENTIALS="/home/rjn/Documents/Michael_Burry/config/secrets/Michael Burry -c4c263169f45.json"


xclip -out -selection primary | xclip -in -selection clipboard
xsel --clipboard | tr "\n" " " > file.txt

jq -n --rawfile text file.txt '{
  "input":{
    $text
  },
  "voice": {
    "languageCode": "en-US",
    "name": "en-US-Wavenet-F"
  },
  "audioConfig":{
    "audioEncoding":"MP3"
  }
}'| curl -X POST \
-H "Authorization: Bearer "$(gcloud auth application-default print-access-token) \
-H "Content-Type: application/json; charset=utf-8" \
-d@- \
https://texttospeech.googleapis.com/v1/text:synthesize | jq ".audioContent" -r|  base64 --decode | mpg123 -