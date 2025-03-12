import SwiftUI

@available(iOS 13.0, *)
public struct FlexCollection<Content: View>: View {
    
    public var HContentOuterPadding: CGFloat
    public var VContentOuterPadding: CGFloat
    
    public var alignmentOfView: Alignment
    
    public var itemCount: Int
    public var layoutWidth: CGFloat
    
    public var createElement: (Int) -> Content
    
    @State public var itemWidths: [Int: CGFloat] = [:]
    
    public init(
        HContentOuterPadding: CGFloat = 10.0,
        VContentOuterPadding: CGFloat = 5.0,
        alignmentOfView: Alignment = .center,
        itemCount: Int,
        layoutWidth: CGFloat = UIScreen.main.bounds.size.width - 40,
        createElement: @escaping (Int) -> Content
    ) {
        self.HContentOuterPadding = HContentOuterPadding
        self.VContentOuterPadding = VContentOuterPadding
        self.alignmentOfView = alignmentOfView
        self.itemCount = itemCount
        self.layoutWidth = layoutWidth
        self.createElement = createElement
    }

    private func layoutContent(maxWidth: CGFloat) -> [[Int]] {
        var result: [[Int]] = []
        var totalWidth = 0.0
        
        for index in 0..<itemCount {
            if let itemWidth = itemWidths[index] {
                if (totalWidth + itemWidth + HContentOuterPadding) < maxWidth {
                    totalWidth += itemWidth + HContentOuterPadding
                    if result.isEmpty {
                        result.append([index])
                    } else {
                        result[result.count - 1].append(index)
                    }
                } else {
                    totalWidth = itemWidth
                    result.append([index])
                }
            }
        }
        
        return result
    }
    
    private func measureView(_ geometry: GeometryProxy, _ index: Int) -> some View {
        DispatchQueue.main.async {
            self.itemWidths[index] = geometry.size.width
        }
        return Color.clear
    }
    
    public var body: some View {
        ZStack {
            Group {
                ForEach(0..<itemCount, id: \.self) { index in
                    createElement(index)
                        .padding(.trailing, HContentOuterPadding)
                        .background(GeometryReader { geometry in
                            measureView(geometry, index)
                        })
                }
            }
            .hidden()
            
            VStack(alignment: .center, spacing: 0) {
                ForEach(layoutContent(maxWidth: layoutWidth), id: \.self) { lane in
                    HStack(spacing: 0) {
                        ForEach(lane, id: \.self) { index in
                            createElement(index)
                                .padding(.trailing, HContentOuterPadding)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: alignmentOfView)
                    .padding(.vertical, VContentOuterPadding)
                }
            }
            .frame(width: layoutWidth)
        }
        .onAppear {
            self.itemWidths.removeAll()
        }
    }
}
