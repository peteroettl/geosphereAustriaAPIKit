// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct StationMetadataDto: Codable, Identifiable {
    /// StationMetadataType
    ///
    /// An enumeration.
    public var type: StationMetadataType
    public var id: String
    public var name: String
    /// Bundesland
    ///
    /// An enumeration.
    public var state: Bundesland?
    public var lat: Double
    public var lon: Double
    public var altitude: Double?
    public var validFrom: Date
    public var validTo: Date
    public var hasSunshine: Bool?
    public var hasGlobalRadiation: Bool?
    public var isActive: Bool?
    /// List of sub-stations of this station. Only populated if type == COMBINED.
    public var subStations: [StationMetadataDto]?
    /// Matches
    public var isMatches: Bool

    public init(type: StationMetadataType, id: String, name: String, state: Bundesland? = nil, lat: Double, lon: Double, altitude: Double? = nil, validFrom: Date, validTo: Date, hasSunshine: Bool? = nil, hasGlobalRadiation: Bool? = nil, isActive: Bool? = nil, subStations: [StationMetadataDto]? = nil, isMatches: Bool? = nil) {
        self.type = type
        self.id = id
        self.name = name
        self.state = state
        self.lat = lat
        self.lon = lon
        self.altitude = altitude
        self.validFrom = validFrom
        self.validTo = validTo
        self.hasSunshine = hasSunshine
        self.hasGlobalRadiation = hasGlobalRadiation
        self.isActive = isActive
        self.subStations = subStations
        self.isMatches = isMatches ?? true
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.type = try values.decode(StationMetadataType.self, forKey: "type")
        self.id = try values.decode(String.self, forKey: "id")
        self.name = try values.decode(String.self, forKey: "name")
        self.state = try values.decodeIfPresent(Bundesland.self, forKey: "state")
        self.lat = try values.decode(Double.self, forKey: "lat")
        self.lon = try values.decode(Double.self, forKey: "lon")
        self.altitude = try values.decodeIfPresent(Double.self, forKey: "altitude")
        self.validFrom = try values.decode(Date.self, forKey: "valid_from")
        self.validTo = try values.decode(Date.self, forKey: "valid_to")
        self.hasSunshine = try values.decodeIfPresent(Bool.self, forKey: "has_sunshine")
        self.hasGlobalRadiation = try values.decodeIfPresent(Bool.self, forKey: "has_global_radiation")
        self.isActive = try values.decodeIfPresent(Bool.self, forKey: "is_active")
        self.subStations = try values.decodeIfPresent([StationMetadataDto].self, forKey: "sub_stations")
        self.isMatches = try values.decodeIfPresent(Bool.self, forKey: "matches") ?? true
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(type, forKey: "type")
        try values.encode(id, forKey: "id")
        try values.encode(name, forKey: "name")
        try values.encodeIfPresent(state, forKey: "state")
        try values.encode(lat, forKey: "lat")
        try values.encode(lon, forKey: "lon")
        try values.encodeIfPresent(altitude, forKey: "altitude")
        try values.encode(validFrom, forKey: "valid_from")
        try values.encode(validTo, forKey: "valid_to")
        try values.encodeIfPresent(hasSunshine, forKey: "has_sunshine")
        try values.encodeIfPresent(hasGlobalRadiation, forKey: "has_global_radiation")
        try values.encodeIfPresent(isActive, forKey: "is_active")
        try values.encodeIfPresent(subStations, forKey: "sub_stations")
        try values.encodeIfPresent(isMatches, forKey: "matches")
    }
}
