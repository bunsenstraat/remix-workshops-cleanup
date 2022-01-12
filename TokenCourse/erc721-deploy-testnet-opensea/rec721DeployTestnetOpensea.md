In this section, we will use Metamask (an Ethereum wallet) to deploy our contract to the Rinkeby testnet of the Ethereum blockchain, mint an NFT, and look at it on the NFT marketplace OpenSea.

We assume that you have installed Metamask and created a wallet. If not, have a look at the ERC20 Token Deployment section.

### 1. Get testnet token for Rinkeby
In order to make transactions on the testnet, we need Ethereum testnet tokens.

**1.1** Switch your Metamask from “Ethereum Mainnetwork” to “Rinkeby Test Network”.

**1.2** Go to <a href="https://faucet.paradigm.xyz/" 
target="_blank">https://faucet.paradigm.xyz/</a>, enter the address of your account and claim testnet ETH.
You could also use other ropsten faucets like <a href="https://faucet.paradigm.xyz/" target="_blank">https://faucet.paradigm.xyz/</a> or <a href="https://app.mycrypto.com/faucet" target="_blank">https://app.mycrypto.com/faucet</a>. Have a look at the faucets listed on <a href="https://ethereum.org/en/developers/docs/networks/#testnet-faucets" target="_blank">ethereum.org</a> to learn more.

### 2. Contract Deployment
**2.1** In the “DEPLOY & RUN TRANSACTIONS” module of the Remix IDE under “ENVIRONMENT” select “Injected Web3”. It should then ask you to connect your account, which you should confirm.

**2.2** Deploy your token contract and confirm the transaction in Metamask.

**2.3**  Your contract should appear in the “Deployed Contracts” section.

### 3. Mint an NFT
**3.1** Expand your contract in the IDE so you can see the buttons for the functions.

**3.2** Expand the input fields next to the safeMint button. Enter the Ethereum address of the account that is connected to Remix in the “to:” input field. Enter “0” in the input field “tokenID:”. Click on transact.

**3.3** In Metamask click on assets, then click on the “Import tokens” link, and paste the address of your contract in the input field. You can set decimals to 0. 

You should now see the name of the symbol of your token contract (e.g. GEO) in your “Assets” view in Metamask. You should have one of these tokens.

### 4. See your NFT on OpenSea
<a href="https://opensea.io/" 
target="_blank">OpenSea </a> is one of the most popular online marketplace for NFTs. OpenSea also provides a version where you can see assets on the testnet, under <a href="https://testnets.opensea.io/" 
target="_blank">https://testnets.opensea.io/</a>

**4.1** Go to <a href="https://testnets.opensea.io/login" 
target="_blank">https://testnets.opensea.io/login</a>.

**4.2** Connect with your Metamask wallet. You should be redirected to your account <a href="https://testnets.opensea.io/account" target="_blank">https://testnets.opensea.io/account</a> view on OpenSea, where you should be able to see your NFT. You should see the image of your NFT; when you click on it, you should see the name, description, and under properties, also the attributes that you created.