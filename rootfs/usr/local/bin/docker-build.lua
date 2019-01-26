#!/usr/bin/lua
local core = require("docker-core")

local function main()
  -- core.run("apk add --no-cache lua-rex-pcre")
  core.run("apk add --no-cache $(apk search --no-cache -xq ruby* | grep -Ev '(-full|-pygments|-dev|-doc)$')")
  core.run("rm -rf /usr/lib/ruby/gems/*/cache/*.gem")
end

main()
