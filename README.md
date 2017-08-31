# Bitdoi - บิทดอย

Get latest prices and send a notification  to your [LINE](https://line.me/th/) account/group by [IFTTT webhook service](https://ifttt.com/maker_webhooks).

You can deploy this to any web service with CRON job to get routine notifications.

> มาดอยกันเถอะ~

# Installation

You need Ruby `2.4.1` with `bundler`

To install bundler run

```
gem install bundler
```

Then clone this project and run

```
bundle install
```
You need to put an `application.yml` file into your config file with your `SECRET_KEY` from IFTTT.

```
# application.yml

SECRET_KEY: "xxxxx"

# Or just put it in the code like so
# fetch_coins_data.rb
...
...
target_uri = URI("https://maker.ifttt.com/trigger/CRYPTO_SHIT/with/key/[xxxxxx])
...
```

Feel free to post any issue or submit a PR. Thanks!

## Enjoy the **DOI**.
