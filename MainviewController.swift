//
//  ViewController.swift
//  AppNoticias
//
//  Created by Admin on 16/06/22.
//

import UIKit // Usando o UI por se tratar de uma UITableView

class MainviewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    var items: Array = ["EBAC", "Cursos", "iOS", "Mobile", "Develop"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // -> instanciando a classe e criando o ponto na tela para a view.frame da classe.
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row] // -> passando para a label um valor, no caso a lista de array
        return cell
    }
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("ïndexPath => \(indexPath.row)")
    }
    
}

