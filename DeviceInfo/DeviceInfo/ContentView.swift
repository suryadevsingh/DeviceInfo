//
//  ContentView.swift
//  DeviceInfo
//
//  Created by Suryadev Singh on 14/10/23.
//

import SwiftUI
import UIKit

struct ContentView: View {
    // Create a UIDevice instance
    let device = UIDevice.current
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Device Information")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Display the device name
            Text("Device Name: \(device.name)")
            
            // Display the device model
            Text("Device Model: \(device.model)")
            
            // Display the localized device model
            Text("Device Localized Model: \(device.localizedModel)")
            
            // Display the device system name (e.g., "iOS")
            Text("Device System Name: \(device.systemName)")
            
            // Display the device system version (e.g., "15.0")
            Text("Device System Version: \(device.systemVersion)")
            
            // Display the device identifier (unique for each app on the device)
            Text("Device Identifier: \(device.identifierForVendor?.uuidString ?? "N/A")")
            
            // Determine if the device is an iPhone or iPad and display accordingly
            Text("Device Type: \(device.userInterfaceIdiom == .phone ? "iPhone" : "iPad")")
            
            if let screenSize = UIScreen.main.bounds as CGRect? {
                // Display the screen width and height in pixels
                Text("Screen Width: \(screenSize.width) pixels")
                Text("Screen Height: \(screenSize.height) pixels")
                
                // Display the screen scale (e.g., 2x for Retina displays)
                Text("Screen Scale: \(UIScreen.main.scale) (\(Int(UIScreen.main.scale))x)")
            }
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
