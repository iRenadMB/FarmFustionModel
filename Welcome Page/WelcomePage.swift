
import SwiftUI

struct WelcomePage: View {
    
    var body: some View {
        
        NavigationStack{
            
        VStack(alignment: .leading, spacing: 10){
            
            ZStack{
                Color("background")
                    .mask(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    .edgesIgnoringSafeArea(.all)
                Spacer()
                
                RoundedRectangle(cornerRadius: 35)
                    .padding(.top, 90)
                    .foregroundColor(.white)
                    .frame(width: 400, height: 850 )
                    .presentationDetents([.medium, .fraction((0.40))])
                
                VStack(alignment: .leading, spacing: 0){
                    Text("Welcome Back!")
                        .font(.system(size: 25, weight: .heavy, design: .default))
                        .fontWeight(.heavy)
                        .padding()
                    Text("Sign in with  your account")
                        .padding()
                        .padding(.bottom, 20)
                    
                    VStack{
                        
                        WelcomeTextField()
                        
                        WelcomeButton()
                        
                    }
                }
                }
            }
        }
    }
}

struct WelcomePage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomePage()
    }
}
