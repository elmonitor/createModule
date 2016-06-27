echo "--------------------------------"
echo "Please write the module name:"
read module_name
mkdir $module_name
cd $module_name
mkdir controllers data demo doc i18n models report security -p static/description -p static/src test tests views wizard
mkdir static/src/css static/src/img static/src/js static/src/less static/src/xml
touch __init__.py __openerp__.py
touch controllers/__init__.py
touch data/${module_name}_data.xml
touch demo/${module_name}_demo.xml
touch models/__init__.py models/${module_name}.py
touch report/__init__.py
touch security/${module_name}_security.xml security/ir.model.access.csv
touch static/src/css/${module_name}.css
touch tests/__init__.py
touch views/${module_name}.xml
touch wizard/__init__.py
echo "# -*- coding: utf-8 -*-" >> __init__.py
echo "import models" >> __init__.py
echo "import wizard" >> __init__.py
echo "import report" >> __init__.py
echo "import controllers" >> __init__.py
echo "import tests" >> __init__.py
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
