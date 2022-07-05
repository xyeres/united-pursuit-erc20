const hre = require("hardhat");

async function main() {
  const UPToken = await hre.ethers.getContractFactory("UnitedPursuitToken")
  const upToken = await UPToken.deploy("1000000000000000000000000000")

  await upToken.deployed()

  console.log("Token deployed to:", upToken.address)
}

main()
  .then(() => process.exit(0))
  .catch((err) => {
    console.error(err)
    process.exit(1)
  })