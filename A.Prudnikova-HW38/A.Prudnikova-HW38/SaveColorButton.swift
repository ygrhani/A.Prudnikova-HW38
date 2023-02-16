//
//  SaveColorButton.swift
//  A.Prudnikova-HW38
//
//  Created by Ann Prudnikova on 16.02.23.
//

import SwiftUI

struct SaveColorButton: View {
    
    let title: String
    let witdth: CGFloat
    let height: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.body)
                .fontWeight(.medium)
                .fontDesign(.rounded)
                .foregroundColor(.white)
        }
        .frame(width: witdth, height: height)
        .background(Color(.systemTeal))
        .cornerRadius(40)
        .overlay(
            RoundedRectangle(cornerRadius: height / 2 , style: .continuous)
                .stroke(Color.black, lineWidth: 3))
        .padding()
    }
}

//struct SaveColorButton_Previews: PreviewProvider {
//    static var previews: some View {
//        SaveColorButton()
//    }
//}
