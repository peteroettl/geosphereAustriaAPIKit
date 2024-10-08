// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GridGeoJSONSerializer: Codable {
    public var mediaType: String?
    public var type: String?
    public var version: String
    /// Format: *YYYY-MM-DDThh:mm:ss±hh:mm*
    public var timestamps: [Date]
    public var features: [GeoJSONFeature]
    public var filename: String?
    public var bbox: [Double]

    public init(mediaType: String? = nil, type: String? = nil, version: String, timestamps: [Date], features: [GeoJSONFeature], filename: String? = nil, bbox: [Double]) {
        self.mediaType = mediaType
        self.type = type
        self.version = version
        self.timestamps = timestamps
        self.features = features
        self.filename = filename
        self.bbox = bbox
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.mediaType = try values.decodeIfPresent(String.self, forKey: "media_type")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
        self.version = try values.decode(String.self, forKey: "version")
        self.timestamps = try values.decode([Date].self, forKey: "timestamps")
        self.features = try values.decode([GeoJSONFeature].self, forKey: "features")
        self.filename = try values.decodeIfPresent(String.self, forKey: "filename")
        self.bbox = try values.decode([Double].self, forKey: "bbox")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(mediaType, forKey: "media_type")
        try values.encodeIfPresent(type, forKey: "type")
        try values.encode(version, forKey: "version")
        try values.encode(timestamps, forKey: "timestamps")
        try values.encode(features, forKey: "features")
        try values.encodeIfPresent(filename, forKey: "filename")
        try values.encode(bbox, forKey: "bbox")
    }
}
