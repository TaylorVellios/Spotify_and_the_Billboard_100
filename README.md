# Using the Spotify API to Analyze the Billboard Top 100
Comparing the Audio Features of Billboard Top 100 Tracks From the Last 30 years.

## Purpose
To populate, transform, and analyze data for popular music, as dictated by the Billboard Top 100 Charts, using Spotify's API.</br>
Is it possible for Spotify to quantify the changes in popular music over the last 30 years?</br>
[Data of the Billboard Top 100 Charts](https://www.kaggle.com/dhruvildave/billboard-the-hot-100-songs)

## Resources:
Library | Install
--------|--------
[Spotipy](https://spotipy.readthedocs.io/en/2.18.0/) for the [Spotify API](https://developer.spotify.com/)|pip install spotipy
Pandas|pip install pandas
Matplotlib|pip install matplotlib
Numpy|pip install numpy

</br>
<hr>
# Overview:
For every song provided by Spotify's streaming service, there is an audio analysis system that attempts to quantify (7) specific musical qualities of that song along with its Tempo and Loudness.</br></br>
Below are those musical qualities and their descriptions with some examples:
### Danceability
How suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity.</br>
Values: 0.0 - 1.0</br>
Track | Spotify ID | Danceability
------|------------|-------------
[In Da Club - 50 Cent](https://open.spotify.com/track/4RY96Asd9IefaL3X4LOLZ8?si=26d589f455f2430b)|4RY96Asd9IefaL3X4LOLZ8|0.902
[Party Rock Anthem - LMFAO](https://open.spotify.com/track/0IkKz2J93C94Ei4BvDop7P?si=c745933353b34fc2)|0IkKz2J93C94Ei4BvDop7P|0.75
[The News - July Talk](https://open.spotify.com/track/6aNSpHz5B2sfwLdbWLbwM0?si=e78aa628abd64997)|6aNSpHz5B2sfwLdbWLbwM0|0.506
[The Void - Martha](https://open.spotify.com/track/447aLLYaDMpMQhcXDoxLHY?si=ba1535b67b7241eb)|1cVsAZq9aOpPkF5P0iLjTq|0.227
[You Will Never Be One of Us - NAILS](https://open.spotify.com/track/3rjNoyEanqWA5znCy2rAdO?si=b5259981c0ff449a)|3rjNoyEanqWA5znCy2rAdO|0.122

### Energy
A representation of intensity and activity. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.</br>
Values: 0.0 - 1.0</br>
Track | Spotify ID | Energy
------|------------|-------------
[Cotton Shot - Mouthbreather](https://open.spotify.com/track/2Sci0oYsa3Dio0R8sr59Me?si=ecfa461704fa4421)|2Sci0oYsa3Dio0R8sr59Me|0.994
[Power Freaks - Jean Dawson](https://open.spotify.com/track/7hICI90u3sVvsX7IaojRxQ?si=a1aa5a3d5da14c4a)|06dWM8AMMjKE9Obf2L1ojy|0.729
[Nevermind the End - Tei Shi](https://open.spotify.com/track/5MECSlFYbCk102mDXqD1ZC?si=5b71e0c548f64edb)|3svNliBVGiVEXdeLUDfjD2|0.401
[It's My Fault - Lolo Zouai](https://open.spotify.com/track/3QP17SZh39ZVczQnopq9BE?si=9cd531e099d643af)|3QP17SZh39ZVczQnopq9BE|0.235
[Faces to Numbers - 36](https://open.spotify.com/track/2R9O6QKvavHqN1P2mGd8mG?si=9642b89858b44277)|2R9O6QKvavHqN1P2mGd8mG|0.000273


### Speechiness
A detection of the presence of spoken words in a track. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks. Tracks falling in the 0.5-0.8 range are incredibly rare.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Speechiness
------|------------|-------------
[This is Not the End of the World - Neil Hilborn](https://open.spotify.com/track/0546u5xJuGFJzSt8wbcQD1?si=8efbf7a008754a3c)|0546u5xJuGFJzSt8wbcQD1|0.948
[AI - Ghostemane](https://open.spotify.com/track/4OcxBd349UIgErVz81V2TY?si=fca4dceb5465464f)|4OcxBd349UIgErVz81V2TY|0.555
[Inglorious - Slowthai feat. Skepta](https://open.spotify.com/track/5HHq5ZKQzjJS5LQ8Mp82NM?si=e1209556599d4ab3)|5HHq5ZKQzjJS5LQ8Mp82NM|0.327
[Lament - Touche Amore](https://open.spotify.com/track/1KA8taNVhk8frOKkrkvs7O?si=f8c375e98f4f4f17)|2W6o5dI0sfWRafsusPWZHJ|0.153


### Acousticness
A confidence measure of whether a track is acoustic.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Acousticness
------|------------|-------------
[One of These Days - Owen](https://open.spotify.com/track/2uNpHEnAzP3Ks0kwiZan7P?si=dcdf488d1c4c4626)|2uNpHEnAzP3Ks0kwiZan7P|0.982
[Contaminated - Banks](https://open.spotify.com/track/4tJi4dodnpJ0MSKj2w6OkP?si=f08f7620e5894813)|4tJi4dodnpJ0MSKj2w6OkP|0.732
[Out There  - Derek Ted](https://open.spotify.com/track/7GwOu48XtxzbJNEq2ljEDa?si=b714d828b665426a)|7GwOu48XtxzbJNEq2ljEDa|0.29
[Hangar - 8485](https://open.spotify.com/track/1nXiUKuAu4mHte6Gt2HRdJ?si=3a24580c3d9e480c)|1nXiUKuAu4mHte6Gt2HRdJ|0.000352


### Instrumentalness
A prediction whether a track contains vocals or not, where “Ooh” and “aah” sounds are treated as instrumental elements.</br>
Near-binary values are very common.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Instrumentalness
------|------------|-------------
[Trancing Nostalgia - Save Us from the Archon](https://open.spotify.com/track/7gZgqLOE9VZjqJQAnUPqrE?si=c9a6996bc4cd4033)|2uNpHEnAzP3Ks0kwiZan7P|0.928
[Door - Caroline Polachek](https://open.spotify.com/track/5YIVVzQcJG7pFhyNo0Ytlh?si=60de28973bef47d5)|1nXiUKuAu4mHte6Gt2HRdJ|0.0


### Liveness
A Detection of the presence of an audience in the recording.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Liveness
------|------------|-------------
[Nobody But You - Blake Shelton with Gwen Stefani](https://open.spotify.com/track/7gZgqLOE9VZjqJQAnUPqrE?si=c9a6996bc4cd4033)|5M8goiFYynmNxhueYW6grR|0.994
[Love Shack - The B52's](https://open.spotify.com/track/4W4wYHtsrgDiivRASVOINL?si=87a774f5486a4e03)|4W4wYHtsrgDiivRASVOINL|0.7
[Break My Heart - Dua Lipa](https://open.spotify.com/track/4PULMUg3AwudcRCzvVmgXT?si=793018649a854eea)|017PF4Q3l4DBUiWoXk4OWT|0.349
[Equip Sunglasses - Hot Mulligan](https://open.spotify.com/track/65FsbGhmuMAz3ESCN9xn0H?si=0effc2f4ccba4285)|6PY5aUSub1xwqlDrA4aTyL|0.0189

### Valence
A measure describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive, while tracks with low valence sound more negative.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Valence
------|------------|-------------
[Mint Car - The Cure](https://open.spotify.com/track/3OxKJOPa1AqFkZGBB2HUlW?si=6bd34aa0f58c46a5)|3OxKJOPa1AqFkZGBB2HUlW|0.981
[Electric - Boy Harsher](https://open.spotify.com/track/1oUpE2W9kXdpYYMof5nnQA?si=8c933ea2eb9b4244)|1oUpE2W9kXdpYYMof5nnQA|0.534
[I Have Nothing - Whitney Houston](https://open.spotify.com/track/31er9IGsfFbwqy1pH4aiTP?si=38e3391445114ca3)|31er9IGsfFbwqy1pH4aiTP|0.24
[No One is Ever Going to Want Me - Giles Corey](https://open.spotify.com/track/4McullpiOd45TwEHlOISgs?si=afa81a8db2f546d9)|4McullpiOd45TwEHlOISgs|0.0861
</br>
<br></br>

<hr>
# Data Collection
In this repository is a file named Clean_Billboard.csv which contains all of the Billboard Top 100 Songs for every week since its inception in 1958.</br>
The Spotify_and_Billboard.ipynb file is the first notebook used to clean and collect information based on this initial .csv file.</br>

*For anyone who wants to use the Spotipy library to access the Spotify API, the authorization system in Cell2 requires a python file in the same directory as this repo with two variables: client_id and client_secret set to your individual access tokens. [See The Documentation for Details](https://spotipy.readthedocs.io/en/2.11.1/)*</br>

### Preparation
The Billboard Data at the time of creating these notebooks is 327,387 rows, making filtering a crucial step before anything can be accomplished.</br>

![filter](https://user-images.githubusercontent.com/14188580/116272741-c5063600-a746-11eb-8508-dd6da47937b6.PNG)

By selecting a 5-year range of time, in this example - from 2015 to 2020, we end up with 26,100 songs.<br>
Billboard frequently charts the same song from week to week until it loses steam.</br>
In order to remove songs that chart multiple times I chose to add a column to the dataframe that is a list of all dates a song was included in the Top 100.</br>
The consolidation stage accomplishes several things:
* Preserves the value of the highest peak-rating for a song
* Adds a column of lists for the weeks a song was on the chart
* Ensures that artists with multiple songs and song titles that may be shared between artists are accounted for</br>

![consolidate](https://user-images.githubusercontent.com/14188580/116271272-71471d00-a745-11eb-9110-938850aa13e2.PNG)

</br>
The image above is the end-result of the consolidation stage of this notebook.</br>
As you can see, we went from 26,100 rows to 2500.</br>
The last thing we want to do is ping the Spotify API Server more than we have to. You are welcome Spotify..</br>

## Data Collection - Spotify IDs

Due to the many different ways that artists name their songs and give song credits to accompanying artists, searching spotify based on the default strings in "song" and "artist" stored in the Billboard .csv is significantly unreliable.</br>

Non-Alphanumeric Characters and Artist Separators are quick to break the Spotipy query function.</br>
Things Like:
* Punctuation
* Terms Joining Multiple Artists: "Featuring", "With", "&", "Duet With"... etc
* Censored Words

Will all fail the Spotipy search.</br>

Since we need to obtain the Spotify ID for every possible track, the automatic filter I've written is not enough to capture every use-case of track name/artist string.</br>
![search_output](https://user-images.githubusercontent.com/14188580/116273587-7e650b80-a747-11eb-80c4-d4331699d40b.PNG)
</br>

After the first round of searching we have an output that looks something like this:</br>
![found_ids](https://user-images.githubusercontent.com/14188580/116308150-c9454a00-a76c-11eb-9173-b33ee0047c1f.PNG)
</br>

Any track that failed the automated search will have a NaN value in the "spotify_id" column.</br>
For the 2015-2020 filter range, 16 Songs included odd characters that broke our query or are not available on Spotify.</br>

The further back on the Billboard charts you go, the more likely it is that a song will not be on the Spotify platform.</br>

Search Ranges | Manual Searches | Dropped Tracks
--------------|-----------------|----------------
2020-Today| 10 | 2 
2015-2020| 16 | 0 
2010-2015| 21 | 10 
2000-2010| 78 | 34 
1990-2000| 342 | 128 

</br>
The Manual Search cell allows the user to input a string as a workaround to the many ways Billboard 100 titles can impede the Spotipy query.</br>
This part can be time consuming, especially when double checking within the Spotify system whether a song is available or not, or whether Billboard has a different name/artist convention than Spotify.</br>

In the event that a track is not available on the Spotify Platform, "pass" should be input for the prompt in this manual searching cell.</br>
For this example, no tracks need to be dropped, all NaN values have been filled by manually searching.</br>

![manual search](https://user-images.githubusercontent.com/14188580/116242064-2a4c2e00-a72b-11eb-9e87-9472267361cd.PNG)
</br>

## Data Collection - Spotify Audio Features

Once all possible tracks have IDs populated and all failed tracks (if any) have been dropped, we can obtain the audio features for each unique track by using the Spotipy.audio_features() function.</br>

![features_df](https://user-images.githubusercontent.com/14188580/116278716-62b03400-a74c-11eb-98e2-fef5c9a67a22.PNG)
</br>
The image above is a snapshot of the new columns we have just added to our DataFrame.</br>
At this point we have obtained all of the data that we need.</br>

The last step in this notebook is to explode the dataframe and create a new dataframe with the average values of each Audio Feature by week.</br>
After exploding our results based on the total_weeks column, our final output will look like the following DataFrame:

![averages](https://user-images.githubusercontent.com/14188580/116282476-7067b880-a750-11eb-9ddc-3f0d3f7c1e2c.PNG)

<br></br>

<hr>
# Analysis

After a very lengthy process of accumulating Spotify IDs and searching for their respective Audio Features, I gathered all of the data into a combined .csv file that contains the average value for each Audio Feature grouped by each week of the Billboard Top 100 since January of 1990.</br>
</br>
Due to the wide range of musical genres available in a single week sample of the Billboard 100, combined with the mostly predictable results of Spotify's audio analysis system, any noticeable change in one of these metrics over time would suggest a significant change in music consumption trends.<br></br>

![roll_avg total](https://user-images.githubusercontent.com/14188580/117467106-ff2ac100-af18-11eb-9304-d334addeb898.png)
<br></br>


From a zoomed out perspective, it is easy to tell where the musical priorities of popular music stand.</br>
In ascending order based on the chart above, we will dive deeper into each feature.<br></br>

### Instrumentalness
While instrumentation without vocals has never been a common factor in pop music, what looks to be a faint heartbeat in the 90s has barely been breathing since 2007.</br>
![instrumentalism](https://user-images.githubusercontent.com/14188580/116900720-ae585700-abfe-11eb-90a6-a23c10b59022.png)

Instrumentalness is a very polarized characteristic of music.</br>
It is very straightforward when we can easily find a confidence value of 0.9 or greater on a track without vocals, whereas it's difficult to find something above 0.2 when it comes to popular music that is very vocal heavy.</br>
We can safely say that after 1998 there are hardly any tracks with instrumental sections included in the Billboard 100 on any given week.<br></br>

### Speechiness
This one is a difficult feature to analyze due to the distribution of its values across music.</br>
![speechiness_hist](https://user-images.githubusercontent.com/14188580/116311332-c51b2b80-a770-11eb-9093-9541f938ecd5.png)
</br>
As mentioned in the overview, higher confidence levels of Speechiness are only hit when there is a voice speaking without music.</br>
In my research of tracks outside of the Billboard charts, the highest levels of Speechiness in music are reserved almost exclusively for Rap and Country (guess they're not so different after all..)</br>
This may indicate an algorithmic emphasis on perceived vocal:music loudness by Spotify.</br>
In any case, the rising average of speechiness is significant now that we have stayed above 0.1 for the last 5 years when the mean is so close to 0.</br>
![speechiness](https://user-images.githubusercontent.com/14188580/117069877-a2e65800-acf2-11eb-97af-b0b44f935b87.png)
</br>
Three main takeaways for Speechiness:
* The long-term sinusoidal shape will be a recurring theme as we go through these audio features, indicating trend patterns that come and go in music.
* Another recurring theme will be the significant increase in volatility per-year, in this case, beginning in 2017
* The intensity of the long-term cycle seen here increases with each peak and trough away from the mean-line, indicating greater swings both positive and negative.<br></br>

### Acousticness
Acousticness is a funny one.</br>
![acoustic](https://user-images.githubusercontent.com/14188580/117476832-e8896780-af22-11eb-83d4-65675d026c67.png)
</br>
Just like Speechiness before it, a long term low-amplitude sinusoidal cycle is visible from 1993 to 2018</br>
Yet, unlike Speechiness, there is almost no change in average value from our starting point.
At the end of this cycle is a significant push upwards in value that seems out of character for the 28 years before it.</br>
Aside from the long-term trends, zooming in on the last 12 years there are annual patterns that cannot be ignored.</br>
![acoustic2](https://user-images.githubusercontent.com/14188580/117476848-eb845800-af22-11eb-914a-5a06016c19f5.png)
</br>
Over the last 10 years we have seen a significant upwards trend in Acousticness.</br>
What makes this so funny are the annual mini-cycles that have been flying up every holiday season.</br>
Since 2010, there is severe annual upwards movement in acousticness leading into the new year, where it then falls back to its steady growth line.</br>
This intensity has been growing exponentially over the last 3 years.
</br>
It's very difficult for me not to assume this is due to what we can call a "Holiday Effect".</br>
It is no secret in the music world that artists will strategically release music based on the time of year.</br>
Summer is most notable for positive bouncy radio hits, maybe the end of the year is a market in its own.<br></br>

### Liveness
![liveness](https://user-images.githubusercontent.com/14188580/117072099-96afca00-acf5-11eb-8796-01d235f1d41d.png)
</br>
With very little change in average over the last 30 years, Liveness is another feature providing evidence for long-term musical cycles.</br>
What makes Liveness stand out is how evenly back-and-forth it can bounce from year to year.</br>
![liveness_2002-2012](https://user-images.githubusercontent.com/14188580/117072498-23f31e80-acf6-11eb-8afb-54ce5f0b7de0.png)
</br>

Since Liveness is typically a polarized value, the consistent yearly movement between minimum and maximum is caused by the ratio of songs included in the Top100 week that fall under the "live" category.</br>
This theory was confirmed with some Pandas magic.</br>
I added a column to the dataframe of weekly averages that includes the number of tracks per week that have a Liveness value greater than 0.4.</br>
Sorting the dataframe by liveness_avg is VERY close to sorting by this new column of song counts.</br>
![countof_liveness](https://user-images.githubusercontent.com/14188580/116901533-a8af4100-abff-11eb-9bdb-1c3258559b0e.PNG)<br></br>

### Valence
![valence](https://user-images.githubusercontent.com/14188580/117072832-ab409200-acf6-11eb-92f9-20d9c999569f.png)
</br>
As a huge music fan, the result of visualizing Valence is something that I kind of predicted.</br>
According to Spotify, popular music has been steadily becoming less and less "positive" or "happy" sounding over the last 30 years.</br>

While sadder songs have always had a place in popular music, this long-term trend downward is significant due to how little the averages move from year to year. (Compared to other Audio Features above that can fluctuate from 20-25% of its min/max value)</br>
![valence_change_Desc](https://user-images.githubusercontent.com/14188580/117468981-dc99a780-af1a-11eb-8b11-30615dced768.PNG)
</br>

Key takeaways for Valence:
* The Maximum Weekly Average for Valence over the last 7 years is lower than the Minimum Weekly Average from 1990.
* Volitility in Avg. Yearly Valence Change Percentage has increased to an average of 17.42% since 2014.
* While Valence looks like it bounces around year-to-year similarly to Liveness, any consistency it may have had is gone after 2014.
* From 1990 to 2014, the Avg. Yearly Valence Change Percentage was 13.28%. At this rate, we may be heading to much more distinct seasonal switches in Billboard music.
* While volatility is increasing, our overall average Valence values are still on the decline indicating a large shift in listening preferences for darker music.
* Since 2019, Valence has been slightly increasing. With how difficult and unprecedented the last year has been, maybe the average music consumer needed that little bump in  positivity.
<br></br>

### Danceability
Before jumping into this project, the thought of 'Danceability' as it pertains to pop music sounded like what peanut butter is to jelly.</br>
From the first image in this analysis, seeing how Danceability is the second-highest audio feature value for Billboard tracks was not much of a surprise.</br>
Danceability on its own:
![danceability](https://user-images.githubusercontent.com/14188580/117147523-f3a19380-ad7a-11eb-9f15-fc25bdfc4e74.png)
</br>
What IS surprising is seeing the heavy dip from 2001 to 2012.</br>
At a glance this pattern is very similar to the Speechiness feature reviewed above, but with an insignificant average change since 1990.</br>

From year to year, Danceability does not move much.</br>
Over longer periods of time, considering popular music's core function and demographic, I believe this sinusoidal pattern to be very significant.</br>
There is a lot of speculation I could make about this specific trend:</br>
Like how the trameframe of the United States' involvement in the Iraq War very closely lines up with the heavy dip below average and subsequent pull-up.</br>
But speculation aside, from the values seen above it looks like we hit the peak of our long-term cycle for Danceability in 2019.</br>
If this cycle is as long as the last, Disco will have to wait another 10+ years to make a comeback.
<br></br>
### Energy
![energy](https://user-images.githubusercontent.com/14188580/117060826-07031f00-ace7-11eb-8e85-9a65b82759a3.png)

Last but not least, the average Energy values for each week over the last 30 years lives up to its audio feature namesake.</br>
Being the highest overal average value between all of the Spotify audio features, Energy shows evidence of a long term cyclical trend.</br>
From the beginning of the 90s until 2014 shows a strong sinusoidal shape that is a higher intensity mirror image to that of Danceability.</br>

![energy_danceability](https://user-images.githubusercontent.com/14188580/117061956-6a418100-ace8-11eb-92ad-fded237b4b2a.png)

Where Danceability trends slightly up, Energy trends downwards harder...and vice-versa.</br>
The large separation in averages from 2011-2012 indicates this seemingly inverse relationship struggled to coexist in the realm of popular music.</br>

Some interesting takeaways:
* As of 2018, both Energy and Danceability are decreasing in average - with Energy falling at a much faster pace.
* The visible periods where Danceability surpasses Energy are miniscule compared to Energy's domination from 2000-2017. This may indicate a general music consumption preference for Energy despite long term cycles.
* Similarly to features like Valence and Acousticness, the more recent years have shown a huge shift towards high Volatility per-year.</br>
![volatilityenergy](https://user-images.githubusercontent.com/14188580/117064399-c528a780-aceb-11eb-93ab-7f8f16661564.png)
</br>

### Loudness
If you are unfamiliar with the [Loudness Wars](https://en.wikipedia.org/wiki/Loudness_war), in a nutshell: it is the concern by many audiophiles and audio engineers that the universal adoption of digital recording technologies in the music industry has led to music being mixed and mastered with significantly less dynamic range; resulting in a worse listening experience.</br>
The story that is frequently told regarding the Loudness War in the 90's and 00's is that many pop and rock audio engineers were convinced that louder = better.</br>

What does Spotify have to show about loudness?

![loudness](https://user-images.githubusercontent.com/14188580/120230864-d21ab700-c215-11eb-999f-0caa9f408a8e.png)

As can be seen from low-orbit, average pop music loudness climbed and higher and higher until its peak in 2010.</br>
For average loudness across the entire selection of Billboard 100 songs to be around -5dB is absolutely ridiculous.</br>
Loudness for a digital audio file cannot pass 0dB before distorting.</br>
If mastering engineers are trying to get as close as possible to 0dB during the loudest part of a song, this tells us that most if not all songs selected for the Billboard charts during the height of loudness were relentlessly loud across the board.</br>

What songs make up these miraculously loud weeks?

```
avg_features[['week','loudness_avg']].sort_values(by=['loudness_avg'], ascending=False).head()
```
Week|loudness_avg
----|------------
2010-01-09|-4.75491
2010-01-16|-4.79444
2010-01-23|-4.82161
2009-12-26|-4.82846
2010-01-02|-4.84132

The end of 2009 to the beginning of 2010 was the loudest period for pop music to date.</br>
Filtering and sorting the dataframe containing every song, we can determine the range of loudness and the biggest offenders.</br>
```
peak_loudness = all_tracks_exploded[['song','artist','peak_rank','total_weeks','loudness']]\
[(all_tracks_exploded['weeks'] == '2010-01-09')].sort_values(by=['loudness'], ascending=False)
```

#### peak_loudness.head()
song|artist|peak_rank|total_weeks|loudness
----|------|---------|-----------|----------
Forever|Drake Featuring Kanye West, Lil Wayne & Eminem|8|11|-1.304	
Empire State Of Mind|Jay-Z + Alicia Keys|1|16|-1.538
Run This Town|Jay-Z, Rihanna & Kanye West|2|3|-1.802
Shots|LMFAO Featuring Lil Jon|96|16|-1.912
3|Britney Spears|1|10|-1.917

#### peak_loudness.tail()
song|artist|peak_rank|total_weeks|loudness
----|------|---------|-----------|----------
Sexy Chick|David Guetta Featuring Akon|6|21|-7.694
Steady Mobbin|Young Money Featuring Gucci Mane|48|20|-8.090
Heartbreak Warfare|John Mayer|85|19|-8.113
Im Going In|Drake Featuring Lil Wayne & Young Jeezy|40|4|-8.455
Money To Blow|Birdman Featuring Lil Wayne & Drake|26|10|-8.686

For a song to have an average loudness from -1 to -5, not only is it an issue of the mixing and mastering, but of song composition.</br>
Listening [Forever by Drake ft. Kanye West](https://open.spotify.com/track/6HSqyfGnsHYw9MmIpa9zlZ?si=cd9ca3249c8b41a5), it is incessantly loud and overcompressed.</br>
This track is a perfect representation of the negative effects of the loudness wars from a listener's perspective.</br>

Luckily, since the weeks this song charted there has been a steady decline in average loudness.</br>

I believe the overcompressed sound of pop music from the 2000's has worn on the ears of its listeners.</br>
Unfortunately for the largest opponents of the loudness wars, we have already determined that pop music trends tend to be cyclical.</br>
A peak in loudness right when digital audio equipment hit a plateau in innovation.</br>
While it has been trending downwards since, there is a decent chance we go right back up into that -5dB+ range in the future.
<br></br>
<hr>

# Summary

While the measurements analyzed above are proprietary for the Spotify platform, it is clear that the values derived indicate a cyclical pattern for the average pop-music listener from generation to generation.</br>

Another significant trend is the increasing volatility of these average values within a single year.</br>
If volatility continues to swing as wildly as it is threatening to, the cyclical patterns we have seen may break completely.</br>

The biggest takeaway from the recent volatility is that music listeners are either:
* Getting bored with popular music much faster than they used to.
* Not listening to popular music as much as they used to, and Billboard is starting to throw darts at the wall trying to get things to stick.

It is important to remember that Billboard is not the deciding factor whether a song is good or not, but they are a powerful influence into what is fed through radio waves and corporate licensed playback.</br>

I'm very excited to see where the trends go from here.</br>
We have seen so many people in recent years go from obscurity to sensation nearly overnight thanks to social media.</br>
Much in the same way industries are disrupted by newcomers, I believe that these new artists will continue to push the increasing volatility seen in this analysis and open the proverbial flood gates for more types of music to be included in the pop spectrum.</br>


<br></br>
<br></br>



<hr>
Thank you for stopping by!
As an added bonus, there is a file in this repository that I have created to help anyone chart their taste in music against the Billboard charts.</br>
If you have a Spotify API key, I highly encourage you to give it a shot!</br>

Open *BONUS_PersonalPlaylist_Plotting.ipynb* and follow the directions in the markup cells.</br>
Be sure to clone the *Average_Features* folder from this repo as well.</br>

This notebook file will take a link to any playlist, whether yours or a friends, and retrieve the average audio features to compare against Billboard.</br>
You can filter the Billboard Chart average data to any time period you wish.</br>

![bonus1](https://user-images.githubusercontent.com/14188580/120395828-4418fc00-c2fb-11eb-91e4-ad8dd4f4ebaa.png)

![bonus2](https://user-images.githubusercontent.com/14188580/120395835-45e2bf80-c2fb-11eb-8e30-932fddff79b7.png)

I listen to a wide variety of different music, but based on 86 of my favorite songs of all time, it is clear to see where my taste varies from Billboard's core demographic.

<br></br>
