public struct Cards {
    let items: [ID : Item] = [
        .simely_introduction : .init(.character(.simely),
                                     message: "Hello world")]
    
    public init() {
        
    }
    
    public subscript(_ id: ID) -> Item {
        items[id]!
    }
}
