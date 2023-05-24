
import SwiftUI

struct CommunityButton: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                Button("Get notified") {
                    showFullScreen.toggle()
                }
                
                .foregroundColor(Color.white)
                .frame(width: 340, height: 50)
                .background(Color("background"))
                .cornerRadius(10)
                .padding()
                
            }.padding()
        }.fullScreenCover(isPresented: $showFullScreen) {
            TabBar()
        }
        
    }
}

struct CommunityButton_Previews: PreviewProvider {
    static var previews: some View {
        CommunityButton()
    }
}
