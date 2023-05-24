
import SwiftUI

struct VerificationButton: View {
    
    @State var showFullScreen: Bool = false
    @State private var SearchText = ""

    var body: some View {
        
        NavigationStack{

            Button("OTP") {
                showFullScreen.toggle()
            }
            .foregroundColor(Color.white)
            .frame(width: 340, height: 50)
            .background(Color("background"))
            .cornerRadius(10)
            .padding()
            
        }.fullScreenCover(isPresented: $showFullScreen) {
            CommunityPage()
        }
    }
}

struct VerificationButton_Previews: PreviewProvider {
    static var previews: some View {
        VerificationButton()
    }
}
