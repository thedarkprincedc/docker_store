cd /image_start
git clone https://github.com/thedarkprincedc/synologydownloadlist2.git
mv /image_start/synologydownloadlist2/app/* /app/
mkdir /app/resources
mv /image_start/synologydownloadlist2/resources/synodownload-resources/* /app/resources/
chmod 777 /app/resources/logs
