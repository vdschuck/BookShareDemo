//
//  FieldComponent.swift
//  BookShare
//
//  Created by Matheus Linkewez on 16/01/20.
//  Copyright © 2020 Vinícius Schuck. All rights reserved.
//

import SwiftUI

struct FieldComponent: View {
    
    @State var icon: String = ""
    @State var title: String = ""
    @State var text: String = ""
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(Color.gray)
                TextField(title, text: $text)
                    .font(.system(size: 20))
            }
            Divider()
        }
    }
}
