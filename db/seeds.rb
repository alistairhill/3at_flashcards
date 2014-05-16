DBC=[["<img src='public/images/teaching-large-abi.png'>","abi"],
     ["<img src='public/images/teaching-large-ale-nyc.png'>","alex"],
     ["<img src='public/images/teaching-large-alex.png'>","alex"],
     ["<img src='public/images/teaching-large-alyssa.png'>","alyssa"],
     ["<img src='public/images/teaching-large-brandon.png'>","brandon"],
     ["<img src='public/images/teaching-large-brick.png'>","brick"],
     ["<img src='public/images/teaching-large-chad.png'>","chad"],
     ["<img src='public/images/teaching-large-cahpman.png'>","chapman"],
     ["<img src='public/images/teaching-large-chris.png'>","chris"],
     ["<img src='public/images/teaching-large-dave.png'>","dave"],
     ["<img src='public/images/teaching-large-elliot.png'>","elliot"],
     ["<img src='public/images/teaching-large-florette.png'>","florette"],
     ["<img src='public/images/teaching-large-gabriella.png'>","gaby"],
     ["<img src='public/images/teaching-large-greg.png'>","greg"],
     ["<img src='public/images/teaching-large-jeffery.png'>","jeffery"],
     ["<img src='public/images/teaching-large-jen.png'>","jen"],
     ["<img src='public/images/teaching-large-jill.png'>","jill"],
     ["<img src='public/images/teaching-large-jon.png'>","jon"],
     ["<img src='public/images/teaching-large-jonathan.png'>","jonathan"],
     ["<img src='public/images/teaching-large-karim.png'>","karim"],
     ["<img src='public/images/teaching-large-keren.png'>","keren"],
     ["<img src='public/images/teaching-large-kevin.png'>","kevin"],
     ["<img src='public/images/teaching-large-lateesha.png'>","lateesha"],
     ["<img src='public/images/teaching-large-lloyd.png'>","lloyd"],
     ["<img src='public/images/teaching-large-maria.png'>","maria"],
     ["<img src='public/images/teaching-large-mike-1.png'>","mike"],
     ["<img src='public/images/teaching-large-mike.png'>","mike"],
     ["<img src='public/images/teaching-large-myles.png'>","myles"],
     ["<img src='public/images/teaching-large-nate.png'>","nate"],
     ["<img src='public/images/teaching-large-rebecca.png'>","rebecca"],
     ["<img src='public/images/teaching-large-ryan.png'>","ryan"],
     ["<img src='public/images/teaching-large-sam.png'>","sam"],
     ["<img src='public/images/teaching-large-shereef.png'>","shereef"],
     ["<img src='public/images/teaching-large-sherif.png'>","sherif"],
     ["<img src='public/images/teaching-large-stephanie.png'>","stephanie"],
     ["<img src='public/images/teaching-large-steven.png'>","steven"],
     ["<img src='public/images/teaching-large-strand.png'>","strand"],
     ["<img src='public/images/teaching-large-tanner.png'>","tanner"],
     ["<img src='public/images/teaching-large-tiffany.png'>","tiffany"],
     ["<img src='public/images/teaching-large-topher.png'>","topher"],
     ["<img src='public/images/teaching-large-torey.png'>","torey"],
     ["<img src='public/images/rao.jpg'>","rao"]]


Deck.create(name: "DBC Guess Who?", description: "Do you know the name of the DBC staff? Prove it!")

DBC.each do |card|
  Card.create(question: card[0], answer: card[1], deck_id: 1)
end
