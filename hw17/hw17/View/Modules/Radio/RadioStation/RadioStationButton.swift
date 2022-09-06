import SwiftUI

struct RadioStationButton: View {
    @Environment(\.colorScheme) var colorScheme
    let nameImage: String
    let name: String
    let discription: String
    
    var body: some View {
        Button(action: {}) {
             HStack{
                 Image(nameImage)
                     .resizable()
                     .scaledToFill()
                     .frame(width: 110, height: 100, alignment: .center)
                     .cornerRadius(10)
                     .padding(.leading)
                 
                 LazyVStack (alignment: .leading) {
                     Text(name)
                         .bold()
                         .foregroundColor(colorScheme == .dark ? .white : .black)
                     
                     Text(discription)
                         .foregroundColor(colorScheme == .dark ? .white : .black)
                 }
             }
         }
    }
}
