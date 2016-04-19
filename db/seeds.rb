artists = [["David Gilmour", "david_gilmour.jpg"],
          ["Criolo", "criolo.jpg"],
          ["Vanessa da Mata", "vanessa_da_mata.jpg"]]

artists.each do | name, img |
   Artist.create( name: name, img: img )
end

artist_songs = {}

artist_songs["David Gilmour"] = [["Breathe", 1973, "The Dark Side of the Moon", "cover1.jpg"],
                                 ["Time", 1973, "The Dark Side of the Moon", "cover1.jpg"],
                                 ["Shine On You Crazy Diamond", 1975, "Wish Your Were Here", "cover2.jpg"]]

artist_songs["Criolo"] = [["Nao existe amor em SP", 2011, "No na orelha", "cover3.jpg"],
                          ["Linha de frente", 2011, "No na orelha", "cover3.jpg"],
                          ["Bogota", 2011, "No na Orelha", "cover3.jpg"]]

artist_songs["Vanessa da Mata"] = [["Não Me Deixe Só", 2009, "Multishow ao vivo: Vanessa da Mata", "cover4.jpg"],
                                   ["Eu Sou Neguinha?", 2009, "Multishow ao vivo: Vanessa da Mata", "cover4.jpg"],
                                   ["Boa Sorte", 2009, "Multishow ao vivo: Vanessa da Mata", "cover4.jpg"]]

artist_songs.each do | artist_name, songs |
   artist = Artist.find_by( name: artist_name )

   songs.each do | name, year, album, img |
      Song.create( name: name, artist_id: artist.id, year: year, album: album, img: img )
   end
end
