In this section, we will deploy a contract in our browser and test its functionality.

### 1. Deploy the contract
- Click on the “Deploy & run transactions” icon in the sidebar.
- Select your contract “EduCoin” and click on the “Deploy” button.

### 2. Test the functions
Expand the token contract functions in the IDE.

#### 2.1 Decimals
Click on the “decimals” button to call the decimals() function.
It should return “18”.

####  2.2 Name
Click on the “name” button to call the name() function.
It should return “EduCoin”.

#### 2.3 Symbol
Click on the “symbol” button to call the symbol() function.
It should return “EDC”.

#### 2.4 Total supply
Click on the “totalSupply” button to call the totalSupply() function.
It should return 1000000000000000000000 (1000*10**18).

#### 2.5 Balance of
- Go to the “ACCOUNT” section of the sidebar and copy the displayed address by using the copy icon next to it.
- Paste the address in the input field next to the “balanceOf” function button and click on the button.
It should return 1000000000000000000000 (1000*10**18).

#### 2.6 Transfer
We will transfer EduCoin from one account to a second account.
- Go to the “ACCOUNT” section of the sidebar click on the displayed address which opens a dropdown, select the second address displayed and copy its address.
- Open the dropdown and select the first account again, because this is the account that we want to use to make the transfer.
- Paste the address in the input field next to the “transfer” function button, input the number 500000000000000000000, and click on the button.
- If you check the balances for the first account and second account, they should both return the amount 500000000000000000000.

#### 2.7 Approve
We will allow account 1 to spend tokens on behalf of account 2.
- Go to the “Account” section, copy the address of account 1, then set it to account 2 again.
- In the approve function, enter the address of account 1 as the input for spender and set the amount to 500000000000000000000.

#### 2.8 Allowance
- Next to the “allowance” button enter the address of account 2 as the owner and account 1 as the spender, click on the button.
It should return 1000000000000000000000.

#### 2.9 TransferFrom
account 1 will transfer 250000000000000000000 tokens from account 2 to its own account.
- Select account 1 in the “ACCOUNT” section.
- Next to the “transferFrom” button enter the address of account 2 as the sender and account 1 as the recipient, enter 250000000000000000000 as the amount and click on the button.
- Check the balances of accounts one and two, they should return 750000000000000000000 and 250000000000000000000.
