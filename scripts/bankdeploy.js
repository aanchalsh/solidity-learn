import { ethers } from "hardhat";

async function main() {
  const bank = await hre.ethers.getContractFactory("bank");
  const bankContract = await bank.deploy();

  await bankContract.waitForDeployment();

  console.log("bank deployed to:", await bankContract.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});