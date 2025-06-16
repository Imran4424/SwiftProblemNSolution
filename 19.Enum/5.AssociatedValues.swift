
enum SocialMedia {
        case twitter(followers: Int)
        case youtube(subscribers: Int)
        case instagram
        case linkedIn
}

func getSponsorshipEligibility(for platform: SocialMedia) {
        switch platform {
        case .twitter(let followers):
                if followers > 10000 {
                        print("Eligible for sponsored twitter")
                } else {
                        print("Not Eligible for sponsorship")
                }

        case .youtube(let subscribers) where subscribers > 25000:
                print("Eligible for sponsored youtube")

        case .instagram, .youtube:
                print("Not Eligible for sponsorship")

        case .linkedIn:
                print("Not Eligible for sponsorship")
        }
}

getSponsorshipEligibility(for: .youtube(subscribers: 55155))
getSponsorshipEligibility(for: .youtube(subscribers: 5))
getSponsorshipEligibility(for: .linkedIn)