

import UIKit

class ViewController: UIViewController {

    
    let urlString = "http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.downloadJsonWithUrl();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func downloadJsonWithUrl(){
    
        let url = NSURL(string: urlString)
        URLSession.shared.dataTask(with: (url as? URL)!, completionHandler:{(data,response,error) -> Void in
        
            print(data)
        
        }).resume()
        
    }

}

