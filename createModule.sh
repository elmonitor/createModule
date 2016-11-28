echo "--------------------------------"
echo "Write the module name underscore:"
read name
sudo mkdir $name
#access to module folder
cd $name
echo "Write the Odoo Version (8,9,10):"
read odoo_v
if [ "$odoo_v" == 8 ]; then
  sudo touch __openerp__.py
fi
echo "Write the Module title description:"
read title
echo "Write the module version (1.0):"
read version
echo "Write the author (3nodus):"
read author
echo "Write the module category:"
read category
echo "Write the module summary:"
read summary
echo "Write the module description:"
read description
echo "Write the website:"
read website
echo "Write the dependences comma separated ('account','purchase'):"
read depends

echo "Create the folder 'models'?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir $name/models
fi
echo "Create the folder 'views'?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir views
fi

echo "Create the folder 'static/description'?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir static/description
fi

echo "Create the folder 'i18n'?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir i18n
fi

#echo "Create the folder  ?(y,n):"
#read answer
#if [ "$answer" == "y" -o "$answer" == "Y" ]; then
#  sudo mkdir
#fi

sudo mkdir $name
sudo touch __init__.py
echo "# -*- coding: utf-8 -*-" >> __init__.py
echo "# License AGPL-3.0 or later (http://www.gnu.org/licenses/agpl.html)." >> __init__.py
echo "import models" >> __init__.py

sudo touch models/__init__.py models/${name}.py
sudo touch views/${name}.xml

echo "{" >> __openerp__.py
echo "    'name': $name" >> __openerp__.py
echo "    'category': $category ," >> __openerp__.py
echo "    'sequence': ," >> __openerp__.py
echo "    'summary': $summary," >> __openerp__.py
echo "    'website': $website," >> __openerp__.py
echo "    'version': $version," >> __openerp__.py
echo "    'description': $description," >> __openerp__.py
echo "    'demo': ," >> __openerp__.py
echo "    'depends': $depends," >> __openerp__.py
echo "    'qweb': ," >> __openerp__.py
echo "    'application': True," >> __openerp__.py
echo "}" >> __openerp__.py
echo "# -*- coding: utf-8 -*-" >> models/${name}.py
echo "----------------------------------"
echo "Module $name created"
echo "----------------------------------"
cd ..
tree $name

