if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/cobra1294/MARTIN-BOT-2.git /MARTIN-BOT-2 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MARTIN-BOT-2 
fi
cd /MARTIN-BOT-2 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
