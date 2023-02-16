//
//  ContentView.swift
//  A.Prudnikova-HW38
//
//  Created by Ann Prudnikova on 16.02.23.
//

import SwiftUI

struct ContentView: View {
    @State private var sliderValueRed: Double = 100
    @State private var sliderValueGreen: Double = 100
    @State private var sliderValueBlue: Double = 100
    @State private var sliderValueAlpha: Double = 1
    @State private var selectionColor: CGColor = CGColor(red: 1, green: 1, blue: 1, alpha: 1)
    @State private var newColor: Color = Color(CGColor(red: 1, green: 1, blue: 1, alpha: 1))
    @State private var validatedData: Color = .blue
    @State private var alertPresented: Bool = false

    var body: some View {
        ZStack {
            Color(selectionColor)
                .ignoresSafeArea()
            VStack {
                DynamicView(redValue: $sliderValueRed, greenValue: $sliderValueGreen, blueValue: $sliderValueBlue, alpha: $sliderValueAlpha)
                SaveView(color: newColor, sizeWidth: 350, sizeHeight: 120)
                ColorSlider(value: $sliderValueRed, textColor: .red, currentValue: sliderValueRed)
                ColorSlider(value: $sliderValueGreen, textColor: .green, currentValue: sliderValueGreen)
                ColorSlider(value: $sliderValueBlue,textColor: .blue, currentValue: sliderValueBlue)
                AlphaSlider(value: $sliderValueAlpha, textColor: .mint, currentValue: sliderValueAlpha)
                ColorPicker("Color Picler", selection: $selectionColor)
                SaveColorButton(title: "Save Color", witdth: 150, height: 30, action: saveColor)
                    .alert(isPresented: $alertPresented) {
                        Alert(title: Text("Wrong Format"), message: Text("Please enter value from 0 to 255"))
                    }
            }.padding()
        }
    }
    
}

extension ContentView {
    private func saveColor() {
        let rangeColor = 0...255
        let rangeAlpha = 0...1
        if rangeColor.contains(Int(sliderValueRed)) && rangeColor.contains(Int(sliderValueGreen)) && rangeColor.contains(Int(sliderValueBlue)) && rangeAlpha.contains(Int(sliderValueAlpha)) {
        } else {
            alertPresented = true
        }
        newColor = Color(CGColor(red: CGFloat($sliderValueRed.wrappedValue), green: CGFloat($sliderValueGreen.wrappedValue), blue: CGFloat($sliderValueBlue.wrappedValue), alpha: 1))
//        addSubview(SaveView(redValue: sliderValueRed, greenValue: sliderValueGreen, blueValue: sliderValueBlue, sizeWidth: 30, sizeHeight: 30))
//        sliderValueRed = Double($sliderValueRed.wrappedValue)
//        sliderValueGreen = Double($sliderValueGreen.wrappedValue)
//        sliderValueBlue = Double($sliderValueBlue.wrappedValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
