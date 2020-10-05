# speak

google tts based select to speak

# install

1. get dependencies
2. change path to gcp credentials in `speak.sh`
3. add keyboard shortcut

# dependencies

Install [google cloud sdk](https://cloud.google.com/sdk/docs/install)
and enable [tts api](https://cloud.google.com/text-to-speech)

`sudo apt install xsel jq mpg123 curl`

- xsel to get selected text
- jq to create json
- mpg123 to play mp3 audio
- curl to send request
