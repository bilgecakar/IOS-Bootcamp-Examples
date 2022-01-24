import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton)
    {
        print("Start")
        sender.alpha = 0.5 //Change when button press
        
       //Code should execute after 0.2 seconde delay
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
            sender.alpha = 1 //Change default
            print("End")
        }
        
        
        playSound(soundName: sender.currentTitle!)
    }
    
    func playSound(soundName : String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
