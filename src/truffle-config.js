const HDWalletProvider = require("@truffle/hdwallet-provider");
require('dotenv').config()  // Store environment-specific variable from '.env' to process.env
module.exports = {
  networks: {
    live: {
      provider: () => new HDWalletProvider(process.env.PK, process.env.WEB3_HTTP_MAIN),
      port: 8545,
      network_id: "1",
      gas: 6000000,
      gasPrice: 46000000000
    },
    rinkeby: {
      provider: () => new HDWalletProvider(process.env.PK, process.env.WEB3_HTTP_RINKEBY),
      port: 8545,
      network_id: "4",
      gas: 6000000,
      gasPrice: 46000000000
    },
   development: {
     host: "ganache",
     port: 8545,
     network_id: "*"
   },
   test: {
     host: "localhost",
     port: 8545,
     network_id: "*"
   }
  }
  
};
