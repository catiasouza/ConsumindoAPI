

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if  let url = URL(string: "https://blockchain.info/ticker"){
             let tarefa = URLSession.shared.dataTask(with: url) { (dados, requisicao, erro) in
                       
                if erro == nil {
                    print("Sucesso ao fazer consulta")
                }else{
                    print("Erro ao fazer a consulta")
                }
                
            }
            tarefa.resume()
        }
    }
    


}
