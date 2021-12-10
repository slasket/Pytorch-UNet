echo -n "Kaggle username: "
read USERNAME
echo ""
echo -n "Kaggle API key: "
read APIKEY

pip install kaggle --upgrade
mkdir -p ~/.kaggle
echo "{\"username\":\"$USERNAME\",\"key\":\"$APIKEY\"}" > ~/.kaggle/kaggle.json


kaggle competitions download -c carvana-image-masking-challenge -f test_hq.zip
unzip test_hq.zip
mv test/* data/test/
rm -d test
rm test_hq.zip