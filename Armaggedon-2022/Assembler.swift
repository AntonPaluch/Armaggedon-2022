import UIKit

protocol ModuleAssemblerProtocol {
    static func createMainModule() -> UIViewController
    static func createDetailModule() -> UIViewController
    static func CreateDeleteModule() -> UIViewController
}

class ModulAssembler: ModuleAssemblerProtocol {
    static func CreateDeleteModule() -> UIViewController {
        <#code#>
    }
    
    static func createMainModule() -> UIViewController {
        <#code#>
    }
    
    static func createDetailModule() -> UIViewController {
        <#code#>
    }
}
