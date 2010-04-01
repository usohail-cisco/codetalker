python examples/prettyjson.py test/json/one.json
python examples/json.py test/json/one.json
echo 'parse'
python examples/parse_c.py test/c/hanoi.c > /dev/null
echo 'pretty'
python examples/prettyc.py test/c/hanoi.c > /dev/null
echo 'mini'
python examples/minify.py test/c/hanoi.c

for i in test/c/more/*.c.txt;do
    echo "parsing $i"
    python examples/prettyc.py $i>/dev/null
    echo "..parsed"
done
