# Using the Spotify API to Analyze the Billboard Top 100
Comparing the Audio Features of Billboard Top 100 Tracks From the Last 30 years.

## Purpose
To populate, transform, and analyze data for popular music, as dictated by the Billboard Top 100 Charts, using Spotify's API.</br>
Is it possible for Spotify to quantify the changes in popular music over the last 30 years?</br>
[Data of the Billboard Top 100 Charts](https://www.kaggle.com/dhruvildave/billboard-the-hot-100-songs)

## Resources:
[Spotipy](https://spotipy.readthedocs.io/en/2.18.0/) - Python Library for the Spotify API
````
pip install spotipy
````
Pandas
````
pip install pandas
````
Matplotlib
````
pip install matplotlib
````
Numpy
````
pip install numpy
````

</br>

# Overview:
For every song provided by Spotify's streaming service, there is an audio analysis system that attempts to quantify (7) specific musical qualities of a song along with its Tempo and Loudness.</br></br>
The Musical Qualities and Their Descriptions:
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


# Data Collection
In this repository is a file named Clean_Billboard.csv which contains all of the Billboard Top 100 Songs for every week since its inception in 1958.</br>
The Spotify_and_Billboard.ipynb file is the first notebook used to clean and collect information based on this initial .csv file.</br>

*For anyone who wants to use the Spotipy library to access the Spotify API, the authorization system in Cell2 requires a python file in the same directory as this with two variables: client_id and client_secret set to your individual access tokens.*</br>

### Preparation
The Billboard Data at the time of creating these notebooks is 327,387  rows, making filtering a crucial step before anything can be accomplished.</br>

![filter](https://user-images.githubusercontent.com/14188580/116272741-c5063600-a746-11eb-8508-dd6da47937b6.PNG)

By selecting a 5-year range of time, in this example - from 2015 to 2020, we end up with 26,100 songs.<br>
Billboard frequently charts the same song from week to week until it loses steam.</br>
In order to remove songs that chart multiple times it is important to add a column to the dataframe that is a list of all dates a song was included in the Top 100.</br>
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

The further back on the Billboard charts you go, the more likely it is that a song will not be on the platform.</br>

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

Once all possible tracks have IDs populated and all failed tracks (if any) have been dropped, we can obtain the audio features for each unique track.</br>

![features_df](https://user-images.githubusercontent.com/14188580/116278716-62b03400-a74c-11eb-98e2-fef5c9a67a22.PNG)
</br>
The image above is a snapshot of the new columns we have just added to our DataFrame.</br>
At this point we have obtained all of the data that we need.</br>

The last step in this notebook is to explode the dataframe and create a new dataframe with the average values of each Audio Feature by week.</br>
After exploding our results based on the total_weeks column, our final output will look like the following DataFrame:

![averages](https://user-images.githubusercontent.com/14188580/116282476-7067b880-a750-11eb-9ddc-3f0d3f7c1e2c.PNG)

<br></br>

# Analysis

After a very lengthy process of accumulating Spotify IDs and searching for their respective Audio Features, I gathered all of the data into a combined .csv file that contains the average value for each Audio Feature grouped by each week of the Billboard Top 100 since January of 1990.</br>
</br>
Due to the wide range of musical genres available in a single week sample of the Billboard 100, combined with the reliable results of Spotify's audio analysis system, any noticeable change in one of these metrics over time would suggest a noteworthy change in value weight.<br></br>

![avg_features](https://user-images.githubusercontent.com/14188580/116900731-b2847480-abfe-11eb-8bc2-2b3690aefbd1.png)
<br></br>


From a zoomed out perspective, it is easy to tell where the musical priorities of popular music stand.</br>
### Instrumentalness
While instrumentation without vocals has never been a common factor in pop music, what looks to be a faint heartbeat in the 90s has barely been breathing since 2007.</br>
![instrumentalism](https://user-images.githubusercontent.com/14188580/116900720-ae585700-abfe-11eb-90a6-a23c10b59022.png)

<br></br>

### Speechiness
This one is a difficult feature to analyze due to the distribution of its values across music.</br>
![speechiness_hist](https://user-images.githubusercontent.com/14188580/116311332-c51b2b80-a770-11eb-9093-9541f938ecd5.png)
</br>
As mentioned in the overview, higher confidence levels of Speechiness are only hit when there is a voice speaking without music.</br>
In my research of tracks outside of the Billboard charts, the highest levels of Speechiness in music are reserved almost exclusively for Rap and Country (guess they're not so different after all..)</br>
This may indicate an algorithmic emphasis on perceived vocal:music loudness by Spotify.</br>
In any case, the rising average of speechiness is significant now that we have stayed above 0.1 for the last 5 years when the mean is so close to 0.</br>
![speechiness](https://user-images.githubusercontent.com/14188580/116900703-a7314900-abfe-11eb-884f-aacdade9ff91.png)
What will be a recurring theme throughout the rest of this analysis is the near-sinusoidal shape Speechiness takes.</br>
What is most interesting to me in this long-term cyclical pattern is a trend of increasing intensity per cycle.<br></br>

### Acousticness
Acousticness is a funny one, from 1990 it is clear that there is a large single cycle, but zooming in there are annual trends that cannot be ignored.</br>
![acoustic](https://user-images.githubusercontent.com/14188580/116410325-479bfd80-a7fa-11eb-9af1-c6492fe33212.png)
</br>
Over the last 11 years we are seeing a significant upwards trend in Acousticness.</br>
What makes this so funny to me are the annual mini-cycles that have been flying up every holiday season.</br>
Since 2010, there is severe upwards movement in acousticness leading into the new year, where it then falls back to its steady growth line.</br>
This intensity has been growing exponentially over the last 3 years.
</br>
It's very difficult for me not to assume this is due to what we can call a "Holiday Effect".</br>
It is no secret in the music world that artists will strategically release music based on the time of year.</br>
Summer is most notable for positive bouncy radio hits, maybe the end of the year is a market in its own.<br></br>

### Liveness
![liveness](https://user-images.githubusercontent.com/14188580/116900668-9da7e100-abfe-11eb-942f-e7f39247315a.png)
</br>With very little change in average over the last 30 years, Liveness shows very strong yearly trends where Billboard seems to really lean into it around the new year.</br>
These yearly cycles are very similar to Acousticness, but the most rigid cycle patterns can be seen from 2002 to 2010, ending with the largest peak.</br>
![liveness_2002-2012](https://user-images.githubusercontent.com/14188580/116900660-9aacf080-abfe-11eb-8ffe-22b3aba51afb.png)

</br>

Since Liveness is typically a polarized value, the consistent yearly movement between minimum and maximum is caused by the ratio of songs that fall under a "live" category included in the week.</br>
This theory was confirmed with some Pandas magic.</br>
I added a column to the dataframe of weekly averages that includes the number of tracks per week that have a Liveness value greater than 0.4.</br>
Sorting the dataframe by liveness_avg is VERY close to sorting by this new column of song counts.</br>

### Valence

### Danceability

### Energy

