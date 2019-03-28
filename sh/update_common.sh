# rm -rf ./node_modules/@lendo/common
mkdir -p ./node_modules/@lendo/common
for f in `find ~/src/lendo/web_common -maxdepth 1 -mindepth 1 -not -path '*/\.*' -not -path '*node_modules'`; do
  # echo $f
  cp -R $f ./node_modules/@lendo/common
done
