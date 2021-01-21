import SwiftUI
import Resources

public struct AppView: View {
    public init() {}

    public var body: some View {
        VStack {
            Text("Module - Hello, world!")
            Image("Hazure", bundle: Bundle.module)
            //Image("Hazure", bundle: .module)
        }
    }
}

public enum ImageToken: Equatable {
    case image(String)
}

public extension Image {
    init(_ token: ImageToken) {
        switch token {
        case let .image(name):
            self = Image(name)
        }
    }
}

public extension ImageToken {
    static func image(_ asset: ImageAsset) -> Self {
        
        return .image(asset.name)
    }
}
