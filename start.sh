screen -S TweetPinna -X quit
screen -S TweetPinnaDB -X quit
pkill -f '.*TweetPinna.*'
screen -d -m -S TweetPinna bash -c 'env/bin/python TweetPinna.py cfg/mydash.cfg'
screen -d -m -S TweetPinnaDB bash -c 'env/bin/python TweetPinnaDashboard.py cfg/mydash.cfg'
