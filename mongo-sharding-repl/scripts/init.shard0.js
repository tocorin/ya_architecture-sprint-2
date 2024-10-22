rs.initiate(
  {
    _id : "shard0",
    members: [
      { _id : 0, host : "shard0-0:27017" },
      { _id : 1, host : "shard0-1:27017" },
      { _id : 2, host : "shard0-2:27017" },
    ]
  }
);