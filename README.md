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
You need to put an `.env` file into your root directory with your `SECRET_KEY` from IFTTT.

```
# .env

SECRET_KEY=xxxxx
```

Then use it by
```
ruby fetch_coins_data.rb
```

Feel free to post any issue or submit a PR. Thanks!

## Enjoy the **DOI**
