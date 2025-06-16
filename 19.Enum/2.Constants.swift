
// In previous code we learned about enum basics

// in this code we gonna learn about enum constants

enum ItemInfoType {
        case location, repos, gists, followers, following
}

enum SFSymbols {
        static let location = "mappin.and.ellipse"
        static let repos = "folder"
        static let gists = "text.alignleft"
        static let followers = "heart"
        static let following = "person.2"
}

func set(itemInfoType: ItemInfoType) {
        switch itemInfoType {
        case .location:
                print(SFSymbols.location)

        case .repos:
                print(SFSymbols.repos)

        case .gists:
                print(SFSymbols.gists)
        
        case .followers:
                print(SFSymbols.followers)

        case .following:
                print(SFSymbols.following)
        }
}

set(itemInfoType: .followers)