
import SwiftUI

struct Profile: View {
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                ZStack{
                    Image("farm")
                        .resizable()
                        .frame(width: 500,
                               height: 250)
                    Image("profileicon")
                        .resizable()
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(Color.white, lineWidth: 3))
                        .frame(width: 72, height: 72)
                        .padding(.top, 100)
                        .padding(.trailing, 320)
                        .offset(x: 10, y: 50)
                }
                
                Text("Talal Banjun")
                    .padding(.top, 50)
                    .padding(.trailing, 290)
                Text("Experienced Farmer")
                    .font(.caption2)
                    .padding(.top, -6)
                    .padding(.trailing, 270)
                Text("Farm Details")
                    .font(.title3).bold()
                    .padding(.top, 40)
                    .padding(.trailing, 270)
                Text("Farm Products")
                    .padding(.top, 10)
                    .padding(.trailing, 275)
                //            .padding(.horizontal)
                Spacer()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    VStack{
                        HStack{
                            ForEach(allProfileModel ){ Models in
                                VStack{
                                    Image(Models.imageName)
                                        .resizable()
                                        .frame(width: 150, height: 150)
                                        .shadow(radius: 10)
                                    Text(Models.title).font(.caption).bold()
                                    
                                }
                            }
                        }
                        
                        .padding(.leading, 10)
                    }
                }
                
                Text("Fruits & Vegetables").font(.callout).bold()
                    .padding(.top, 30)
                    .padding(.trailing, 240)
                    .padding(.bottom, 300)
                
            }
            .ignoresSafeArea()
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
