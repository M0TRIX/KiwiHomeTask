
class Domain{
    var address = "https://api.skypicker.com/"
    var subAddress = "flights?v=3&sort="
    var query = "popularity&asc=0&locale=en&daysInDestinationFrom=&daysInDestinationTo=&affilid=&children=0&infants=0&flyFrom=49.2-16.61-250km&to=anywhere&featureName=aggregateResults&typeFlight=oneway&returnFrom=&returnTo=&one_per_date=1&oneforcity=1&wait_for_refresh=0&adults=1&limit=5&partner=skypicker"
    var imageUrl = "https://images.kiwi.com/photos/600x330/"
    
    func getDomain()->String{
        return address
    }
    
    func getsubDomain()->String{
        return subAddress
    }
    
    func getFullDomain()->String{
        return address + subAddress + query
    }

    func getImageUrl(imageName:String)->String{
        return imageUrl + imageName + ".jpg"
    }
}
