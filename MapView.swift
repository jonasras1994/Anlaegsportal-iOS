//
//  MapView.swift
//  Anlaegsportal-iOS
//
//  Created by Jonas Rasmussen on 08/10/2020.
//  Copyright © 2020 Jonas Rasmussen. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        
        MKMapView()
    }
    func updateUIView(_ uiView: MapView.UIViewType, context: UIViewRepresentableContext<MapView>) {
        
        let coordinate = CLLocationCoordinate2D(
            latitude: 55.6277243, longitude: 12.0805315)
        let span = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
