# rm -rf ./node_modules/@lendo/common
mkdir -p ./node_modules/@lendo/article
for f in `find ~/src/lendo/ms_front_article -maxdepth 1 -mindepth 1 -not -path '*/\.*' -not -path '*node_modules'`; do
  # echo $f
  cp -R $f ./node_modules/@lendo/article
done
