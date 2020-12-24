//
//  ContentView.swift
//  Shared
//
//  Created by user on 2020/12/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                MapContentView()
                    .frame(width: UIScreen.main.bounds.width, height: 320, alignment: .center)
                    .background(Color.white)
                DetailView()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                DriverView()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                RemarkView()
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
            }
            .background(Color.init(.systemGray6))
        }
    }
}

struct MapContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.0600115, longitude: 121.5437835), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct DetailView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Divider()
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("2020/01/01")
                        .font(.custom("PingFangTC-Semibold", size: 20))
                    Text("12:00")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 10) {
                    Text("money")
                        .font(.subheadline)
                    Text("payment")
                        .font(.subheadline)
                }
            }
            .padding()
            Divider()
            VStack(spacing: 8) {
                HStack {
                    Image(systemName: "airpodspro")
                        .foregroundColor(Color.red)
                    Text("address01")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                HStack {
                    Image(systemName: "airpodspro")
                        .foregroundColor(Color.red)
                    Text("address02")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                HStack {
                    Image(systemName: "airpodspro")
                        .foregroundColor(Color.red)
                    Text("address03")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
                HStack {
                    Image(systemName: "airpodspro")
                        .foregroundColor(Color.red)
                    Text("address04")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
            }
            .padding()
            Divider()
        }
    }
}

struct DriverView: View {
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                HStack {
                    Image(systemName: "car")
                    VStack(alignment: .leading, spacing: 10) {
                        Text("XXXXX")
                            .font(.custom("PingFangTC-Semibold", size: 20))
                        Text("★5.0")
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                    }
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 10) {
                    HStack {
                        Text("Comment")
                            .font(.custom("PingFangTC-Semibold", size: 20))
                            .foregroundColor(Color.red)
                        Image(systemName: "triangle")
                    }
                }
            }
            .padding()
            Divider()
        }
    }
}

struct RemarkView: View {
    
    var body: some View {
        VStack {
            Divider()
            HStack {
                VStack(alignment: .leading) {
                    Text("Remark")
                        .font(.custom("PingFangTC-Semibold", size: 20))
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Image(systemName: "triangle")
                }
            }
            .padding()
            Divider()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
