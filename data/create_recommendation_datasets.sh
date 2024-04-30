which python
python make_seq_rec_data.py \
  --task music \
  --ratings_path ./search/CDs_and_Vinyl.json \
  --item_names_path ./search/meta_CDs_and_Vinyl.json \
  --output_path ./recommendation/music/deberta

# python make_seq_rec_data.py \
#   --task gr \
#   --ratings_path ./recommendation/goodreads_interactions_dedup.json \
#   --item_names_path ./recommendation/books_names.csv \
#   --output_path ./recommendation/gr/deberta

python make_seq_rec_data.py \
  --task ml25m \
  --ratings_path ./recommendation/ml25m_ratings.csv \
  --item_names_path ./recommendation/movies_names.csv \
  --output_path ./recommendation/ml25m
