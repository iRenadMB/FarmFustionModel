
import SwiftUI

struct SignUpTextField: View {
      
    @State var NameUser = ""
    @State var EmailAddress = ""
    @State var PhoneNum = ""
    @State var Password = ""

    var body: some View {
        
        VStack(alignment: .leading , spacing: 10){
            
            Text("Create your account")
            TextField("Your Name", text: $NameUser)
                .font(.title3)
            Divider()
                .padding(.horizontal, 20)
            
            Text("Email Address")
            TextField("Enter your Email Address", text: $EmailAddress)
                .font(.title3)
            Divider()
                .padding(.horizontal, 20)
            
            Text("Phone Number")
            TextField("Enter your Phone Number", text: $PhoneNum)
                .font(.title3)
            Divider()
                .padding(.horizontal, 20)
            

     
        }
    }
}

struct SignUpTextField_Previews: PreviewProvider {
    static var previews: some View {
        SignUpTextField()
    }
}
