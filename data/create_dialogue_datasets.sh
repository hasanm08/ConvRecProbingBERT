python3 make_conv_data.py \
  --conversations_path ./dialogue/dialogues.csv \
  --output_path ./dialogue/music \
  --subreddit 'musicsuggestions'

python3 make_conv_data.py \
  --conversations_path ./dialogue/dialogues.csv \
  --output_path ./dialogue/books \
  --subreddit 'booksuggestions'

python3 make_conv_data.py \
  --conversations_path ./dialogue/dialogues.csv \
  --output_path ./dialogue/movies \
  --subreddit 'MovieSuggestions'

python3 make_conv_data.py \
  --conversations_path ./dialogue/redial_dialogues.csv \
  --output_path ./dialogue/redial \
  --subreddit 'all'
# redial_dialogues.csv  cutoff in September 2021,
