## Call OPA endpoint from Envoy's Lua `httpCall()` API

```
$ docker-compose up -d
$ ./feed-opa.sh
$ docker-compose logs envoy | tail -1
envoy_1       | [2020-07-25 08:21:58.550][21][info][lua] [source/extensions/filters/http/lua/lua_filter.cc:705] script log: {"decision_id":"3664a035-7b76-42b7-b579-56bdec716a30","result":{"allow":false,"subordinates":{"alice":[],"betty":["charlie"],"bob":["alice"],"charlie":[]}}}
```
