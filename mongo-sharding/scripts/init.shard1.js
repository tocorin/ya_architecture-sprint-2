rs.initiate(
  {
    _id : "shard1",
    members: [
      { _id : 1, host : "shard1:27019" }
    ]
  }
);
