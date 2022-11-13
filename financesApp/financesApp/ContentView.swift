//
//  ContentView.swift
//  financesApp
//
//  Created by Vishwa Pandian on 11/12/22.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    
    @State var showGoal = false
    @State var showingSheet = false
    @State var showStocks = false
    @State var showLoans = false
    @State var showSomething = false
    
    var body: some View {
        
        ScrollView {
            ScrollView(.horizontal) {
                HStack {
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 62/255, green: 180/255, blue: 249/255), Color(red: 62/255, green: 226/255, blue: 126/255)]), startPoint: .leading, endPoint: .topTrailing))
                                .frame(width: 350, height: 150)
                                .padding()
                            
                            HStack {
                                Text("Weeks Balance:")
                                    .bold()
                                    .foregroundColor(.white)
                                    .opacity(0.9)
                                    .padding(30)
                                    .padding(.bottom, 100)
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            
                            HStack {
                                
                                Spacer()
                                Text("$25.25")
                                    .bold()
                                    .foregroundColor(.white)
                                    .opacity(0.9)
                                    .padding(30)
                                    .font(.system(size: 36))
                                    .padding(.top, 75)
                            }
                            
                        }
                        .shadow(radius: 10)
                    }
                    
                    Button {
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 62/255, green: 226/255, blue: 126/255), Color(red: 240/255, green: 213/255, blue:13/255)]), startPoint: .bottomLeading, endPoint: .topTrailing))
                                .frame(width: 350, height: 150)
                                .padding()
                            
                            HStack {
                                Text("Total Balance:")
                                    .bold()
                                    .foregroundColor(.white)
                                    .opacity(0.9)
                                    .padding(30)
                                    .padding(.bottom, 100)
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            
                            HStack {
                                
                                Spacer()
                                Text("$112.56")
                                    .bold()
                                    .foregroundColor(.white)
                                    .opacity(0.9)
                                    .padding(30)
                                    .font(.system(size: 36))
                                    .padding(.top, 75)
                            }
                        }
                        .shadow(radius: 10)
                    }
                    
                }
            }.padding(.horizontal, 25)
            
            VStack {
                Button {
                    
                } label: {
                    HStack {
                        ZStack {
                            Image(systemName: "airplane.departure")
                                .shadow(radius: 10)
                            Circle()
                                .opacity(0.1)
                                .frame(width: 40, height: 40)
                            
                        }
                        Spacer()
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 315, height: 30)
                                .shadow(radius: 10)
                                .opacity(0.1)
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 200, height: 30)
                                    .foregroundColor(Color(red: 62/255, green: 226/255, blue: 126/255))
                                    .shadow(radius: 10)
                                Spacer()
                            }
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        ZStack {
                            Image(systemName: "gamecontroller.fill")
                                .shadow(radius: 10)
                            Circle()
                                .opacity(0.1)
                                .frame(width: 40, height: 40)
                        }
                        Spacer()
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 315, height: 30)
                                .opacity(0.1)
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 35, height: 30)
                                    .foregroundColor(Color(red: 62/255, green: 226/255, blue: 126/255))
                                    .shadow(radius: 10)
                                Spacer()
                            }
                        }
                        
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal)
                }
                
                Button {
                    
                } label: {
                    HStack {
                        ZStack {
                            Image(systemName: "laptopcomputer")
                                .shadow(radius: 10)
                            Circle()
                                .opacity(0.1)
                        }
                        Spacer()
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 315, height: 30)
                                .opacity(0.1)
                            
                            HStack {
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 275, height: 30)
                                    .foregroundColor(Color(red: 62/255, green: 226/255, blue: 126/255))
                                Spacer()
                            }
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.horizontal)
                }
                
                if (showGoal) {
                    Button {
                        
                    } label: {
                        HStack {
                            ZStack {
                                Image(systemName: "gamecontroller.fill")
                                    .shadow(radius: 10)
                                Circle()
                                    .opacity(0.1)
                                    .frame(width: 40, height: 40)
                            }
                            Spacer()
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 315, height: 30)
                                    .opacity(0.1)
                                
                                
                            }
                            
                        }
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    }
                }
                
                Button {
                    showingSheet.toggle()
                } label: {
                    HStack {
                        ZStack {
                            Image(systemName: "plus")
                                .shadow(radius: 10)
                            Circle()
                                .opacity(0.1)
                                .frame(width: 40, height: 40)
                        }
                    }
                    .foregroundColor(.black)
                }
                
                Spacer()
            }
            .padding()
            
            
            HStack {
                Button {
                        showStocks.toggle()
                } label: {
                    
                    LineChartView(data: [34,56,72,38,43,60,70], title: "Stocks")
                        .foregroundColor(.black)
                    
                }
                    
                //Spacer()
                
                Button {
                    showSomething.toggle()
                } label: {
                    
                
                    MultiLineChartView(data: [([8,32,11,23,40,28], GradientColors.green), ([90,99,78,111,70,60,77], GradientColors.purple), ([34,56,72,38,43,100,50], GradientColors.orngPink)], title: "FI/RE")
                        .foregroundColor(.black)

                }
            }
            //.padding()
            
            HStack {
                Button {
                    showStocks.toggle()
                } label: {
                    
                    let chartStyle = ChartStyle(backgroundColor: Color.white, accentColor: Color(red: 93/255, green: 49/255, blue: 235/255), secondGradientColor: Color(red: 62/255, green: 180/255, blue: 249/255), textColor: Color.black, legendTextColor: Color.gray, dropShadowColor: .gray )
                    
                    BarChartView(data: ChartData(points: [8,2]), title: "Money In/Out", legend: "+ $55.21", style: chartStyle, cornerImage:Image(systemName: ""))
                        
                }
                
                Button {
                    showLoans.toggle()
                } label: {
                    
                    let chartStyle = ChartStyle(backgroundColor: Color.white, accentColor: Color(red: 100/255, green: 209/255, blue: 126/255), secondGradientColor: Color(red: 62/255, green: 180/255, blue: 249/255), textColor: Color.black, legendTextColor: Color.white, dropShadowColor: .gray )
                    
                    PieChartView(data: [8,23,54,32], title: "Splits", style: chartStyle)
                }
                
            }
            .padding()
            
        }
        .sheet(isPresented: $showingSheet) {
            SheetView(showingSheet: $showingSheet, showGoal: $showGoal)
                }
        .sheet(isPresented: $showStocks) {
            StocksView()
                }
        .sheet(isPresented: $showLoans) {
            SplitsView()
                }
        .sheet(isPresented: $showSomething) {
            LoansView()
        }
    }
}

struct SplitsView: View {
    var body: some View {
        Image("image")
            .resizable()
            .scaledToFit()
            .padding()
    }
}

struct LoansView: View {
    var body: some View {
        VStack {
            //TextField("debt", text: $debt, format: .number)
                    //.keyboardType(.numberPad)
            MultiLineChartView(data: [ ([120, 500, 397, 556, 731, 924, 200, 250, 300, 600, 400], GradientColors.green), ([10000, 9760, 9520, 9280, 9040, 8800, 8560, 8320, 8080, 7840, 7600, 7360], GradientColors.orngPink)], title: "FI/RE", form: ChartForm.extraLarge)
                .padding()
            
            HStack {
                Circle()
                    .frame(width: 15, height: 30)
                    .foregroundColor(.green)
                
                    .padding(.horizontal)
                Text("Investment: $400")
                Spacer()
            }
            HStack {
                Circle()
                    .frame(width: 15, height: 30)
                    .foregroundColor(.red)
                    .padding(.horizontal)
                Text("Debt: $7,360")
                Spacer()
            }
            
            Spacer()
            Text("Remaining Payments: 16")
                .font(.title)
                .bold()
            Text("Years Until FI/RE:")
                .font(.title)
                .bold()
                .padding()
            Text("3 Years")
                .font(.title)
                .bold()
        }
    }
}

struct StocksView: View {
    var body: some View {
        ScrollView {
            VStack {
                
                LineView(data: [312.24, 290.14, 259.20, 290.25, 252.75, 224.47, 297.15, 275.61, 265.25, 227.54, 195.97], title: "Your Portfolio", legend: "14% down in 24 hours")
                
                MultiLineChartView(data: [([173.7714, 164.3767, 173.8239, 156.9403, 148.3866, 136.3035, 162.015, 156.9591, 137.9707, 153.0856, 149.7], GradientColors.orngPink)], title: "APPL", form: ChartForm.large, dropShadow: false)
                .padding(.top, 375)
                MultiLineChartView(data: [([135.30, 139.067, 114.1095, 113.7620, 108.9630, 116.320, 108.220, 95.65, 94.51, 96.41], GradientColors.orngPink)], title: "GOOGL", form: ChartForm.large, dropShadow: false)
                MultiLineChartView(data: [([312.24, 290.14, 259.20, 290.25, 252.75, 224.47, 297.15, 275.61, 265.25, 227.54, 195.97], GradientColors.orngPink)], title: "TSLA", form: ChartForm.large, dropShadow: false)
                MultiLineChartView(data: [([308.9247, 297.42, 306.90, 276.25, 271.29, 256.28, 280.14, 261.47, 232.90, 232.13, 247.11], GradientColors.orngPink)], title: "MSFT", form: ChartForm.large, dropShadow: false)
            }.padding()
        }
    }
}

struct SheetView: View {
    
    @State var iconNo = 1
    @State private var name: String = ""
    @State private var name2: String = ""
    @Binding var showingSheet: Bool
    @Binding var showGoal: Bool
    
    var body: some View {
        ScrollView {
                VStack {
                    
                    HStack {
                        Text("Add Goal")
                            .font(.title)
                            .padding()
                            .bold()
                            .opacity(0)
                        Spacer()
                    }
                    
                    HStack {
                        Text("Enter Name")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ZStack {
                        
                        
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 375, height: 40)
                            .opacity(0.1)
                        
                        HStack {
                            TextField("Unnamed", text: $name)
                        }
                        .padding(.horizontal, 30)
                    }
                    .padding(.bottom, 30)
                    
                    
                    HStack {
                        Text("Select Icon")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            Button {
                                iconNo = 1
                            } label: {
                                if (iconNo == 1) {
                                    ZStack {
                                        Image(systemName: "gamecontroller.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "gamecontroller.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                                
                            }
                            
                            Button {
                                iconNo = 2
                            } label: {
                                if (iconNo == 2) {
                                    ZStack {
                                        Image(systemName: "house.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "house.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                                
                            }
                            
                            Button {
                                iconNo = 3
                            } label: {
                                if (iconNo == 3) {
                                    ZStack {
                                        Image(systemName: "car.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "car.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                                
                            }
                            
                            Button {
                                iconNo = 4
                            } label: {
                                if (iconNo == 4) {
                                    ZStack {
                                        Image(systemName: "airplane.departure")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "airplane.departure")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                            }
                            
                            Button {
                                iconNo = 5
                            } label: {
                                if (iconNo == 5) {
                                    ZStack {
                                        Image(systemName: "person.3.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "person.3.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                                
                            }
                            
                            Button {
                                iconNo = 6
                            } label: {
                                if (iconNo == 6) {
                                    ZStack {
                                        Image(systemName: "tshirt.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "tshirt.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                                
                            }
                            
                            Button {
                                iconNo = 7
                            } label: {
                                if (iconNo == 7) {
                                    ZStack {
                                        Image(systemName: "ticket.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                    }

                                }    else {
                                    ZStack {
                                        Image(systemName: "ticket.fill")
                                            .shadow(radius: 10)
                                        Circle()
                                            .opacity(0.1)
                                            .frame(width: 40, height: 40)
                                            .foregroundColor(.gray)
                                    }
                                    .foregroundColor(.black)
                                }
                                
                                Button {
                                    iconNo = 8
                                } label: {
                                    if (iconNo == 8) {
                                        ZStack {
                                            Image(systemName: "cart.fill")
                                                .shadow(radius: 10)
                                            Circle()
                                                .opacity(0.1)
                                                .frame(width: 40, height: 40)
                                        }

                                    }    else {
                                        ZStack {
                                            Image(systemName: "cart.fill")
                                                .shadow(radius: 10)
                                            Circle()
                                                .opacity(0.1)
                                                .frame(width: 40, height: 40)
                                                .foregroundColor(.gray)
                                        }
                                        .foregroundColor(.black)
                                    }
                                }
                                
                                Button {
                                    iconNo = 9
                                } label: {
                                    if (iconNo == 9) {
                                        ZStack {
                                            Image(systemName: "laptopcomputer")
                                                .shadow(radius: 10)
                                            Circle()
                                                .opacity(0.1)
                                                .frame(width: 40, height: 40)
                                        }

                                    }    else {
                                        ZStack {
                                            Image(systemName: "laptopcomputer")
                                                .shadow(radius: 10)
                                            Circle()
                                                .opacity(0.1)
                                                .frame(width: 40, height: 40)
                                                .foregroundColor(.gray)
                                        }
                                        .foregroundColor(.black)
                                    }
                                    
                                }
                                
                            }
                            
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 30)
                    
                    
                    HStack {
                        Text("Goal Price")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ZStack {
                        
                        
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 375, height: 40)
                            .opacity(0.1)
                        
                        HStack {
                            TextField("$0.00", text: $name2)
                        }
                        .padding(.horizontal, 30)
                    }
                    .padding(.bottom, 30)
                    
                    HStack {
                        Text("Monthly Contribution")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 80, height: 40)
                                    .opacity(0.1)
                                
                                HStack {
                                    Text("$5.00")
                                        .bold()
                                }
                            }
                            .foregroundColor(.blue)
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 80, height: 40)
                                    .opacity(0.1)
                                
                                HStack {
                                    Text("$10.00")
                                        .bold()
                                }
                            }
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 80, height: 40)
                                    .opacity(0.1)
                                
                                HStack {
                                    Text("$25.00")
                                        .bold()
                                }
                            }
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 80, height: 40)
                                    .opacity(0.1)
                                
                                HStack {
                                    Text("$50.00")
                                        .bold()
                                }
                            }
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 80, height: 40)
                                    .opacity(0.1)
                                
                                HStack {
                                    Text("$100.00")
                                        .bold()
                                }
                            }
                            
                            ZStack {
                                
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 80, height: 40)
                                    .opacity(0.1)
                                
                                HStack {
                                    Text("custom")
                                        .bold()
                                }
                            }
                        }
                        .padding(.bottom, 215)
                        .padding(.horizontal)
                    }
                    
                    Button {
                        showingSheet = false
                        showGoal.toggle()
                    } label: {
                        ZStack {
                            Text("Add Goal +")
                                .bold()
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 120, height: 40)
                                .opacity(0.1)
                        }
                    }
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //LoansView()
    }
}
