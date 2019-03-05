#!/bin/bash

old_domain="Peatio Exchange" 
new_domain="AlcheEngineTest"

files=(
"app/peatio/config/locales/server.en.yml"
"app/peatio/config/templates/application.yml.erb"
"app/trading-ui/app/assets/javascripts/component_data/global.js.coffee"
"app/trading-ui/config/locales/server.en.yml"
"app/trading-ui/config/templates/application.yml.erb"
)

for file in ${files[@]}; do
    sed -i "s/${old_domain}/${new_domain}/g" ${file}
done
