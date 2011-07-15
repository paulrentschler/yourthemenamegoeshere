#!/bin/sh
if [ ! $# -eq 2 ]
then
    echo "Modern Plone Theme Generator"
    echo "Usage: $0 [short theme name] [full theme name]"
    echo "Example: $0 myawesometheme \"My Awesome Theme\""
    exit 1
fi
SHORTNAME=$1
FULLNAME=$2

# rename the file and folder objects
cp -rf plonetheme.yourthemenamegoeshere plonetheme.$SHORTNAME
mv plonetheme.$SHORTNAME/plonetheme/yourthemenamegoeshere/stylesheets/yourthemenamegoeshere.css plonetheme.$SHORTNAME/plonetheme/yourthemenamegoeshere/stylesheets/$SHORTNAME.css
mv plonetheme.$SHORTNAME/plonetheme/yourthemenamegoeshere plonetheme.$SHORTNAME/plonetheme/$SHORTNAME 

# insert the theme name where needed
SEDEXPRESSION='s/yourthemenamegoeshere/'$SHORTNAME'/g;s/Your Theme Name Goes Here/'$FULLNAME'/g'
find -X plonetheme.$SHORTNAME -type f | xargs -I {} sed -i '' -e "$SEDEXPRESSION" {} 

# add empty folders
mkdir plonetheme.$SHORTNAME/plonetheme/$SHORTNAME/images
mkdir plonetheme.$SHORTNAME/plonetheme/$SHORTNAME/templates
mkdir plonetheme.$SHORTNAME/plonetheme/$SHORTNAME/javascript
