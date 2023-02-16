//
//  AlphaSlider.swift
//  A.Prudnikova-HW38
//
//  Created by Ann Prudnikova on 16.02.23.
//

import SwiftUI

struct AlphaSlider: View {
    @Binding var value: Double
    var textColor: Color
    var currentValue: Double
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(textColor)
            Slider(value: $value, in: 0.0...1, step: 0.00001)
                .background(.white)
                .cornerRadius(40)
                .tint(textColor)
            TextField("0", value: $value, formatter: NumberFormatter())
                .font(.body)
                .frame(width: 30, height: 5)
//
        }.padding(.horizontal)
            .background(.white)
            .cornerRadius(20)
    }
}

//struct ColorSlider_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorSlider()
//    }
//}
