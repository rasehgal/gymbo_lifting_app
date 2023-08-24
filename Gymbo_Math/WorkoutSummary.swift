//
//  WorkoutSummary.swift
//  Gymbo_Math
//
//  Created by Rashmi S on 8/24/23.
//

import SwiftUI

struct WorkoutSummary: View {
    let this_set: ThisSet
    var body: some View {
        VStack(alignment: .center) {
            Text(this_set.ex_title)
                .font(.headline)
            
            Spacer()
            HStack{
                Label("\(this_set.total_weight)", systemImage: "dumbbell.fill")
                Spacer()
                Label("\(this_set.reps)", systemImage: "number")
            }
        }
    }
}

struct WorkoutSummary_Previews: PreviewProvider {
    static var this_set = ThisSet.sampleData[0]
    static var previews: some View {
        WorkoutSummary(this_set: this_set)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
