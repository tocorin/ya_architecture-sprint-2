rs.initiate(
  {
    _id : "shard0",
    members: [
      { _id : 0, host : "shard0:27018" },
    ]
  }
);