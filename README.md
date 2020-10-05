# ![](./megaphone.svg) speak

Select any text and have it read out loud, uses google wavenet api for good quality audio.

# install

1. clone repo
1. get dependencies
1. change path to gcp credentials in `speak.sh`
1. add keyboard shortcut

# dependencies

Install [google cloud sdk](https://cloud.google.com/sdk/docs/install)
and enable [tts api](https://cloud.google.com/text-to-speech)

`sudo apt install xsel jq mpg123 curl`

- xsel to get selected text
- jq to create json
- mpg123 to play mp3 audio
- curl to send request
