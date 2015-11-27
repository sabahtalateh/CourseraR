library(httr)

myapp = oauth_app("twitter", key = "At294ZDQtf7rHEyRaRujNs2As", secret = "vLenZ6aF1VT74D6Whe05r0RW8HlExncK0a8ch7Yq2as3txb0n2")
sig = sign_oauth1.0(myapp, token = "2166106308-J49TpST2nwFnMOxeDLYbpr8isGKLiKW4GdaS6N8", token_secret = "v4MobSFDksJXLuj2tuYpm2pquudM0fkatzgMGU3fCw0Uv")
homeTL = GET("https://api.twitter.com/1.1/statuses/home_timeline.json", sig)
print(homeTL)

json1 = content(homeTL)
json2 = jsonlite::fromJSON(jsonlite::toJSON(json1))
print(json2[1])

