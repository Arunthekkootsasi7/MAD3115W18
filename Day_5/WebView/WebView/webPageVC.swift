//

//

import UIKit

class webPageVC: UIViewController {
    
    @IBOutlet var myWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadWebPage()
        //loadManualPage()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadWebPage(){
        let url = NSURL (string: "https://www.google.com");
        let requestObj = NSURLRequest(url: url! as URL);
        myWebView.loadRequest(requestObj as URLRequest);
        
    }
    
    func loadManualPage(){
        let localfilePath = Bundle.main.url(forResource: "Pizza", withExtension: "html");
        let myRequest = NSURLRequest(url: localfilePath!);
        myWebView.loadRequest(myRequest as URLRequest);
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
