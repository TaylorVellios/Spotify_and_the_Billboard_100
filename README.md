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

# Overview:
For every song provided by Spotify's streaming service, there is an audio analysis system that attempts to quantify (7) specific musical qualities of a song along with its Tempo and Loudness.</br></br>
The Musical Qualities and Their Descriptions:
### Danceability
How suitable a track is for dancing based on a combination of musical elements including tempo, rhythm stability, beat strength, and overall regularity.</br>
Values: 0.0 - 1.0</br>
Track | Spotify ID | Danceability
------|------------|-------------
[]()||
[The News - July Talk](https://open.spotify.com/track/6aNSpHz5B2sfwLdbWLbwM0?si=e78aa628abd64997)|6aNSpHz5B2sfwLdbWLbwM0|0.506

### Energy
A reepresentation of intensity and activity. Perceptual features contributing to this attribute include dynamic range, perceived loudness, timbre, onset rate, and general entropy.</br>
Values: 0.0 - 1.0</br>
Track | Spotify ID | Energy
------|------------|-------------
[Cotton Shot - Mouthbreather](https://open.spotify.com/track/2Sci0oYsa3Dio0R8sr59Me?si=ecfa461704fa4421)|2Sci0oYsa3Dio0R8sr59Me|0.994
[Faces to Numbers - 36](https://open.spotify.com/track/2R9O6QKvavHqN1P2mGd8mG?si=9642b89858b44277)|2R9O6QKvavHqN1P2mGd8mG|0.000273


### Speechiness
A detection of the presence of spoken words in a track. Values above 0.66 describe tracks that are probably made entirely of spoken words. Values between 0.33 and 0.66 describe tracks that may contain both music and speech, either in sections or layered, including such cases as rap music. Values below 0.33 most likely represent music and other non-speech-like tracks.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Speechiness
------|------------|-------------
[This is Not the End of the World - Neil Hilborn](https://open.spotify.com/track/0546u5xJuGFJzSt8wbcQD1?si=8efbf7a008754a3c)|0546u5xJuGFJzSt8wbcQD1|0.948
[Inglorious - Slowthai feat. Skepta](https://open.spotify.com/track/5HHq5ZKQzjJS5LQ8Mp82NM?si=e1209556599d4ab3)|5HHq5ZKQzjJS5LQ8Mp82NM|0.327
[Lament - Touche Amore](https://open.spotify.com/track/1KA8taNVhk8frOKkrkvs7O?si=f8c375e98f4f4f17)|2W6o5dI0sfWRafsusPWZHJ|0.153
[]()||


### Acousticness
A confidence measure of whether a track is acoustic.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Acousticness
------|------------|-------------
[One of These Days - Owen](https://open.spotify.com/track/2uNpHEnAzP3Ks0kwiZan7P?si=dcdf488d1c4c4626)|2uNpHEnAzP3Ks0kwiZan7P|0.982
[Hangar - 8485](https://open.spotify.com/track/1nXiUKuAu4mHte6Gt2HRdJ?si=3a24580c3d9e480c)|1nXiUKuAu4mHte6Gt2HRdJ|0.000352


### Instrumentalness
A prediction whether a track contains vocals or not, where “Ooh” and “aah” sounds are treated as instrumental elements.</br>
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
[]()||


### Valence
A measure describing the musical positiveness conveyed by a track. Tracks with high valence sound more positive, while tracks with low valence sound more negative.</br>
Values: 0.0 - 1.0
Track | Spotify ID | Valence
------|------------|-------------
[Mint Car - The Cure](https://open.spotify.com/track/3OxKJOPa1AqFkZGBB2HUlW?si=6bd34aa0f58c46a5)|3OxKJOPa1AqFkZGBB2HUlW|0.981
[No One is Ever Going to Want Me - Giles Corey](https://open.spotify.com/track/4McullpiOd45TwEHlOISgs?si=afa81a8db2f546d9)|4McullpiOd45TwEHlOISgs|0.0861
</br>
 
