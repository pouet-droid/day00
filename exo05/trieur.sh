#!/bin/sh
rm -rf php_remote_2019.csv && rm -rf javascript_villeurbanne_charbonnieres.csv && rm -rf david.csv && rm -rf mails_gex.csv && rm -rf mails_charbonnieres_remote.csv && rm -rf python_2008.csv

grep 'PHP' it_alumni.csv >> tamp.csv
grep '2019' tamp.csv >> php_remote_2019.csv
lines=$((`wc -l < "php_remote_2019.csv"`))
rm -rf php_remote_2019.csv
echo $lines > php_remote_2019.csv

grep 'Js' it_alumni.csv >> a.csv
grep 'Villeurbanne\|Charbonnieres' a.csv >> javascript_villeurbanne_charbonnieres.csv

grep 'David' it_alumni.csv >> david.csv
lines=$((`wc -l < "david.csv"`))
rm -rf david.csv
echo $lines > david.csv

grep 'Gex' it_alumni.csv >> mails_gex.csv


grep 'Remote\|Charbonnieres' it_alumni.csv >> mails_charbonnieres_remote.csv

grep 'Python' it_alumni.csv >> c.csv
grep  '2008' c.csv >> python_2008.csv
lines=$((`wc -l < "python_2008.csv"`))
rm -rf python_2008.csv
echo $lines > python_2008.csv

rm -rf tamp.csv && rm -rf a.csv && rm -rf b.csv && rm -rf c.csv