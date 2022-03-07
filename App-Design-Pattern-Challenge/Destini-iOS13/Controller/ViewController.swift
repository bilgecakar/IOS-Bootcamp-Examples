
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    
    var storyBrain = StoryBrain()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateStory()
        
    }
    
    
    @IBAction func makeChoice(_ sender: UIButton)
    {
        let userAnswer = sender.currentTitle!
        
        storyBrain.nextStory(userAnswer)
        
        updateStory()
        
    }
    
    func updateStory()
    {
        storyLabel.text = storyBrain.getQuestion()
        choice1Button.setTitle( storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle( storyBrain.getChoice2(), for: .normal)

    }
}

