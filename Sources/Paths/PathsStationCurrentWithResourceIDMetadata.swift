// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Station.Current.WithResourceID {
    public var metadata: Metadata {
        Metadata(path: path + "/metadata")
    }

    public struct Metadata {
        /// Path: `/station/current/{resource_id}/metadata`
        public let path: String

        /// Current Station Metadata
        public var get: Request<geosphereAustriaAPIKit.StationCurrentMetadataModel> {
            Request(path: path, method: "GET", id: "Current_Station_Metadata_station_current__resource_id__metadata_get")
        }
    }
}
