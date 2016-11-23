//
//  SetShortcutWindowController.swift
//  ShadowsocksX-NG
//
//  Created by 徐开源 on 2016/11/23.
//  Copyright © 2016年 qiuyuzhou. All rights reserved.
//

import Cocoa
import MASShortcut

class SetShortcutWindowController: NSWindowController {

    @IBOutlet var autoModeShortcutView: MASShortcutView!
    @IBOutlet var globalModeShortcutView: MASShortcutView!
    @IBOutlet var manualModeShortcutView: MASShortcutView!
    
    static let autoShortcutKey = "autoShortcutKey"
    static let globalShortcutKey = "globalShortcutKey"
    static let manualShortcutKey = "manualShortcutKey"
    
    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
        
        autoModeShortcutView.associatedUserDefaultsKey = SetShortcutWindowController.autoShortcutKey
        globalModeShortcutView.associatedUserDefaultsKey = SetShortcutWindowController.globalShortcutKey
        manualModeShortcutView.associatedUserDefaultsKey = SetShortcutWindowController.manualShortcutKey
    }
}
