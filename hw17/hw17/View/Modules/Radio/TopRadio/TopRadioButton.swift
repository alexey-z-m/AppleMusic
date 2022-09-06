import SwiftUI

struct TopRadioButton: View {
    @Environment(\.colorScheme) var colorScheme
    let type: String
    let name: String
    let discription: String
    let nameImage: String
    
    var body: some View {
        Button(action: {}) {
            VStack(alignment: .leading, spacing: 5) {
                Text(type)
                    .foregroundColor(.secondary)
                    .font(.system(size: 15))
                
                Text(name)
                    .frame(minWidth: 380, alignment: .leading)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                
                Text(discription)
                    .frame(minWidth: 380, alignment: .leading)
                    .font(.system(size: 20, weight: .regular, design: .default))
                    .foregroundColor(.secondary)
                
                Image(nameImage)
                    .resizable()
                    .frame(width: 380, height: 240)
                    .cornerRadius(10)
            }
        }
    }
}
