#!/bin/sh
SHORTNAME=awesome
FULLNAME="Awesome Theme"
find -X plonetheme.yourthemenamegoeshere | xargs -I {} \
sed -i '' 's:yourthemenamegoeshere:'$SHORTNAME':g;s:Your Theme Name Goes Here:'$FULLNAME':g' {}
mv plonetheme.yourthemenamegoeshere/plonetheme/yourthemenamegoeshere/stylesheets/yourthemenamegoeshere.css plonetheme.$SHORTNAME/plonetheme/$SHORTNAME/stylesheets/$SHORTNAME.css
mv plonetheme.yourthemenamegoeshere/plonetheme/yourthemenamegoeshere plonetheme.$SHORTNAME/plonetheme/$SHORTNAME
mv plonetheme.yourthemenamegoeshere plonetheme.$SHORTNAME



#Replace:
#
#Your Theme Name Goes Here
#yourthemenamegoeshere
#
#Rename:
#
#plonetheme.yournamegoeshere/plonetheme/yournamegoeshere/stylesheets/yournamegoeshere.css
#plonetheme.yournamegoeshere/plonetheme/yournamegoeshere
#plonetheme.yournamegoeshere

#http://stackoverflow.com/questions/845863/how-to-use-in-an-xargs-command 
