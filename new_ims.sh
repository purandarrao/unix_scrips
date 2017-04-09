#" Steps to run "
echo "--------------- Running Composer Install -----------------"
composer install
echo "--------------- Validate ORM keys --------------------------"
php ./Bin/Utility/Console/Script.php -c SoftLayer_Core_Orm_Key_Validate
echo "--------------- Generate WSDLs for SOAP API ----------------"
php ./Bin/WebService/buildServices.php
echo "-------------- Generate files for auto-completion in Object Explorer -----------------"
php ./Bin/Utility/Console/Script.php -c SoftLayer_Utility_ProductionTools_ObjectExplorer_Job_BuildClassListFile
echo "-------------- Generate translation files  -----------------------"
php ./Bin/Utility/Console/Script.php -c SoftLayer_Locale_Translate_Job_BuildBrandTranslations
echo "------- Build HTML assets (JavaScript + CSS) ---------------------"
./Bin/HtmlAsset/build
echo "-------- Finished -------"
