// Api Key: Ora0kTOXkfIgq36UwRzswr0hKbcFsL99usVJWnHo
// Api https://api.nasa.gov/neo/rest/v1/neo/browse?api_key=

struct Data: Decodable {
    let nearEarthObjects: [NearEarthObjects]
    
    enum CodingKeys: String, CodingKey {
        case nearEarthObjects = "near_earth_objects"
    }
}

struct NearEarthObjects: Decodable {
    let isPotentiallyHazardousAsteroid: Bool
    let closeApproachData: [CloseApproachData]
    let name: String
    let asteroidEstimatedDiameter: EstimatedDiameters
    
    enum CodingKeys: String, CodingKey {
        case isPotentiallyHazardousAsteroid = "is_potentially_hazardous_asteroid"
        case name
        case closeApproachData = "close_approach_data"
        case asteroidEstimatedDiameter = "estimated_diameter"
    }
}

struct CloseApproachData: Decodable {
    let closeApproachDate: String
    let relativeVelocity: RelativeVelocity
    let missDistance: MissDistance
    let orbitingBody: String
    
    enum CodingKeys: String, CodingKey {
        case closeApproachDate = "close_approach_date"
        case relativeVelocity = "relative_velocity"
        case missDistance = "miss_distance"
        case orbitingBody = "orbiting_body"
    }
}

struct MissDistance: Decodable {
    let lunar: String
    let kilometers: String
}

struct EstimatedDiameters: Decodable {
    let meters: Meters
}

struct RelativeVelocity: Codable {
    let kilometersPerSecond: String

    enum CodingKeys: String, CodingKey {
        case kilometersPerSecond = "kilometers_per_second"
    }
}

struct Meters: Decodable {
    let estimatedDiameterMax: Double
    
    enum CodingKeys: String, CodingKey {
        case estimatedDiameterMax = "estimated_diameter_max"
    }
}


