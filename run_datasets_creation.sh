mkdir data/recommendation/gr/deberta
mkdir data/recommendation/ml25m/deberta
mkdir data/search/gr/deberta
mkdir data/search/ml25m/deberta
mkdir data/dialogue/books/deberta
mkdir data/dialogue/movies/deberta

cd data/
bash create_dialogue_datasets.sh
bash create_recommendation_datasets.sh
# bash create_search_datasets.sh