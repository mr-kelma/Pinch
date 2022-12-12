//
//  ControlImageView.swift
//  Pinch
//
//  Created by Valery Keplin on 9.12.22.
//

import SwiftUI

struct ControlImageView: View {
    // MARK: - PROPERTY
    
    let icon: String
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 33))
    }
}

struct ControlImageView_Previews: PreviewProvider {
    static var previews: some View {
        ControlImageView(icon: "plus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
