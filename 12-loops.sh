#!/bin/bash

for i in {1..2000}
do 
 echo " $i "
done

package=$@
for i in $package
do 
 echo " $i "
done