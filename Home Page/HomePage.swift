
import SwiftUI

struct HomePage: View {
    
    @State var textfieldValue = ""
    
    var body: some View {
        
        ScrollView{
            
            VStack(alignment: .leading){
                
                ZStack(alignment: .center){
                    TextField("Search of name", text: $textfieldValue)
                        .padding(.leading, 30)
                    RoundedRectangle(cornerRadius: 50)
                        .fill(Color.gray).opacity(0.2)
                        .frame(width: 350 , height: 60)
                }
                
                Text("List of Vegetables")
                    .padding(.top)
//                    .padding(.leading)
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                ScrollView(.horizontal){
                    HStack{
                        ForEach(allVegetables , id: \.id){ vegetable in
                            
                            VStack(alignment: .leading){
                                
                                Image(vegetable.imageName)
                                    .resizable()
                                    .frame(width: 190, height: 120)
                                Text(vegetable.vegetablesName)
                                Text(vegetable.price)
                                    .padding(.top, 0.3)
                                    .foregroundColor(Color.gray)
                                
                                HStack{
                                    Text(vegetable.priceNum)
                                        .padding(.horizontal, 10)
                                    Button("Add"){}
                                        .frame(width: 100, height: 30)
                                        .background(Color("background"))
                                        .cornerRadius(5)
                                        .padding(.horizontal, 16)
                                        .foregroundColor(Color.white)
                                }
                            }.background(Color.gray.opacity(0.2))
                        }
                    } .cornerRadius(5)
                }
                Spacer()
                    .padding()
                Text("Featured Today")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                
                Image("seasonsale")
                    .resizable()
                    .frame(width: 340, height: 200)
                    .cornerRadius(10)
            }
            
            .padding()
        }.padding(.top, 50)
    }
    
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
