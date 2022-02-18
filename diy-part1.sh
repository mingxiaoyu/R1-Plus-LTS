#!/bin/bash

# Add a feed source
sed -i '$a src-git lucicloudflarespeedtest https://github.com/mingxiaoyu/luci-app-cloudflarespeedtest' feeds.conf.default
