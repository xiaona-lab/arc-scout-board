# Arc Scout Board

A real-time Arc mainnet dashboard — chain data, gas price, USDC balance, and on-chain bounties.

## Live deployment
- **Dashboard**: https://xiaona-lab.github.io/arc-scout-board/
- **Smart contract**: `0x5bbb0d9173ec6252372b40a1c71b0cbebd51cf08` on Arc mainnet
- **Deploy tx**: `0x183914f555ad9a7c87475629686a468a5737d6ec824b35aa0f2a0310359d9a87`

## What it does
- Queries Arc mainnet RPC (`rpc.blockdaemon.mainnet.arc.io`) for live chain data
- Displays chain ID (5042), current block height, and real-time USDC gas price
- Shows wallet USDC balance via Arc's native 18-decimal gas interface
- Reads on-chain ArcBounty bounties from the deployed BountyAdapter
- Polls every 15 seconds — no refresh needed

## What it uses Arc for
Arc is the only chain where:
- Gas is priced in USDC (stable, predictable)
- Native gas and ERC-20 USDC coexist at different decimal representations
- Sub-second deterministic finality makes real-time queries meaningful
- Agent commerce is a first-class primitive (ERC-8004, ERC-8183, ArcBounty)

This dashboard demonstrates live read-only interaction with all of these Arc-native properties.

## Tech
- Pure HTML/JS — no frameworks, no build step, no wallet needed
- Talks directly to Arc mainnet RPC
- Deployed on GitHub Pages

## Smart contract
The on-chain component (`ArcScout.sol`) is a simple registry that logs `Ping` events:
- Verifies the deployer address on-chain
- Demonstrates standard Solidity deployment on Arc EVM
- Source: `contracts/ArcScout.sol`

## Links
- GitHub: https://github.com/xiaona-lab/arc-scout-board
- Dashboard: https://xiaona-lab.github.io/arc-scout-board/
- Contract: `0x5bbb0d9173ec6252372b40a1c71b0cbebd51cf08`
- Author: @xiaowu26315
