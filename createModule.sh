echo "--------------------------------"
echo "Please write the module name:"
read module_name
mkdir $module_name
cd $module_name
mkdir models views
touch __init__.py __openerp__.py
touch models/__init__.py models/${module_name}.py
touch views/${module_name}.xml
echo "# -*- coding: utf-8 -*-" >> __init__.py
echo "import models" >> __init__.py
echo "{" >> __openerp__.py
echo "'name': $module_name" >> __openerp__.py
echo "'category': ," >> __openerp__.py
echo "'sequence': ," >> __openerp__.py
echo "'summary': ," >> __openerp__.py
echo "'website': ," >> __openerp__.py
echo "'version': ," >> __openerp__.py
echo "'description': ," >> __openerp__.py
echo "'demo': ," >> __openerp__.py
echo "'qweb': ," >> __openerp__.py
echo "'application': True," >> __openerp__.py
echo "# -*- coding: utf-8 -*-" >> models/__init__.py
echo "# -*- coding: utf-8 -*-" >> models/${module_name}.py
echo "----------------------------------"
echo "Module $module_name created"
echo "----------------------------------"
tree module_name
