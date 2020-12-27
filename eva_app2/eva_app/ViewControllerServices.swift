//
//  ViewControllerServices.swift
//  eva_app
//
//  Created by Tecsup on 12/26/20.
//

import UIKit
struct DemoData: Codable {
    let title: String
    let description: String
}

class ViewControllerServices: UIViewController {
    
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    var dataa1 = ""
    var dataa2 = ""
    override func viewDidLoad() {
            super.viewDidLoad()

             let urlString = "https://www.alwa.com.pe/demo/demoios/index2.php"
                    self.loadJson(fromURLString: urlString) { (result) in
                        switch result {
                        case .success(let data):
                            self.parse(jsonData: data)
    //                        print (1)
                        case .failure(let error):
                            print(error)
    //                        print (2)
                        }
                    }

        }

        private func readLocalFile(forName name: String) -> Data? {
            do {
                if let bundlePath = Bundle.main.path(forResource: name,
                                                     ofType: "json"),
                    let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
                    return jsonData
                }
            } catch {
                print(error)
            }
            
            return nil
        }


        private func loadJson(fromURLString urlString: String,
                              completion: @escaping (Result<Data, Error>) -> Void) {
            if let url = URL(string: urlString) {
                let urlSession = URLSession(configuration: .default).dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        completion(.failure(error))
                    }
                    
                    if let data = data {
                        completion(.success(data))
                    }
                }
                
                urlSession.resume()
            }
        }

        private func parse(jsonData: Data) {
            do {
                let decodedData = try JSONDecoder().decode(DemoData.self,
                                                           from: jsonData)
                mostradata(data1:  decodedData.title, data2: decodedData.description)
                print("Title: ",  decodedData.title)
                print("Description: ", decodedData.description)
                print("2===================================")
            } catch {
                print("decode error")
            }
        }
    
    func mostradata(data1:String,data2:String){
        titulo.text = data1
        descripcion.text = data2
    }

}

