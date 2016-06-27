echo "Please write the module name:"
read module_name
mkdir $module_name
cd $module_name
mkdir models controllers views security data demo i18n -p static/description
touch __init__.py __openerp__.py models/__init__.py controllers/__init__.py
echo "# -*- coding: utf-8 -*-" >> __init__.py
echo "from . import models, controllers" >> __init__.py
echo "----------------------------------"
echo "Module $module_name created"
echo "----------------------------------"
