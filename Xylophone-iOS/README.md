

# Xylophone

## Our Goal

The goal of this tutorial is to dive into a simple iOS recipe - how to play sound and use an Apple library called AVFoundation. The most important skill of a great programmer is being able to solve your own problems. We’ll do that by exploring StackOverflow, Apple Documentation and learning how to search for solutions effectively. By learning to use these tools, you’ll be able to start adding custom features to an app and get it to do what you want it to.


## What I did

I made my first musical instrument! Music apps are so popular on the App Store that they even get their own category. So in this module, I made a colourful XyloPhone app.

## What I learned

- [x] How to play sound using AVFoundation and AVAudioPlayer.
- [x] Understand Apple documentation and how to use StackOverflow.
- [x] Functions and methods in Swift. 
- [x] Data types.
- [x] Swift loops.
- [x] Variable scope.
- [x] The ViewController lifecycle.
- [x] Error handling in Swift.
- [x] Code refactoring.
- [x] Basic debugging.

## Replacement Code

```
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound()
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: "C", withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
```

This is app's ss:

<img width="234" alt="Screenshot 2022-01-24 at 02 31 29" src="https://user-images.githubusercontent.com/36795459/150702607-1b69a74b-6241-4aea-85ad-379624ee8172.png">




