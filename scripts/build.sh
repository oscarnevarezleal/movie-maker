#!/usr/bin/env bash

frames=24
mkdir -p {frames,dist}

# Grab some random data from dataset
head -1 photos.tsv000 > random100.tsv
shuf -n 100 photos.tsv000 >> random100.tsv
# tsv-pretty random100.tsv | head -n 5
tsv-select -H -f 3 random100.tsv | tail -n $frames > dataset.tsv
randomUnsplash=$(cat dataset.tsv)
echo "randomUnsplash : $randomUnsplash"

pushd frames || exit
cat ../dataset.tsv | xargs -I % curl -L -O %
ls

# Rename as sequence
a=1
# shellcheck disable=SC2045
for i in $(ls);do
  new=$(printf "seq-%d.jpeg" "$a")
  mv -i -- "$i" "$new"
  let a=a+1
done
ls
# shellcheck disable=SC2164
popd

ffmpeg -framerate 3 -i frames/seq-%d.jpeg -r 8 -c:v libx264 -pix_fmt yuvj420p -vf "scale=640:-2" dist/out.mp4
today=$(date +'%m-%d-%Y')
time=$(date +'%H:%M')

touch release.md
# shellcheck disable=SC2129
echo "### $today 👨‍🎤 " >> release.md
echo "> Generated at: ${time}" >> release.md
echo "> Images provided by [The Unsplash Dataset](https://github.com/unsplash/datasets)" >> release.md

echo "::set-output name=version::latest"