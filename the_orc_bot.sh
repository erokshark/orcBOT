#!/bin/bash
echo "Finalizando orcBOT..."
screen -X -S orcbot quit
echo "Atualizando orcBOT..."
sleep 2
rm orcTelegramBOT.jar
wget https://svn.riouxsvn.com/orcbot/dist/orcTelegramBOT.jar
chmod 777 orcTelegramBOT.jar
echo "Abrindo orcBOT..."
sleep 2
screen -dmS orcbot bash runthe_orc_bot.sh