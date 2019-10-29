Game.create!([
  {title: "Cyberpunk 2077", summary: "The upcoming RPG from CD Projekt RED based on the Cyberpunk 2020 tabletop RPG created by Mike Pondsmith. In Cyberpunk 2077 you play as V — a hired gun on the rise — and you just got your first serious contract. In a world of cyber-enhanced street warriors, tech-savvy netrunners and corporate lifehackers, today you take your first step towards becoming an urban legend.", image_url: "https://cdn3.dualshockers.com/wp-content/uploads/2019/10/cyberpunk_2077_map_is_denser_than_the_witcher_3_wild_hunt_gaming_instincts_tv_article_website_youtube_thumbnail.jpg", video_url: "https://youtu.be/FknHjl7eQ6o"},
  {title: "League of Legends", summary: "Popular game in the MOBA genre. Will tilt you off the planet and destroy hope in humanity.", image_url: "https://knowtechie.com/wp-content/uploads/2019/05/league-of-legends.jpg", video_url: "https://youtu.be/8fwwGCr1-po"},
  {title: "Doom Eternal", summary: "Rip and tear until there's nothing left.", image_url: "https://cdn.wccftech.com/wp-content/uploads/2019/06/doom_eternal_key_art.jpg", video_url: "https://youtu.be/SfeUDj_53D0"},
  {title: "Yakuza 0", summary: "Yakuza 0 is a prequel set in 1988 to the Yakuza series of games developed by Sega, taking place before the first Yakuza game. Like in the previous games, the game's main setting is the fictional town of Kamurocho in Tokyo.", image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1rki.jpg", video_url: "https://youtu.be/QTM1PP5d6ss"},
  {title: "Persona 5", summary: "Persona 5, a turn-based JRPG with visual novel elements, follows a high school student with a criminal record for a crime he didn't commit. Soon he meets several characters who share similar fates to him, and discovers a metaphysical realm which allows him and his friends to channel their pent-up frustrations into becoming a group of vigilantes reveling in aesthetics and rebellion while fighting corruption.", image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1r76.jpg", video_url: "https://youtu.be/VcQGMdqMoAc"},
  {title: "Bloodborne", summary: "Introducing Bloodborne, the latest Action RPG from renowned Japanese developer FromSoftware, makers of the hit Dark Souls series, coming exclusively to PlayStation 4. Face your fears as you search for answers in the ancient city of Yharnam, now cursed with a strange endemic illness spreading through the streets like wildfire. Danger, death and madness lurk around every corner of this dark and horrific world, and you must discover its darkest secrets in order to survive.", image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1rba.jpg", video_url: "https://youtu.be/rMxEpPCSH5A"},
  {title: "Resident Evil 2", summary: "In Resident Evil 2, the classic action, tense exploration, and puzzle solving gameplay that defined the Resident Evil series returns. Players join rookie police officer Leon Kennedy and college student Claire Redfield, who are thrust together by a disastrous outbreak in Raccoon City that transformed its population into deadly zombies. Both Leon and Claire have their own separate playable campaigns, allowing players to see the story from both characters’ perspectives. The fate of these two fan favorite characters is in players hands as they work together to survive and get to the bottom of what is behind the terrifying attack on the city. Will they make it out alive?", image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1ir3.jpg", video_url: "https://youtu.be/CWl0hOeJvzA"},
  {title: "Hollow Knight", summary: "Hollow Knight is a challenging, beautiful action adventure game set in the vast, inter-connected underground kingdom of Hallownest. A 2D action game with an emphasis on skill and exploration, Hollow Knight has you fighting a fearsome host of deadly creatures, avoiding intricate traps and solving ancient mysteries as you make your own way through fungal wastes, forests of bone, and ruined underground cities.", image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/co1rgi.jpg", video_url: "https://youtu.be/-qVVO69Cgcs"},
  {title: "NieR Automata", summary: "The game is set in the same universe as NieR, a spin-off of the Drakengard series, and takes place several thousand years after the events of that game. Humanity has fled to the moon to escape an invading machine army from another world. Combat androids called YoRHa remain on the planet to fight in a proxy war against the invaders.", image_url: "https://images.igdb.com/igdb/image/upload/t_cover_big/qhok1pi6egmfizjjii7r.jpg", video_url: "https://youtu.be/K6Y4wC063NE"}
])

User.create!([
  {name: "John", email: "john@gmail.com", password_digest: "$2a$12$u0yA4LCj1ipyDrJb3jTRq.eF/IJqWS6uaW2I3BnwGHc1kF8LDmT0S"},
  {name: "Bob", email: "bob@gmail.com", password_digest: "$2a$12$Zq4hOWvI7ZGOmbzv362vf.oksFy7z8xwFKypWuV1CcNPGj9KOMKZC"},
  {name: "Billy", email: "billy@gmail.com", password_digest: "$2a$12$8k49ZDzETNUBSGM3gptghuE6ERb6XJjlbmEefmUFq8R05hBX9PAD."},
  {name: "Clark", email: "clark@gmail.com", password_digest: "$2a$12$trbGI11bGzWi2OipF/I6iOpTZXpPY5Swfc/YIj9sHsq5anFyTXqp2"},
  {name: "Bruce", email: "bruce@gmail.com", password_digest: "$2a$12$pzmnBdCJ3BElg.QNDf20MenjgRco52nl6Tuc9k1WxYtu.NlleojAC"},
  {name: "peter", email: "peter@gmail.com", password_digest: "$2a$12$P9MIQZr9Bq5ax4chYeYowe5UbDTP4n5tXSlQ8sS6K0seuwFy6D05i"},
  {name: "tim", email: "tim@gmail.com", password_digest: "$2a$12$3TWV2.OWY75pe2vDs8H1AeSoRVhyqd642Uqom5pbOhxgTLo5d19E6"},
  {name: "ash", email: "ash@gmail.com", password_digest: "$2a$12$N1KwGHA9Jx21cIA9AA7VU.bGjdrh6/DMPFkq0Eh3ZzdF5Sa02Z4im"},
  {name: "test", email: "g@gmail.com", password_digest: "$2a$12$xX.6tIyHF9PQvMKBFdnlNOv5Iyx3La4eUQRq7buvle.090/8Z/okC"},
  {name: "justin", email: "jcrabtree@gmail.com", password_digest: "$2a$12$GSyySJ9SOGxwizBdvY3jHOEDZDLrmgamPx/pWyhD./vpp4sIoFQNK"}
])

Tag.create!([
  {name: "RPG"},
  {name: "FPS"},
  {name: "Multiplayer"},
  {name: "Platformer"},
  {name: "Horror"},
  {name: "Character-Action"},
  {name: "Adventure"},
  {name: "Third-Person Shooter"}
])

GameTag.create!([
  {game_id: 1, tag_id: 1},
  {game_id: 1, tag_id: 2},
  {game_id: 2, tag_id: 3},
  {game_id: 3, tag_id: 2},
  {game_id: 4, tag_id: 6},
  {game_id: 5, tag_id: 1},
  {game_id: 6, tag_id: 1},
  {game_id: 6, tag_id: 5},
  {game_id: 6, tag_id: 7},
  {game_id: 7, tag_id: 5},
  {game_id: 7, tag_id: 7},
  {game_id: 7, tag_id: 8},
  {game_id: 8, tag_id: 4},
  {game_id: 8, tag_id: 7},
  {game_id: 9, tag_id: 1},
  {game_id: 9, tag_id: 6},
  {game_id: 9, tag_id: 7}
])

Favorite.create!([
  {user_id: 4, game_id: 1},
  {user_id: 4, game_id: 2},
  {user_id: 4, game_id: 3},
  {user_id: 5, game_id: 1}
])
