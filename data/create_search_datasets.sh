python make_prod_search_data.py \
  --task music \
  --reviews_path ./search/CDs_and_Vinyl.json \
  --items_path ./search/meta_CDs_and_Vinyl.json \
  --ratings_path ./recommendation/music/ \
  --output_path ./search/music/deberta

python make_prod_search_data.py \
  --task gr \
  --reviews_path ./search/goodreads_reviews_dedup.json \
  --items_path ./recommendation/books_names.csv \
  --ratings_path ./recommendation/gr/ \
  --output_path ./search/gr/deberta

python make_prod_search_data.py \
  --task ml25m \
  --reviews_path ./search/reviews.csv \
  --items_path ./recommendation/movies_names.csv \
  --ratings_path ./recommendation/ml25m/ \
  --output_path ./search/ml25m/deberta
