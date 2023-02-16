//
//  Dynamic view.swift
//  A.Prudnikova-HW38
//
//  Created by Ann Prudnikova on 16.02.23.
//

import SwiftUI

struct DynamicView: View {
    
    @Binding var redValue: Double
    @Binding var greenValue: Double
    @Binding var blueValue: Double
    @Binding var alpha: Double

    
    
//    var backColor = Color(red: redValue, green: greenValue, blue: blueValue)
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 40, style: .continuous)
                .frame(width: 350, height: 120)
                .foregroundColor(Color(CGColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha)))
                .overlay(
                    RoundedRectangle(cornerRadius: 40, style: .continuous)
                        .stroke(Color.black, lineWidth: 6))
        }.padding(10)
    }
}
    
    //struct Dynamic_view_Previews: PreviewProvider {
    //    static var previews: some View {
    //        Dynamic_view()
    //    }
    //}

