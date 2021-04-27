# Spotify_and_the_Billboard_100
Comparing the Audio Features of Billboard Top 100 Tracks From the Last 30 years.

## Purpose
To populate, transform, and analyze data for popular music, as dictated by the Billboard Top 100 Charts, using Spotify's API.</br>
Is it possible for Spotify to quantify the changes in popular music over the last 30 years?</br>
[Data of the Billboard Top 100 Charts](https://www.kaggle.com/dhruvildave/billboard-the-hot-100-songs)

## Resources:
````
spotipy
pandas
matplotlib
numpy
````

<br></br>

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
The Billboard Data at the time of creating these notebooks is 326,687 rows, making filtering a crucial step before anything can be accomplished.</br>

![filter](https://user-images.githubusercontent.com/14188580/116272741-c5063600-a746-11eb-8508-dd6da47937b6.PNG)

By selecting a 5-year range of time, in this example - from 2015 to 2020, we end up with 26,100 songs.<br>
Billboard frequently charts the same song from week to week until it loses steam.</br>
In order to remove songs that chart multiple times it is important to add a column to the dataframe that is a list of all dates a song was included in the Top 100.</br>

![consolidate](https://user-images.githubusercontent.com/14188580/116271272-71471d00-a745-11eb-9110-938850aa13e2.PNG)
</br>
The image above is the end-result of the consolidation stage of this notebook.</br>
As you can see, we went from 26,100 rows to 2500.</br>
The last thing we want to do is ping the Spotify API Server more than we have to. You are welcome Spotiy..</br>

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
![found_ids](https://user-images.githubusercontent.com/14188580/116240405-67afbc00-a729-11eb-83a4-ea398238dc5d.PNG)
</br>

Any track that failed the automated search will have a NaN value in the "spotify_id" column.</br>
For the 2015-2020 filter range, 15 Songs included odd characters that broke our query or are not available on Spotify.</br>

The further back on the Billboard charts you go, the more likely it is that a song will not be on the platform.</br>
In a separate search, in a range from 1990-2000, at this step in the process I had 331 songs to manually search.</br>

The Manual Search cell allows the user to input a string as a workaround to the many ways Billboard 100 titles can impede the Spotipy query.</br>
This part can be time consuming, especially when double checking within the Spotify system whether a song is available or not, or whether Billboard has a different name/artist convention than Spotify.</br>

In the event that a track is not available on the Spotify Platform, "pass" should be input for the prompt in this manual searching cell.</br>
For this example, no tracks need to be dropped, all NaN values have been filled by manually searching.</br>
When I searched 1990-2000 as mentioned above, 133 out of 331 songs were not able to be found on Spotify.</br>
![manual search](https://user-images.githubusercontent.com/14188580/116242064-2a4c2e00-a72b-11eb-9e87-9472267361cd.PNG)
</br>

## Data Collection - Spotify Audio Features

Once all possible tracks have IDs populated and all failed tracks (if any) have been dropped, we can obtain the audio features for each unique track.</br>

![features_df](https://user-images.githubusercontent.com/14188580/116278716-62b03400-a74c-11eb-98e2-fef5c9a67a22.PNG)
</br>
The image above is a snapshot of the new columns we have just added to our DataFrame./br>
At this point we have obtained all of the data that we need.
</br>

The last step in this notebook is to explode the dataframe and create a new dataframe with the average values of each Audio Feature by week.</br>

