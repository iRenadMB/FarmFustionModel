
import SwiftUI

struct SignUpButton: View {
    
    @State var showFullScreen: Bool = false
    
    var body: some View {
        
        NavigationStack{
            
            VStack(alignment: .center){
                
                Button("Sign Up") {
                    showFullScreen.toggle()
                }
                .foregroundColor(Color.white)
                .frame(width: 340, height: 50)
                .background(Color("background"))
                .cornerRadius(10)
                .padding()
                
                VStack{
                    Text("By continuing you agree to Waze's ")
                        .font(.footnote)
                        .foregroundColor(.black) +
                    Text("Terms of Service")
                        .foregroundColor(.blue)
                        .font(.footnote) +
                    Text(" and ")
                        .foregroundColor(.black)
                        .font(.footnote) +
                    Text("Privacy Policy")
                        .foregroundColor(.blue)
                    .font(.footnote) }
                .multilineTextAlignment(.center)
                .padding(.horizontal, 80)
                
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

struct SignUpButton_Previews: PreviewProvider {
    static var previews: some View {
        SignUpButton()
    }
}
