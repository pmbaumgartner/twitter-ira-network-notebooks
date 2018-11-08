# Analyzing the Twitter IRA Data with Graph-Tool

![retweets](https://image.ibb.co/mhv3nf/RT-map.png)

_Visualisation of retweets between accounts in the dataset._

## Summary
This repository contains a few notebooks with some light commentary on using `graph-tool` for network analysis with the Twitter IRA Data. It's intended to serve as a reference for using data found "in the wild" and manipulating it for use in a network analysis context.

Notebooks:

1. [Data Cleaning](http://nbviewer.jupyter.org/github/pmbaumgartner/twitter-ira-network-notebooks/blob/master/1.%20Data%20Cleaning.ipynb)
2. [Graph Creation and Visualization](http://nbviewer.jupyter.org/github/pmbaumgartner/twitter-ira-network-notebooks/blob/master/2.%20Graph%20Creation%20and%20Visualization.ipynb)
3. [Stochastic Block Modeling](http://nbviewer.jupyter.org/github/pmbaumgartner/twitter-ira-network-notebooks/blob/master/3.%20Stochastic%20Block%20Modeling.ipynb)

## Dataset
On October 16, 2018, Twitter released several large datasets of tweets and account information related to foreign influence of US elections. From Twitter's [Elections Integrity](https://about.twitter.com/en_us/values/elections-integrity.html) page:

> Our initial disclosures cover two previously disclosed campaigns, and include information from 3,841 accounts believed to be connected to the Russian Internet Research Agency, and 770 accounts believed to originate in Iran. For additional information about this disclosure, see our announcement.
>
> These datasets include all public, nondeleted Tweets and media (e.g., images and videos) from accounts we believe are connected to state-backed information operations. Tweets deleted by these users prior to their suspension (which are not included in these datasets) comprise less than 1% of their overall activity. Note that not all of the accounts we identified as connected to these campaigns actively Tweeted, so the number of accounts represented in the datasets may be less than the total number of accounts listed here.

## Viewing

Sometimes GitHub doesn't want to render the notebooks, so go check them out on [nbviewer](http://nbviewer.jupyter.org/github/pmbaumgartner/twitter-ira-network-notebooks/tree/master/) instead.

## Running:
- Grab the dataset (_Tweet information (1.24GB)_ / `ira_tweets_csv_hashed.zip`) from Twitter's Elections Integrity page here: https://about.twitter.com/en_us/values/elections-integrity.html#data. Extract the dataset to the `data` folder. 
- `$ docker-compose up` is the quickest way to get a container with a jupyter notebook up and running. It will require you to have Docker installed.
- I don't commit any of the intermediate data, so you'll have to run each notebook in sequence to generate the correct files.
