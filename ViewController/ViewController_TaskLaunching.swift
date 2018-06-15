//
//  ViewController_TaskLaunching.swift
//  LTM-interface
//
//  Created by Louis Lenief on 10/05/2018.
//  Copyright © 2018 Louis Lenief. All rights reserved.
//

import Foundation

extension ViewController {
    
    @IBAction func launchTask(_ sender: Any) {
        //1
        
 
        let path = "/Users/gabrieldittrick/CSWORK/XCODEWORK/LTM-Engine/build/Debug/LTM-Engine" //put here the path to LTM-Engine

        //2.
        let task = Process()
        task.launchPath = path
        
        if let selectedVideo = getSelectedVideo(), let meSet = getSelectedMicroExpressionsSet() {
            let inputname = selectedVideo.url.path
            let outputname = selectedVideo.url.deletingLastPathComponent().appendingPathComponent("\(meSet.source)_\(selectedVideo.name)").path
            let textpath = meSet.url.path
            task.arguments = ["--inputname=\(inputname)","--outputname=\(outputname)","--textpath=\(textpath)","--livedisplay=false","--color=\(meSet.colorInt)"]


            task.terminationHandler = {(p: Process) in
                print("Terminated")
            }
            task.launch()
            
            
            //5.
        }
    }
    
    @IBAction func covertVideo(_ sender: Any) {
        let path = "/Users/gabrieldittrick/CSWORK/XCODEWORK/LTM-Converter/build/Debug/LTM-Converter" //put here the path to LTM-Converter
        
        //2.
        let task = Process()
        task.launchPath = path
        
        if let selectedVideo = getSelectedVideo() {
            let inputname = selectedVideo.url.path
            let outputname = selectedVideo.url.deletingLastPathComponent().appendingPathComponent("converted_\(selectedVideo.name)").path
            task.arguments = ["--inputname=\(inputname)","--outputname=\(outputname)","--livedisplay=false"]
            task.terminationHandler = {(p: Process) in
                print("Terminated")
            }
            task.launch()
            
            
            //5.
            //task.waitUntilExit()
        }
        
    }
    
}
