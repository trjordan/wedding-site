#!/bin/bash

cp index.html directions/index.html
sed -i '' 's/" data-location="home"/ alt" data-location="home"/g' directions/index.html
sed -i '' 's/ alt" data-location="directions"/" data-location="directions"/g' directions/index.html
sed -i '' 's|js/|../js/|g' directions/index.html
sed -i '' 's|img/|../img/|g' directions/index.html
sed -i '' 's|css/|../css/|g' directions/index.html

cp index.html event/index.html
sed -i '' 's/" data-location="home"/ alt" data-location="home"/g' event/index.html
sed -i '' 's/ alt" data-location="event"/" data-location="event"/g' event/index.html
sed -i '' 's|js/|../js/|g' event/index.html
sed -i '' 's|img/|../img/|g' event/index.html
sed -i '' 's|css/|../css/|g' event/index.html

cp index.html staying/index.html
sed -i '' 's/" data-location="home"/ alt" data-location="home"/g' staying/index.html
sed -i '' 's/ alt" data-location="staying"/" data-location="staying"/g' staying/index.html
sed -i '' 's|js/|../js/|g' staying/index.html
sed -i '' 's|img/|../img/|g' staying/index.html
sed -i '' 's|css/|../css/|g' staying/index.html

cp index.html story/index.html
sed -i '' 's/" data-location="home"/ alt" data-location="home"/g' story/index.html
sed -i '' 's/ alt" data-location="story"/" data-location="story"/g' story/index.html
sed -i '' 's|js/|../js/|g' story/index.html
sed -i '' 's|img/|../img/|g' story/index.html
sed -i '' 's|css/|../css/|g' story/index.html
