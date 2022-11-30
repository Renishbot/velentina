if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/GreyMatterbots/url-auto-delete-shortener-bot /velentina 
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /velentina 
fi
cd /velentina 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 velentina.py
