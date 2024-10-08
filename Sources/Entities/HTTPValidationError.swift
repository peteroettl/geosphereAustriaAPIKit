// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct HTTPValidationError: Codable {
    public var detail: [ValidationError]?

    public init(detail: [ValidationError]? = nil) {
        self.detail = detail
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.detail = try values.decodeIfPresent([ValidationError].self, forKey: "detail")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(detail, forKey: "detail")
    }
}
