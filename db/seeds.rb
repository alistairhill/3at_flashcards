DBC=[["<img src='../images/teaching-large-abi.png'>","abi"],
     ["<img src='../images/teaching-large-ale-nyc.png'>","alex"],
     ["<img src='../images/teaching-large-alex.png'>","alex"],
     ["<img src='../images/teaching-large-alyssa.png'>","alyssa"],
     ["<img src='../images/teaching-large-brandon.png'>","brandon"],
     ["<img src='../images/teaching-large-brick.jpg'>","brick"],
     ["<img src='../images/teaching-large-chad.png'>","chad"],
     ["<img src='../images/teaching-large-cahpman.png'>","chapman"],
     ["<img src='../images/teaching-large-chris.png'>","chris"],
     ["<img src='../images/teaching-large-dave.png'>","dave"],
     ["<img src='../images/teaching-large-elliot.png'>","elliot"],
     ["<img src='../images/teaching-large-florette.png'>","florette"],
     ["<img src='../images/teaching-large-gabriella.png'>","gaby"],
     ["<img src='../images/teaching-large-greg.png'>","greg"],
     ["<img src='../images/teaching-large-jeffery.png'>","jeffery"],
     ["<img src='../images/teaching-large-jen.jpg'>","jen"],
     ["<img src='../images/teaching-large-jill.png'>","jill"],
     ["<img src='../images/teaching-large-jon.png'>","jon"],
     ["<img src='../images/teaching-large-jonathan.png'>","jonathan"],
     ["<img src='../images/teaching-large-karim.png'>","karim"],
     ["<img src='../images/teaching-large-keren.png'>","keren"],
     ["<img src='../images/teaching-large-kevin.png'>","kevin"],
     ["<img src='../images/teaching-large-lateesha.png'>","lateesha"],
     ["<img src='../images/teaching-large-lloyd.png'>","lloyd"],
     ["<img src='../images/teaching-large-maria.png'>","maria"],
     ["<img src='../images/teaching-large-mike-1.png'>","mike"],
     ["<img src='../images/teaching-large-mike.png'>","mike"],
     ["<img src='../images/teaching-large-myles.png'>","myles"],
     ["<img src='../images/teaching-large-nate.png'>","nate"],
     ["<img src='../images/teaching-large-rebecca.png'>","rebecca"],
     ["<img src='../images/teaching-large-ryan.png'>","ryan"],
     ["<img src='../images/teaching-large-sam.png'>","sam"],
     ["<img src='../images/teaching-large-shereef.jpg'>","shereef"],
     ["<img src='../images/teaching-large-sherif.png'>","sherif"],
     ["<img src='../images/teaching-large-stephanie.png'>","stephanie"],
     ["<img src='../images/teaching-large-steven.png'>","steven"],
     ["<img src='../images/teaching-large-strand.png'>","strand"],
     ["<img src='../images/teaching-large-tanner.png'>","tanner"],
     ["<img src='../images/teaching-large-tiffany.png'>","tiffany"],
     ["<img src='../images/teaching-large-topher.jpg'>","topher"],
     ["<img src='../images/teaching-large-torey.png'>","torey"],
     ["<img src='../images/rao.jpg'>","rao"],
     ["<img src='../images/derek.jpg'>","derek"]]


Deck.create(name: "DBC Guess Who?", description: "Do you know the name of the DBC staff? Prove it!")

User.create(name: 'Amy', password_hash: 'amy', email: 'amy@amy.amy')

DBC.each do |card|
  Card.create(question: card[0], answer: card[1], deck_id: 1)
end
