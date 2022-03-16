async function main() {
   // Grab the contract factory 
   const PidoxyNFT = await ethers.getContractFactory("PidoxyNFT");

   // Start deployment, returning a promise that resolves to a contract object
   const pidoxyNFT = await PidoxyNFT.deploy(); // Instance of the contract 
   console.log("Contract deployed to address:", pidoxyNFT.address);
}

main()
  .then(() => process.exit(0))
  .catch(error => {
    console.error(error);
    process.exit(1);
  });