
import SwiftUI

struct SignUp: View {
    
    @State var Password = ""
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            Text("Hey there!")
                .bold()
                .font(.largeTitle)
                .padding(.bottom)
            
            SignUpTextField()
            
            Text("Password")
            SecureField("Enter your Password", text: $Password)
                .font(.title3)
            Divider()
                .padding(.horizontal, 20)
            
            Text("ForgetPassword ?")
                .foregroundColor(.blue)
                .padding(.leading)
                .padding(.top, 20)
            
            SignUpButton()
            
        }.padding(.leading)
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
