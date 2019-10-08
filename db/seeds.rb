Game.create!([
  {title: "Cyberpunk 2077", summary: "The upcoming RPG from CD Projekt RED based on the Cyberpunk 2020 tabletop RPG created by Mike Pondsmith. In Cyberpunk 2077 you play as V — a hired gun on the rise — and you just got your first serious contract. In a world of cyber-enhanced street warriors, tech-savvy netrunners and corporate lifehackers, today you take your first step towards becoming an urban legend.", image_url: "https://cdn3.dualshockers.com/wp-content/uploads/2019/10/cyberpunk_2077_map_is_denser_than_the_witcher_3_wild_hunt_gaming_instincts_tv_article_website_youtube_thumbnail.jpg", video_url: "https://youtu.be/FknHjl7eQ6o"},
  {title: "League of Legends", summary: "Popular game in the MOBA genre. Will tilt you off the planet and destroy hope in humanity.", image_url: "https://knowtechie.com/wp-content/uploads/2019/05/league-of-legends.jpg", video_url: "https://youtu.be/8fwwGCr1-po"},
  {title: "Doom Eternal", summary: "Rip and tear until there's nothing left.", image_url: "https://cdn.wccftech.com/wp-content/uploads/2019/06/doom_eternal_key_art.jpg", video_url: "https://youtu.be/SfeUDj_53D0"}
])
Tag.create!([
  {name: "RPG"},
  {name: "FPS"},
  {name: "Multiplayer"}
])
User.create!([
  {name: "Justin", email: "jcrabtree@gmail.com", password_digest: "123"},
  {name: "Alexis", email: "acrabtree@gmail.com", password_digest: "123"},
  {name: "John", email: "john@gmail.com", password_digest: "123"}
])
Favorite.create!([
  {user_id: 1, game_id: 1},
  {user_id: 2, game_id: 2},
  {user_id: 3, game_id: 3}
])
GameTag.create!([
  {game_id: 1, tag_id: 1},
  {game_id: 1, tag_id: 2},
  {game_id: 2, tag_id: 2},
  {game_id: 3, tag_id: 3}
])
