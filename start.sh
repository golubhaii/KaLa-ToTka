if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/golubhaii/KaLa-ToTka/tree/master /KaLa-ToTka
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KaLa-ToTka
fi
cd /KaLa-ToTka
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
