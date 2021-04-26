# Spotify_and_the_Billboard_100
Comparing the Audio Features of Billboard Top 100 Tracks From the Last 30 years.

## Purpose
To populate, transform, and analyze data for popular music, as dictated by the Billboard Top 100 Charts, using Spotify's API.</br>
Is it possible for Spotify to quantify the changes in popular music over the last 30 years?</br>

## Resources:
````
spotipy
pandas
matplotlib
numpy
````
</br>
Data of the Billboard Top 100 Charts </br>
[Clean_Billboard.csv](https://www.kaggle.com/dhruvildave/billboard-the-hot-100-songs)
</br>

## Overview:
For every song provided by Spotify's streaming service, there is an audio analysis system that attempts to quantify (7) specific musical qualities of a song along with its Tempo and Loudness.</br></br>
The Musical Qualities and Their Descriptions:
### Danceability
How suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity.</br>
Values: 0.0 - 1.0</br>
### Energy
A reepresentation of intensity and activity. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.</br>
Values: 0.0 - 1.0</br>
### Speechiness
A detection of the presence of spoken words in a track. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.</br>
Values: 0.0 - 1.0
### Acousticness
A confidence measure of whether a track is acoustic.</br>
Values: 0.0 - 1.0
### Instrumentalness
A prediction whether a track contains vocals or not, where “Ooh” and “aah” sounds are treated as instrumental elements.</br>
Values: 0.0 - 1.0
A Detection of the presence of an audience in the recording.</br>
Values: 0.0 - 1.0
### Valence
A measure describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive, while tracks with low valence sound more negative.</br>
Values: 0.0 - 1.0

</br>
 
