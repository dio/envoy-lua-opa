## Call OPA endpoint from Envoy's Lua `httpCall()` API

Client calls envoy, will be intercepted by Lua Filter, in which calls OAP service, then the request
is forwarded to google.com.

```
client -> envoy -- via httpCall() --> opa
                \-- google.com
```

```
$ docker-compose up -d
$ ./feed-opa.sh

  ... response from google.com ...

$ docker-compose logs envoy | tail -1
envoy_1       | [2020-07-25 08:21:58.550][21][info][lua] [source/extensions/filters/http/lua/lua_filter.cc:705] script log: {"decision_id":"3664a035-7b76-42b7-b579-56bdec716a30","result":{"allow":false,"subordinates":{"alice":[],"betty":["charlie"],"bob":["alice"],"charlie":[]}}}
```
