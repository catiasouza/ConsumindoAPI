

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if  let url = URL(string: "https://blockchain.info/ticker"){
            let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                
                if erro == nil {
                    
                    if let dadosRetorno = dados{
                        
                        do {
                            if let objetoJson =  try JSONSerialization.jsonObject(with: dadosRetorno, options: []) as? [String: Any]{
                                if let brl = objetoJson["BRL"] as? [String: Any]{
                                
                                    if let preco = brl["buy"] as? Float{
                                        print(preco)
                                    }
                                }
                                
                                
                          }
                            
                            
                        } catch {
                            print("Erro ao formatar retorno")
                        }
                    }
                }else{
                    print("Erro ao fazer a consulta")
                }
                
            }
            tarefa.resume()
        }
    }
    


}
