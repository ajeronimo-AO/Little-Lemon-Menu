import Foundation

class Model:ObservableObject {
  let restaurants = [
    RestaurantLocation(city: "Belas",
                       neighborhood: "Downtown",
                       phoneNumber: "(923) 555-9898"),
    RestaurantLocation(city: "Talatona",
                       neighborhood: "North Hollywood",
                       phoneNumber: "(923) 555-1453"),
    RestaurantLocation(city: "Los Angeles",
                       neighborhood: "Venice",
                       phoneNumber: "(923) 555-1222"),
    RestaurantLocation(city: "Nevada",
                       neighborhood: "Venice",
                       phoneNumber: "(725) 555-5454"),
    RestaurantLocation(city: "San Francisco",
                       neighborhood: "North Beach",
                       phoneNumber: "(234) 555-1345"),
    RestaurantLocation(city: "Kilamba",
                       neighborhood: "Union Square",
                       phoneNumber: "(435) 555-9813")
  ]
  
  @Published var reservation = Reservation()
  @Published var displayingReservationForm = false
  @Published var temporaryReservation = Reservation()
  @Published var followNavitationLink = false
  
  @Published var displayTabBar = true
  @Published var tabBarChanged = false
  @Published var tabViewSelectedIndex = 0 {
    didSet {
      tabBarChanged = true
    }
  }
}
