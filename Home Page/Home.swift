
import SwiftUI

struct Home: View {
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                HomePage()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
