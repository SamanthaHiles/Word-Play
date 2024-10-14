//
//  StoryView.swift
//  Word Play
//
//  Created by Samantha Hiles on 10/8/24.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    
    func writeStory() -> String {
        return "If you have ever met my \(words.animal), Snoopy, then you know he is not you average canine companion." + " Some kids might find it \(words.adjective0) that thier beagle has such a/an \(words.adjective1) imagination, but not me!" + " All I have ever wanted was a normal \(words.adjective2) dog." + " Why can't I have a/an \(words.noun0) just like everyone else?" + " Instead, I've got a part-time pet, part-time World War 1 pilot, part-time \(words.noun1), and a full-time pain!" + " \(words.adjective3) grief!" + " Sometimes he looks at me like I am chopped \(words.typeOfFood)- good for nothing except bringing he dinner out to (the) \(words.place0)." + " Still, it is sure nice to have someone with really \(words.adjective4) ears around." + " And after a long day, at (the) \(words.place1), there is nothing better than coming home to a nice wet \(words.noun2) on the cheek." + " Aw, who am I kidding?" + " I am really lucky to have a/an \(words.noun3) like Snoopy." + " They don't call dogs man's best \(words.noun4) for nothing!"
    }
}

#Preview {
    StoryView(words: Words())
}


