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

# insert the theme name where needed
SEDEXPRESSION='s/yourthemenamegoeshere/'$SHORTNAME'/g;s/Your Theme Name Goes Here/'$FULLNAME'/g'
find -X plonetheme.yourthemenamegoeshere -type f | xargs -I {} sed -i '' -e "$SEDEXPRESSION" {} 

# rename the file and folder objects
mv plonetheme.yourthemenamegoeshere/plonetheme/yourthemenamegoeshere/stylesheets/yourthemenamegoeshere.css plonetheme.yourthemenamegoeshere/plonetheme/yourthemenamegoeshere/stylesheets/$SHORTNAME.css
mv plonetheme.yourthemenamegoeshere/plonetheme/yourthemenamegoeshere plonetheme.yourthemenamegoeshere/plonetheme/$SHORTNAME 
mv plonetheme.yourthemenamegoeshere plonetheme.$SHORTNAME

