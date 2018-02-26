
import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var switchRemember: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.getData()
        
        //location of user defaults storage
        //var path = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)
        //let folder = path[0] as String
        //print("\(folder)/preferences")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        //self.txtPassword.text = ""
        //self.txtEmail.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnGoAction(_ sender: UIBarButtonItem) {
        if authenicateUser() {
            
            //save data
            if self.switchRemember.isOn {
                self.saveData()
            }else{
                self.removeData()
            }
            
            //display next screen
            displayMenuScreen()
        }
        else{
            //get an instance of AlertController
            let infoAlert = UIAlertController(title: "Incorrect Data", message: "Email or Password incorrect...Please retry", preferredStyle: .alert)
            
            //add Retry button
            infoAlert.addAction(UIAlertAction(title: NSLocalizedString("Retry", comment: "Default action"), style: .destructive, handler: nil))
            
            //display an alert
            self.present(infoAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnRegisterAction(_ sender: UIBarButtonItem) {
        displayRegisterScreen()
    }
    
    func saveData(){
        UserDefaults.standard.set(self.txtEmail.text,forKey: "userName")
    UserDefaults.standard.set(self.txtPassword.text,forKey:"password" )
    }
    
    func getData(){
        if let email = UserDefaults.standard.value(forKey: "userName"){
            self.txtEmail.text = email as? String
        }
        
        if let password = UserDefaults.standard.value(forKey: "password")  {
            self.txtPassword.text = password as? String
        }
    }
    
    func removeData(){
        UserDefaults.standard.removeObject(forKey: "userName")
        UserDefaults.standard.removeObject(forKey: "password")
    }
    
    func authenicateUser() -> Bool{
        
        if (txtEmail.text == "jk@jk.com" && txtPassword.text == "jk"){
            return true
        }
        else{
            return false
        }
    }
    
    
    func displayMenuScreen() {
        let menuSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let menuVC = menuSB.instantiateViewController(withIdentifier: "MenuScreen")
        navigationController?.pushViewController(menuVC, animated: true)
    }
    
    func displayRegisterScreen(){
        //transfer to next screen
        
        //get an instance of storyboard
        let registerSB: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        //create an instance of next view controller
        let registerVC = registerSB.instantiateViewController(withIdentifier: "registerScreen") as! RegisterVC
        
        //launch the next view controller to navigation controller
        navigationController?.pushViewController(registerVC, animated: true)
    }
}

