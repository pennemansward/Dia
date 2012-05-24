#!/bin/bash
#Er moeten een aantal parameters worden ingevoerd om dit bashscript correct te kunnen uitvoeren:
# de aanspreking, voornaam, achternaam en e-mail adres. 

read -p 'Hoe moet de contactpersoon worden aangesproken?' aanspreking;
read -p 'To (voonaam): ' vnaam;
read -p 'To (achternaam): ' anaam;
read -p 'To (e-mail adres): ' email;

#De voornaam en achternaam kunnen eventueel spaties bevatten, deze gaan we verwijderen.
vnaamNospace=${vnaam// /};
anaamNospace=${anaam// /};

#het bestand de naam geven van de geadresseerde... dit doen we in 2 stappen
#eerst wisselen we van directory
cd /home/ward/Documents/latex;
#vervolgens kopiëren we het bestand met als naam vnaam.anaam
cp Emacs.pdf $vnaamNospace.$anaamNospace.pdf;

#commando om de email te verzenden via het programma mutt
#met als onderwerp "mailreviewer", naar $email en met het gekopieerde bestand als bijlage.
echo $aanspreking| mutt  -s "mailreviewer"  $email -a /home/ward/Documents/latex/$vnaamNospace.$anaamNoscpace.pdf;