extension Cards {
    public struct Item: Hashable {
        public let category: Category
        public let message: String
        let requirements: Set<Requirement>
        let storable: Bool
        let accept: Set<Effect>
        let reject: Set<Effect>
        
        internal init(_ category: Category,
                      message: String,
                      requirements: Set<Requirement> = [],
                      storable: Bool = true,
                      accept: Set<Effect> = [],
                      reject: Set<Effect> = []) {
            self.category = category
            self.message = message
            self.requirements = requirements
            self.storable = storable
            self.accept = accept
            self.reject = reject
        }
    }
}
