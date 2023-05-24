
import SwiftUI

struct Notification: View {
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 20){
            
            Text("Notifications")
                .bold()
                .font(.largeTitle)
            
            Text("Feb 24,2023")
                .bold()
                .font(.headline)
            
            HStack{
                
                Image("brinjalphoto")
                
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 55, height: 55)
                
                Text("Congrats! Your Brinjal farm has been approved for scale.")
                    .multilineTextAlignment(.leading)
            }
            
            HStack{
                Image("potatophoto")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 55, height: 55)
                
                Text("Humay! You can expect potato yield on March 5, 2023")
                    .multilineTextAlignment(.leading)
            }
//            .padding(.bottom, 15)
            
            Text("Feb 25,2023")
                .bold()
                .font(.headline)
            
            HStack{
                Image("tomatophoto")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 55, height: 55)
                
                Text("Market prices of on item you sell has raised by 20%")
                    .multilineTextAlignment(.leading)

            }
        }
        .padding(.leading)
        .padding(.bottom, 350)
//        .multilineTextAlignment(.leading)
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
