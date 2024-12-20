import MyStructContract from 0x08 

transaction(id: UInt64, name: String) {
    prepare(account: &Account) {
        
    }

    execute {
        // Call the addMyStruct function
        MyStructContract.addMyStruct(id: id, name: name)
        log("Struct added successfully!")
    }
}

