
import SwiftUI

struct WelcomeTextField: View {
    
    @State private var email = ""
    @State private var password  = ""
 
    var body: some View {
        
        VStack(alignment: .leading , spacing: 15){
            
            TextField("Email", text: $email)
            
            //  .textFieldStyle(RoundedBorderTextFieldStyle())
            //  .textFieldStyle(.plain)
            
                .padding(.leading)
            Divider()
                .padding(.horizontal, 20)
            
            // Rectangle()
            // .frame(width: 400, height: 1)
            // .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.757))
            
            SecureField("Password", text: $password)
            
            // .textFieldStyle(.plain)
            
                .padding(.leading)
            Divider()
                .padding(.horizontal, 20)
            
            // Rectangle()
            // .frame(width: 400, height: 1)
            // .foregroundColor(Color(hue: 1.0, saturation: 0.021, brightness: 0.757))
            
            Text("ForgetPassword ?")
                .foregroundColor(.blue)
                .padding(.leading)
                .padding(.top, 20)
            
        }
    }
}

struct WelcomeTextField_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeTextField()
    }
}
