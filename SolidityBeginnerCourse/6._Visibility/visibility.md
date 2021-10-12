The `visibility` specifier is used to control who has access to functions and state variables.

There are four types of visibilities that are defined with the keywords: `external`, `public`, `internal`, and `private`. 

They regulate if functions and state variables can be called from inside the contract, from contracts that derive from the contract (child contracts), or other contracts and transactions.

|              	|    -    	| Inside Contract 	| Child Contract 	| Other Contracts 	|
|--------------	|---------	|-----------------	|----------------	|-----------------	|
| **private**  	|    -    	|       Yes       	|       No       	|        No       	|
| **internal** 	|    -    	|       Yes       	|       Yes      	|        No       	|
| **public**   	|    -    	|       Yes       	|       Yes      	|       Yes       	|
| **external** 	|    -    	|        No       	|       No       	|       Yes       	|

*State variables can not be `external`.

In this example, we have two contracts, the `Base` contract (Line 4) and the `Child` contract (Line 55) which inherits the functions and state variables from the `Base` contract.

When you uncomment the `testPrivateFunc` (Line 58) you get an error because the child contract doesn’t have access to the private function `privateFunc` from the `Base` contract.

If you compile and deploy the two contracts you will not be able to call the functions `privateFunc` and `internalFunc` directly only via `testPrivateFunc` and `testInternalFunc`.