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
echo "Create the folder views?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir views
fi

echo "Create the folder  ?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir
fi

echo "Create the folder  ?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir
fi

echo "Create the folder  ?(y,n):"
read answer
if [ "$answer" == "y" -o "$answer" == "Y" ]; then
  sudo mkdir
fi




echo "Create the folder  ?(y,n):"
read answer

echo "Create the folder  ?(y,n):"
read answer

echo "Create the folder  ?(y,n):"
read answer




sudo mkdir $module_name
cd $module_name
sudo touch __init__.py
echo "# -*- coding: utf-8 -*-" >> __init__.py
echo "# License AGPL-3.0 or later (http://www.gnu.org/licenses/agpl.html)." >> __init__.py
echo "import models" >> __init__.py

sudo touch __openerp__.py


sudo mkdir models views

sudo touch models/__init__.py models/${module_name}.py
sudo touch views/${module_name}.xml

echo "import models" >> __init__.py
echo "{" >> __openerp__.py
echo "    'name': $module_name" >> __openerp__.py
echo "    'category': ," >> __openerp__.py
echo "    'sequence': ," >> __openerp__.py
echo "    'summary': ," >> __openerp__.py
echo "    'website': ," >> __openerp__.py
echo "    'version': ," >> __openerp__.py
echo "    'description': ," >> __openerp__.py
echo "    'demo': ," >> __openerp__.py
echo "    'qweb': ," >> __openerp__.py
echo "    'application': True," >> __openerp__.py
echo "}" >> __openerp__.py
echo "# -*- coding: utf-8 -*-" >> models/__init__.py
echo "# -*- coding: utf-8 -*-" >> models/${module_name}.py
echo "----------------------------------"
echo "Module $module_name created"
echo "----------------------------------"
cd ..
tree $module_name

