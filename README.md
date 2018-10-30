# Analyzing the Twitter IRA Data with Graph-Tool

This repository contains a few notebooks with some light commentary on using `graph-tool` for network analysis with the Twitter IRA Data. On October 16, 2018, Twitter released several large datasets of tweets and account information related to foreign influence of US elections. From Twitter's [Elections Integrity](https://about.twitter.com/en_us/values/elections-integrity.html) page:

> Our initial disclosures cover two previously disclosed campaigns, and include information from 3,841 accounts believed to be connected to the Russian Internet Research Agency, and 770 accounts believed to originate in Iran. For additional information about this disclosure, see our announcement.
>
> These datasets include all public, nondeleted Tweets and media (e.g., images and videos) from accounts we believe are connected to state-backed information operations. Tweets deleted by these users prior to their suspension (which are not included in these datasets) comprise less than 1% of their overall activity. Note that not all of the accounts we identified as connected to these campaigns actively Tweeted, so the number of accounts represented in the datasets may be less than the total number of accounts listed here.

We use this archive of tweets to do a network analysis of the accounts related to the Russian Internet Research Agency (IRA). This is the larger of the two datasets they released. The tweet level information contains three different types of relationships between users: retweets, replies, and mentions. We'll use all three to build our network. The first part of this tutorial will handle the data cleaning necessary to generate a network.

Large scale network analysis is then completed using [graph-tool](https://graph-tool.skewed.de/). The graph-tool library has a unique API that might seem a little tricky at first, particularly if you're coming from using something like NetworkX for network analysis. However, once the fundamentals of the API are understood, graph-tool enables powerful analysis: it's typically much faster than NetworkX and the visualizations are much better. 

## Running:
- Grab the dataset (_Tweet information (1.24GB)_ / `ira_tweets_csv_hashed.zip`) from Twitter's Elections Integrity page here: https://about.twitter.com/en_us/values/elections-integrity.html#data. Extract the dataset to the `data` folder. 
- `$ docker-compose up` is the quickest way to get a container with a jupyter notebook up and running. It will require you to have Docker installed.
