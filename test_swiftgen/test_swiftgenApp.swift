import Primary
import SwiftUI

@main
struct test_swiftgenApp: App {
    var body: some Scene {
        WindowGroup {
            AppView()
        }
    }
}

public struct AppView_Preview: PreviewProvider {
    public static var previews: some View {
        AppView()
    }
}
