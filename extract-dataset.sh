DIR="./public/data"
if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  echo "Dataset Exists Skip to extract it"
else
  ###  Control will jump here if $DIR does NOT exists ###
  echo "Begin Extracting data to ${DIR}"
  tar -xvf ./dataset/data.tar.bz2 ./public -q
  echo "Success extracting data to ${DIR}"
fi
