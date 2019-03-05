#!/bin/bash

old_domain="alchebit.com" 
new_domain="alchetest.com"

files=(
"compose/proxy.yaml"
"compose/backend.yaml"
"compose/app.yaml"
"config/trading-ui.env"
"compose/cryptonodes.yaml"
"config/integration/fixtures/barong.json"
"config/integration/fixtures/peatio.json"
"config/peatio.env"
"config/barong.env"
"config/peatio.env.erb"
"config/barong.env.erb"
".circleci/config.yml"
"config/barong/seeds.yml"
"config/toolbox.yaml"
"config/toolbox.yaml.erb"
"config/acme.json"
)

for file in ${files[@]}; do
    sed -i "s/${old_domain}/${new_domain}/g" ${file}
done
