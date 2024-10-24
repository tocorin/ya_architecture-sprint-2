use somedb
for(var i = 0; i < 1500; i++) db.helloDoc.insert({age:i, name:"ly"+i})
db.helloDoc.countDocuments() 