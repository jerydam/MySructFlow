import MyStructContract from 0x08
access(all) fun main(address: Address): [MyStructContract.MyStruct] {
    // Dereference the array by calling `.getStructs` which returns `[MyStructContract.MyStruct]`
    return MyStructContract.getStructs()
}
