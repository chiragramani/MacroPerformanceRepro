public class UserProfile {
    
    public let firstName: String
    public let lastName: String
    public let age: Int
    public let email: String
    public let phoneNumber: String
    public let username: String
    public let password: String
    public let dateOfBirth: String
    public let nationality: String
    public let gender: String
    
    public let homeAddress: Address
    public let mailingAddress: Address
    public let subscriptionDetails: SubscriptionDetails
    
    public let favoriteColor: String
    public let height: Double
    public let weight: Double
    public let eyeColor: String
    public let hairColor: String
    public let employmentStatus: String
    public let employerName: String
    public let jobTitle: String
    public let yearsOfExperience: Int
    public let highestEducationLevel: String
    
    
 
    init(firstName: String, lastName: String, age: Int, email: String, phoneNumber: String, username: String, password: String, dateOfBirth: String, nationality: String, gender: String, homeAddress: Address, mailingAddress: Address, subscriptionDetails: SubscriptionDetails, favoriteColor: String, height: Double, weight: Double, eyeColor: String, hairColor: String, employmentStatus: String, employerName: String, jobTitle: String, yearsOfExperience: Int, highestEducationLevel: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.email = email
        self.phoneNumber = phoneNumber
        self.username = username
        self.password = password
        self.dateOfBirth = dateOfBirth
        self.nationality = nationality
        self.gender = gender
        self.homeAddress = homeAddress
        self.mailingAddress = mailingAddress
        self.subscriptionDetails = subscriptionDetails
        self.favoriteColor = favoriteColor
        self.height = height
        self.weight = weight
        self.eyeColor = eyeColor
        self.hairColor = hairColor
        self.employmentStatus = employmentStatus
        self.employerName = employerName
        self.jobTitle = jobTitle
        self.yearsOfExperience = yearsOfExperience
        self.highestEducationLevel = highestEducationLevel
    }
}


public class Address {
    public let street: String
    public let city: String
    public let state: String
    public let postalCode: String
    public let country: String
    
    public init(street: String, city: String, state: String, postalCode: String, country: String) {
        self.street = street
        self.city = city
        self.state = state
        self.postalCode = postalCode
        self.country = country
    }
}



public class SubscriptionDetails {
    public let planName: String
    public let startDate: String
    public let endDate: String
    public let autoRenewal: Bool
    
    init(planName: String, startDate: String, endDate: String, autoRenewal: Bool) {
        self.planName = planName
        self.startDate = startDate
        self.endDate = endDate
        self.autoRenewal = autoRenewal
    }
}



func test() {
    // Source: Chat GPT
    let homeAddress = Address(street: "123 Appleseed Drive", city: "Techville", state: "Innovation", postalCode: "12345", country: "Utopia")
    let mailingAddress = Address(street: "456 Orchard Road", city: "Innovate City", state: "Future", postalCode: "67890", country: "Dystopia")
    let subscriptionDetails = SubscriptionDetails(planName: "Premium", startDate: "2024-01-01", endDate: "2024-12-31", autoRenewal: true)

    // Sample instance of the UserProfile
    let userProfile = UserProfile(
        firstName: "John",
        lastName: "Doe",
        age: 30,
        email: "johndoe@example.com",
        phoneNumber: "123-456-7890",
        username: "johndoe2024",
        password: "verysecurepassword",
        dateOfBirth: "1994-02-22",
        nationality: "Utopian",
        gender: "Male",
        homeAddress: homeAddress,
        mailingAddress: mailingAddress,
        subscriptionDetails: subscriptionDetails,
        favoriteColor: "Blue",
        height: 6.0,
        weight: 180.0,
        eyeColor: "Brown",
        hairColor: "Black",
        employmentStatus: "Employed",
        employerName: "Innovatech Inc.",
        jobTitle: "Software Engineer",
        yearsOfExperience: 8,
        highestEducationLevel: "Master's Degree"
    )

    print("User's full name: \(userProfile.firstName) \(userProfile.lastName)")
}
