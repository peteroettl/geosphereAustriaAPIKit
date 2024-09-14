// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Station.WithMode.WithResourceID {
    public var filter: Filter {
        Filter(path: path + "/filter")
    }

    public struct Filter {
        /// Path: `/station/{mode}/{resource_id}/filter`
        public let path: String

        /// Filter Stations
        public func get(parameters: GetParameters? = nil) -> Request<geosphereAustriaAPIKit.StationFilterResponseDto> {
            Request(path: path, method: "GET", query: parameters?.asQuery, id: "Filter_Stations_station__mode___resource_id__filter_get")
        }

        public struct GetParameters {
            /// Restricts output to stations that have one of the given ids.
            public var id: [String]?
            /// Restricts output to stations whose name contains one of the given strings.
            public var name: [String]?
            /// Restricts output to stations who are located in one of the given states
            public var state: [geosphereAustriaAPIKit.Bundesland]?
            /// Supply in format: *YYYY-MM-DD* or *YYYY-MM-DDTHH:mm*
            public var startDate: StartDate?
            /// Supply in format: *YYYY-MM-DD* or *YYYY-MM-DDTHH:mm*
            public var endDate: EndDate?
            /// Physical unit is *m*
            public var minAltitude: Int?
            /// Physical unit is *m*
            public var maxAltitude: Int?
            public var hasSunshine: Bool?
            public var hasGlobalRadiation: Bool?
            public var isActive: Bool?

            /// Supply in format: *YYYY-MM-DD* or *YYYY-MM-DDTHH:mm*
            public struct StartDate: Codable {
                public var string: String?
                public var date: Date?

                public init(string: String? = nil, date: Date? = nil) {
                    self.string = string
                    self.date = date
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(string, forKey: "string")
                    encoder.encode(date, forKey: "date")
                    return encoder.items
                }
            }

            /// Supply in format: *YYYY-MM-DD* or *YYYY-MM-DDTHH:mm*
            public struct EndDate: Codable {
                public var string: String?
                public var date: Date?

                public init(string: String? = nil, date: Date? = nil) {
                    self.string = string
                    self.date = date
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(string, forKey: "string")
                    encoder.encode(date, forKey: "date")
                    return encoder.items
                }
            }

            public init(id: [String]? = nil, name: [String]? = nil, state: [geosphereAustriaAPIKit.Bundesland]? = nil, startDate: StartDate? = nil, endDate: EndDate? = nil, minAltitude: Int? = nil, maxAltitude: Int? = nil, hasSunshine: Bool? = nil, hasGlobalRadiation: Bool? = nil, isActive: Bool? = nil) {
                self.id = id
                self.name = name
                self.state = state
                self.startDate = startDate
                self.endDate = endDate
                self.minAltitude = minAltitude
                self.maxAltitude = maxAltitude
                self.hasSunshine = hasSunshine
                self.hasGlobalRadiation = hasGlobalRadiation
                self.isActive = isActive
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(id, forKey: "id")
                encoder.encode(name, forKey: "name")
                encoder.encode(state, forKey: "state")
                encoder.encode(startDate, forKey: "start_date")
                encoder.encode(endDate, forKey: "end_date")
                encoder.encode(minAltitude, forKey: "min_altitude")
                encoder.encode(maxAltitude, forKey: "max_altitude")
                encoder.encode(hasSunshine, forKey: "has_sunshine")
                encoder.encode(hasGlobalRadiation, forKey: "has_global_radiation")
                encoder.encode(isActive, forKey: "is_active")
                return encoder.items
            }
        }
    }
}
