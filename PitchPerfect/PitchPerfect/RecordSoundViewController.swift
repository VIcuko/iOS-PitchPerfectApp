//
//  RecordSoundViewController.swift
//  PitchPerfect
//
//  Created by Vicuko on 1/1/18.
//  Copyright © 2018 Vicuko. All rights reserved.
//

import UIKit
import AVFoundation

class RecordSoundViewController: UIViewController {
    
    var audioRecorder : AVAudioRecorder!

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print ("viewWillAppear called")
    }

    @IBAction func recordAudio(_ sender: Any) {
        print("record button was pressed")
        recordButton.isEnabled = false
        stopRecordingButton.isEnabled = true
        recordingLabel.text = "Recording in Progress"
        
    }
    @IBAction func stopRecording(_ sender: Any) {
        print("stop recording button was pressed")
        stopRecordingButton.isEnabled = false
        recordButton.isEnabled = true
        recordingLabel.text = "Tap to Record"
    }
    
}

