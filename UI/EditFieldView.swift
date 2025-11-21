//
//  EditFieldView.swift
//  app_recipes_ios
//
//  Created by Andriantsialonina on 21/11/2025.
//

import Foundation
import SwiftUI

struct EditFieldView: View {
    let label: String
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(label)
                .font(.caption)
                .foregroundColor(.gray)
            
            TextField("", text: $text)
                .textFieldStyle(.roundedBorder)
        }
    }
}
