#!/bin/zsh
cd output/objc/client/
autoload -U zmv 
zmv 'SWG(*)' "SWG$1\$1"
sed -i '' -- "s/SWG/SWG$1/g" *
