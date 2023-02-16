//
//  Save View.swift
//  A.Prudnikova-HW38
//
//  Created by Ann Prudnikova on 16.02.23.
//

import SwiftUI

struct SaveView: View {

//        @State var redValue: Double
//        @State var greenValue: Double
//        @State var blueValue: Double
    @State var color: Color
    
    var sizeWidth: CGFloat
    var sizeHeight: CGFloat
        
        var body: some View {
            VStack {
                RoundedRectangle(cornerRadius: 40, style: .continuous)
                    .frame(width: sizeWidth, height: sizeHeight)
                    .foregroundColor(color)
                    .tint(color)
                    .overlay(
                        RoundedRectangle(cornerRadius: 40, style: .continuous)
                            .stroke(Color.black, lineWidth: 6))
            }.padding(15)
        }
    }

//struct Save_View_Previews: PreviewProvider {
//    static var previews: some View {
//        Save_View()
//    }
//}
