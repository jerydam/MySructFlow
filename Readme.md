# MyStructContract on Flow Blockchain

This Cadence program implements a contract called `MyStructContract` on the Flow blockchain. It defines a custom `Struct` to store data and demonstrates key functionalities such as adding and retrieving structured data. This contract serves as an example for developers to learn about Cadence syntax, data storage, and function execution.

## Description

`MyStructContract` is a smart contract written in Cadence, the language used for building decentralized applications on the Flow blockchain. The contract includes:
- A custom `Struct` named `MyStruct`.
- An array to store instances of `MyStruct`.
- A function to add a new `MyStruct` instance to the array.
- A function to retrieve all stored `MyStruct` instances.

This example introduces fundamental concepts of Cadence and demonstrates how to interact with smart contracts using transactions.

## Getting Started

### Prerequisites

To run this program, you need:
- Access to the Flow blockchain emulator or testnet.
- A tool like Flow CLI or the Flow Playground to deploy and interact with contracts.

### Contract Code

Here’s the `MyStructContract` code:

```cadence
access(all) contract MyStructContract {

    // Define a Struct
    access(all) struct MyStruct {
        access(all) let id: UInt64
        access(all) let name: String

        init(id: UInt64, name: String) {
            self.id = id
            self.name = name
        }
    }

    // Array to store structs
    access(all) var myStructs: [MyStruct]

    // Initialize the contract with an empty array
    init() {
        self.myStructs = []
    }

    // Function to add a struct to the array
    access(all) fun addMyStruct(id: UInt64, name: String) {
        let newStruct = MyStruct(id: id, name: name)
        self.myStructs.append(newStruct)
    }

    // Function to retrieve the structs
    access(all) fun getStructs(): [MyStruct] {
        return self.myStructs
    }
}

```

### Deploying the Contract

1. **Use Flow Playground or CLI**  
   Deploy the `MyStructContract` on Flow using your preferred development environment. Ensure the contract is deployed at a specific address (e.g., `0x08`).

### Transaction Code

To add a new `MyStruct` to the contract, use the following transaction:

```cadence
import MyStructContract from 0x08 

transaction(id: UInt64, name: String) {
    prepare() {
        
    }

    execute {
        // Call the addMyStruct function
        MyStructContract.addMyStruct(id: id, name: name)
        log("Struct added successfully!")
    }
}



```

### Executing Program

1. **Deploy Contract:**  
   Deploy the `MyStructContract` using the Flow Playground or CLI.

2. **Run the Transaction:**  
   Execute the transaction with test values. For example, use `id: 1` and `name: "Example Item"`.

3. **Retrieve Data (Optional):**  
   To verify the stored data, use a script like this:

   ```cadence
   import MyStructContract from 0x08

   access(all) fun main(address: Address): [MyStructContract.MyStruct] {
       return MyStructContract.getStructs()
   }
   ```

## Authors

Jeremiah Oyeniran Damilare  
[@Jerydam00]( https://x.com/Jerydam00)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.