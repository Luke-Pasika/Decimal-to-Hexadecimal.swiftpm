import SwiftUI

struct ContentView: View {
    @State private var decimalValue: String = ""
    @State private var hexadecimalValue: String = ""
    @State private var conversionType: ConversionType = .decimalToHexadecimal

    enum ConversionType {
        case decimalToHexadecimal
        case hexadecimalToDecimal
    }

    var body: some View {
        VStack {
            Text("Decimal and Hexadecimal Converter")
                .font(.title)
                .padding()

            Picker("Select Conversion", selection: $conversionType) {
                Text("Decimal to Hexadecimal").tag(ConversionType.decimalToHexadecimal)
                Text("Hexadecimal to Decimal").tag(ConversionType.hexadecimalToDecimal)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()

            TextField(conversionType == .decimalToHexadecimal ? "Enter a decimal number" : "Enter a hexadecimal number", text: $decimalValue)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                if conversionType == .decimalToHexadecimal {
                    if let decimal = Int(decimalValue) {
                        hexadecimalValue = String(format: "%X", decimal)
                    } else {
                        hexadecimalValue = "Invalid input"
                    }
                } else {
                    if let hexToDecimal = Int(decimalValue, radix: 16) {
                        hexadecimalValue = String(hexToDecimal)
                    } else {
                        hexadecimalValue = "Invalid input"
                    }
                }
            }) {
                Text("Convert")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Text(conversionType == .decimalToHexadecimal ? "Hexadecimal: \(hexadecimalValue)" : "Decimal: \(hexadecimalValue)")
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

