rs.initiate(
    {
      _id : "config_server",
         configsvr: true,
      members: [
        { _id : 0, host : "configSrv0:27017" },
        { _id : 1, host : "configSrv1:27017" },
        { _id : 2, host : "configSrv2:27017" }
      ]
    }
);