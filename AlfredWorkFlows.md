# Alfred Workflow



## Integration with other APPs

1. AppCleaner - https://github.com/aiyodk/Alfred-Extensions/raw/master/AlfredApp_2.x/AppCleaner/AppCleaner.alfredworkflow

```
uninstall ${app name}
```

2. Tunnelblick Toggle - http://www.packal.org/workflow/tunnelblick-toggle

```
vpn ${vpn config name}
```

3. VPN Manager (Tunnelblick/Velocity) - https://github.com/deanishe/alfred-vpn-manager


4. Dash - just enable Alfred integration in Dash app preferences. https://www.alfredapp.com/blog/productivity/dash-quicker-api-documentation-search/

5. OmniFocus - https://github.com/rhydlewis/search-omnifocus

6. JetBrains - https://github.com/bchatard/alfred-jetbrains

(*Need to install via npm*)

7. Lastpass - https://github.com/bachya/lp-vault-manager



## Integration with websites

1. GitHub - https://github.com/gharlan/alfred-github-workflow

```
# basic
gh ${repo name}
```

2. Stackoverflow - https://github.com/deanishe/alfred-stackoverflow

```
.so {issue description}
```

3. Google Translate - https://github.com/DONSA/alfred-google-translate

```
gt zh-tw>en 薯條
gt en>zh-tw fried fries
```

4. MDN - http://www.packal.org/workflow/mdn-search

```
mdn {query}
```

5. AWS Console - http://www.packal.org/workflow/aws-console-services

```
aws EC2
```

6. Google Apps - http://www.packal.org/workflow/google-apps

```
drive
gmail
```

## Others

1. Emoji codes - https://github.com/carlosgaldino/alfred-emoji-workflow

```
emoji {alt} {query}
```

2. Hash - https://github.com/BigLuck/alfred2-hash

```
md5 <string>
sha1 <string>
sha256 <string>
sha512 <string>
htpasswd <string>
crc32 <string>
whirlpool <string>
base64_decode <string>
base64_encode <string>
```

3. HTTP Status - https://github.com/Dreamseer/alfred-http

```
http {description}
http {status code}
```

4. Swift Window Switcher - https://github.com/mandrigin/AlfredSwitchWindows

```
w {window description}
```

5. Timestamp - http://www.packal.org/workflow/timestamp

```
ts 1363975708
# Returns "2013-03-22 02:08:28"

ts tomorrow
ts 1 year ago
ts next thursday 
# Returns timestamp for the given day at 12 am
```

6. IP - http://dferg.us/ip-address-workflow/

```
ip
# shows local ip and external ip
```

7. Process killer - https://github.com/ngreenstein/alfred-process-killer

```
kill {process name}
```

8. Calendar - http://www.packal.org/workflow/calendar

(*Need to update python*)

9. Devdocs - https://github.com/yannickglt/alfred-devdocs

Dash alternative, but I think it is not fast as Dash

## Fun

1. Alphy - https://github.com/maximepeschard/alphy

(*Need to update python*)

google gif for you

2. Alfred-Fixum - https://github.com/deanishe/alfred-fixum

Help to update the out-dated alfred workflows (like `Alphy`, and `Calendar`)