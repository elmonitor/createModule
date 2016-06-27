# createModule
Creates a module's template

Steps to use the script:

sudo wget https://raw.githubusercontent.com/elmonitor/createModule/8.0/createModule.sh

sudo chmod +x createModule.sh

./createModule.sh

addons/<my_module_name>/

|-- __init__.py

|-- __openerp__.py

|-- controllers/

|   |-- __init__.py

|   `-- main.py

|-- data/

|   |-- <main_model>_data.xml

|   `-- <inherited_main_model>_demo.xml

|-- models/

|   |-- __init__.py

|   |-- <main_model>.py

|   `-- <inherited_main_model>.py

|-- security/

|   |-- ir.model.access.csv

|   `-- <main_model>_security.xml

|-- static/

|   |-- img/

|   |   |-- my_little_kitten.png

|   |   `-- troll.jpg

|   |-- lib/

|   |   `-- external_lib/

|   `-- src/

|       |-- js/

|       |   `-- <my_module_name>.js

|       |-- css/

|       |   `-- <my_module_name>.css

|       |-- less/

|       |   `-- <my_module_name>.less

|       `-- xml/

|           `-- <my_module_name>.xml

`-- views/

    |-- <main_model>_templates.xml

    |-- <main_model>_views.xml

    |-- <inherited_main_model>_templates.xml

    `-- <inherited_main_model>_views.xml


