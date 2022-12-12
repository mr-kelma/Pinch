//
//  InfoPanelView.swift
//  Pinch
//
//  Created by Valery Keplin on 9.12.22.
//

import SwiftUI

struct InfoPanelView: View {
    // MARK: - PROPERTY
    
    @State private var isInfoPanelVisible: Bool = false
    
    var scale: CGFloat
    var offset: CGSize
    
    var body: some View {
        HStack {
            // MARK: - HOTSPOT
            Image(systemName: "circle.circle")
                .symbolRenderingMode(.hierarchical)
                .resizable()
                .frame(width: 30, height: 30)
                .onLongPressGesture(minimumDuration: 0.5) {
                    withAnimation(.easeOut) {
                        isInfoPanelVisible.toggle()
                    }
                }
            
            // MARK: - INFO PANEL
            HStack(spacing: 2) {
                Image(systemName: "arrow.up.left.and.arrow.down.right")
                Text(String(format: "%.1f", scale))
                
                Spacer()
                
                Image(systemName: "arrow.left.and.right")
                Text(String(format: "%.5f", offset.width))
                
                Spacer()
                
                Image(systemName: "arrow.up.and.down")
                Text(String(format: "%.5f", offset.height))
                
                Spacer()
            }
            .font(.footnote)
            .padding(8)
            .background(.ultraThinMaterial)
            .cornerRadius(8)
            .frame(maxWidth: 280)
            .opacity(isInfoPanelVisible ? 1 : 0)
            
            Spacer()
        }
    }
}




struct InfoPanelView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPanelView(scale: 1, offset: .zero)
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
