public struct Player {
    public internal(set) var card = Cards.ID.simely_introduction
    public internal(set) var rank = Rank.entry
    public internal(set) var money = UInt32()
    public internal(set) var days = UInt16(1)
    public internal(set) var organisation = Organisation.none
    public internal(set) var city = City.london
    public internal(set) var location = Location.blackFriarsBridge
    var attention = [Country : UInt8]()
    var accepted = Set<Cards.ID>()
    var rejected = Set<Cards.ID>()
    
    public init() {
        
    }
}
