public struct Player {
    public internal(set) var card = Card.ID.simely_introduction
    public internal(set) var rank = Rank.entry
    public internal(set) var money = UInt32()
    public internal(set) var days = UInt16(1)
    public internal(set) var organisation = Organisation.none
    public internal(set) var location = Location.london
    var attention = [Country : UInt8]()
    var accepted = Set<Card.ID>()
    var rejected = Set<Card.ID>()
}
