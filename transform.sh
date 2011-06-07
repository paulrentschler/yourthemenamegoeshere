#!/bin/sh
SHORTNAME=awesome
FULLNAME="Awesome Theme"
find -X plonetheme.yournamegoeshere | xargs -I {} \
sed 's:yournamegoeshere:'$SHORTNAME':g;s:Your Theme Name Goes Here:'$FULLNAME':g' \
    < {} > {}
mv plonetheme.yournamegoeshere/plonetheme/yournamegoeshere/stylesheets/yournamegoeshere.css plonetheme.$SHORTNAME/plonetheme/$SHORTNAME/stylesheets/$SHORTNAME.css
mv plonetheme.yournamegoeshere/plonetheme/yournamegoeshere plonetheme.$SHORTNAME/plonetheme/$SHORTNAME
mv plonetheme.yournamegoeshere plonetheme.$SHORTNAME



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


