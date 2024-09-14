// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct StationGeoJSONSerializer: Codable {
    public var mediaType: String?
    public var type: String?
    public var version: String
    /// Format: *YYYY-MM-DDThh:mm:ss±hh:mm*
    public var timestamps: [Date]
    public var features: [StationGeoJSONFeature]
    public var filename: String?

    public init(mediaType: String? = nil, type: String? = nil, version: String, timestamps: [Date], features: [StationGeoJSONFeature], filename: String? = nil) {
        self.mediaType = mediaType
        self.type = type
        self.version = version
        self.timestamps = timestamps
        self.features = features
        self.filename = filename
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "media_type")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.version = try values.decode(String.self, forKey: "version")
        self.timestamps = try values.decode([Date].self, forKey: "timestamps")
        self.features = try values.decode([StationGeoJSONFeature].self, forKey: "features")
        self.filename = try values.decodeIfPresent(String.self, forKey: "filename")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(mediaType, forKey: "media_type")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encode(version, forKey: "version")
        try values.encode(timestamps, forKey: "timestamps")
        try values.encode(features, forKey: "features")
        try values.encodeIfPresent(filename, forKey: "filename")
    }
}
