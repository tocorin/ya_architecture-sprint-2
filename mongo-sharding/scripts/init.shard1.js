rs.initiate(
  {
    _id : "shard1",
    members: [
      { _id : 0, host : "shard1-0:27017" },
    ]
  }
);
