# 🧱 Solidity Learning Repo

A hands-on Solidity smart contract learning project built with **Hardhat v3** on macOS.

---

## 🛠 Tech Stack

- **Solidity** `^0.8.28`
- **Hardhat** `v3.x` (ESM mode)
- **Hardhat Ignition** for deployments
- **Node.js** `v22+`

---

## 📁 Project Structure

```
solidity-learn/
├── contracts/
│   ├── 1_Bank.sol
│   ├── 2_Voting.sol
│   ├── 3_Lottery.sol
│   └── 4_AsToken.sol
├── ignition/
│   └── modules/
│       ├── Bank.ts
│       ├── Voting.ts
│       ├── Lottery.ts
│       └── AsToken.ts
├── hardhat.config.js
└── package.json
```

---

## 🚀 Getting Started

### 1. Install dependencies
```bash
npm install
```

### 2. Compile contracts
```bash
npx hardhat compile
```

### 3. Deploy a contract
```bash
npx hardhat ignition deploy ignition/modules/Bank.ts
npx hardhat ignition deploy ignition/modules/Voting.ts
npx hardhat ignition deploy ignition/modules/Lottery.ts
npx hardhat ignition deploy ignition/modules/AsToken.ts
```

---

## 📜 Contracts

### 🐷 Bank
Deposit ETH into a contract. Only the owner can withdraw.

**Concepts:** `payable`, `msg.sender`, `msg.value`, `require`

---

### 🗳️ Voting
Deploy with a list of candidates. Each address can vote once. Get the winner.

**Concepts:** `structs`, `mappings`, `arrays`, `constructor arguments`

---

### 🎰 Lottery
Players pay 0.01 ETH to enter. Owner picks a random winner who gets the pot.

**Concepts:** `events`, `randomness`, `address arrays`, `ether transfers`

---

### 🪙 MyToken
A simple ERC-20-style token. Mint on deploy, transfer between addresses.

**Concepts:** `events`, `mappings`, `token standards`

---

## ⚙️ Setup Notes

- This project uses **ESM** (`"type": "module"` in `package.json`)
- Use `import` not `require` in all scripts
- Hardhat v3 uses **Ignition** for deployments — no `scripts/deploy.js` needed
- Always run Hardhat commands from the **project root**, not inside `contracts/`

---

## 📚 Learning Resources

- [Solidity by Example](https://solidity-by-example.org)
- [CryptoZombies](https://cryptozombies.io)
- [Hardhat Docs](https://hardhat.org/docs)
- [Ethereum Docs](https://ethereum.org/en/developers/docs)