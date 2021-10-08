#!/bin/bash
cd ~
mkdir exercise-upper && cd $_
mkdir exercise-lower && cd $_
touch test1.txt
touch test2.txt
mv test1.txt ..
mv test2.txt test2.sh
echo "#!/bin/bash" >> test2.sh
echo "pwd" >> test2.sh
chmod a+x test2.sh
./test2.sh