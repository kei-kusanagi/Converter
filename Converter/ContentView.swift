//
//  ContentView.swift
//  Converter
//
//  Created by Juan Carlos Robledo Morales on 22/08/24.
//

import SwiftUI

enum TemperatureUnit: String, CaseIterable, Identifiable {
    case celsius = "Celsius"
    case fahrenheit = "Fahrenheit"
    case kelvin = "Kelvin"
    
    var id: String { self.rawValue }
    
    var symbol: String {
        switch self {
        case .celsius: return "°C"
        case .fahrenheit: return "°F"
        case .kelvin: return "K"
        }
    }
}

struct ContentView: View {
    @State private var inputTemperature = 0.0
    @State private var inputUnit = TemperatureUnit.celsius
    @State private var outputUnit = TemperatureUnit.fahrenheit
    @FocusState private var amountIsFocused: Bool

    var convertedTemperature: String {
        let inputValue = Measurement(value: inputTemperature, unit: unitToMeasurementUnit(inputUnit))
        let outputValue = inputValue.converted(to: unitToMeasurementUnit(outputUnit))
        return String(format: "%.2f %@", outputValue.value, outputUnit.symbol)
    }
    
    var body: some View {
        
        VStack {
            NavigationStack {
                Form {
                    Section {
                        
                        TextField("Temperature", value: $inputTemperature, format: .number)
                            .bold()
                            .padding()
                            .keyboardType(.decimalPad)
                            .focused($amountIsFocused)
                            .frame(width: .infinity, height: .infinity).background(.red)

                        Picker("Input Unit", selection: $inputUnit) {
                            ForEach(TemperatureUnit.allCases) { unit in
                                Text(unit.rawValue).tag(unit)
                            }
                        }
                        .border(.purple, width: 1.5)
                        .pickerStyle(SegmentedPickerStyle())
                        
                        Picker("Output Unit", selection: $outputUnit) {
                            ForEach(TemperatureUnit.allCases) { unit in
                                Text(unit.rawValue).tag(unit)
                            }
                        }
                        
                            .border(.purple, width: 1.5)
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    
                    Section(header: Text("Converted Temperature")) {
                        Text(convertedTemperature)
                    }
                    
                    
                }
                .navigationTitle("Temperature Converter")
                .toolbar {
                    if amountIsFocused {
                        Button("Done") {
                            amountIsFocused = false
                        }
                    }
                }
                
            }
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .background(.gray)
    }
    
    private func unitToMeasurementUnit(_ unit: TemperatureUnit) -> UnitTemperature {
        switch unit {
        case .celsius: return .celsius
        case .fahrenheit: return .fahrenheit
        case .kelvin: return .kelvin
        }
    }
}

#Preview {
    ContentView()
}
