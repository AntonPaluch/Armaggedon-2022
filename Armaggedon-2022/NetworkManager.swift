import Foundation
import Alamofire

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private init () {
        
    }
    
    private func getJSONData<T:Decodable>(
            urlString: String,
            parameters: [String: String],
            completion: @escaping (Result<T, Error>) -> Void) {
                AF.request(urlString, parameters: parameters)
                    .validate()
                    .responseJSON { responseData in
                        switch responseData.result {
                        case .success(let value):
                            print(value)
                    
                        case .failure(let error):
                            print(error)
                        }
                    }
            }
    
//https://api.nasa.gov/neo/rest/v1/feed?start_date=2015-09-07&end_date=2015-09-08&api_key=DEMO_KEY
    
//    Ora0kTOXkfIgq36UwRzswr0hKbcFsL99usVJWnHo
    
    let url = ""
    let ApiKey = "Ora0kTOXkfIgq36UwRzswr0hKbcFsL99usVJWnHo"
    
    
    
    func getAsteroids(urlString: String, parameters: [String: String], completion: @escaping (Result<Data, Error>) -> Void) {
        getJSONData(urlString: urlString, parameters: parameters, completion: completion)
    }
              
}
