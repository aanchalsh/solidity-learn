import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("AsToken", (m) => {
  const asToken = m.contract("AsToken", [100]);
  return { asToken };
});