resource "spotify_playlist" "Bollerwagen" {
  name = "Bollerwagen"
  tracks = ["7DB85VotY9JdyCVXSovMGf"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "slimShady" {
  name = "Slim Shady"
  tracks = [
    data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id,
  ]
}
