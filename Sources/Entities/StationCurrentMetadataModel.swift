// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct StationCurrentMetadataModel: Codable {
    public var title: String
    public var parameters: [ParameterMetadataModel]
    public var frequency: String
    public var type: String
    public var mode: String
    /// Example: ["geojson", "netcdf"]
    public var responseFormats: [String]
    public var time: Date
    public var stations: [StationMetadata]
    /// An enumeration.
    public var idType: IDType

    public init(title: String, parameters: [ParameterMetadataModel], frequency: String, type: String, mode: String, responseFormats: [String], time: Date, stations: [StationMetadata], idType: IDType) {
        self.title = title
        self.parameters = parameters
        self.frequency = frequency
        self.type = type
        self.mode = mode
        self.responseFormats = responseFormats
        self.time = time
        self.stations = stations
        self.idType = idType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.title = try values.decode(String.self, forKey: "title")
        self.parameters = try values.decode([ParameterMetadataModel].self, forKey: "parameters")
        self.frequency = try values.decode(String.self, forKey: "frequency")
        self.type = try values.decode(String.self, forKey: "type")
        self.mode = try values.decode(String.self, forKey: "mode")
        self.responseFormats = try values.decode([String].self, forKey: "response_formats")
        self.time = try values.decode(Date.self, forKey: "time")
        self.stations = try values.decode([StationMetadata].self, forKey: "stations")
        self.idType = try values.decode(IDType.self, forKey: "id_type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(title, forKey: "title")
        try values.encode(parameters, forKey: "parameters")
        try values.encode(frequency, forKey: "frequency")
        try values.encode(type, forKey: "type")
        try values.encode(mode, forKey: "mode")
        try values.encode(responseFormats, forKey: "response_formats")
        try values.encode(time, forKey: "time")
        try values.encode(stations, forKey: "stations")
        try values.encode(idType, forKey: "id_type")
    }
}
