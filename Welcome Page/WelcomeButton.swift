
import SwiftUI

struct WelcomeButton: View {
    
    @State var showFullScreen: Bool = false

    var body: some View {
        
        NavigationStack{
            
            VStack(alignment: .center){
                
                Button("Login") {
                    showFullScreen.toggle()
                }
                .foregroundColor(Color.white)
                .frame(width: 340, height: 50)
                .background(Color("background"))
                .cornerRadius(10)
                .padding()
                
                VStack{
                    Text("Don't have an account? ")
                        .font(.footnote)
                        .foregroundColor(.black) +
                    Text("sign-up")
                        .foregroundColor(.blue)
                        .font(.footnote)
                }
                
                
                VStack(spacing: 15){
                    Text("or sign in with")
                    
                    HStack(spacing : 20){
                        Image("google")
                            .resizable()
                            .frame( width: 30, height: 30)
                        Image("twitter")
                            .resizable()
                            .frame( width: 30, height: 30)
                        Image("facebook")
                            .resizable()
                            .frame( width: 30, height: 30)
                    }
                }.padding(.top, 60)
            }
        }.fullScreenCover(isPresented: $showFullScreen) {
            VerificationCode()
            
        }
    }
}

struct WelcomeButton_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeButton()
    }
}
