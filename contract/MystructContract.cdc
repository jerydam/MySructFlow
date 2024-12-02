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
