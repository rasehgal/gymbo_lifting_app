//
//  ThisExercise.swift
//  Gymbo_Math
//
//  Created by Rashmi S on 8/24/23.
//

import Foundation
struct ThisSet {
    var ex_type: String
    var ex_title: String
    var reps: Int
    var equipment: String
    var bar_weight: Int
    var plates: [Int]
    var total_weight: Int {
        var total = 0
        for plate in plates {
            total += plate
        }
        return bar_weight+(total*2)
    }
}

extension ThisSet {
    static let sampleData: [ThisSet] =
    [
        ThisSet(ex_type: "bench",
                ex_title: "Bench Press",
                   reps: 8,
                   equipment: "bar",
                   bar_weight: 45,
                plates: [20]),
        ThisSet(ex_type: "squat",
                ex_title: "Barbell Squat",
                reps: 3,
                equipment: "bar",
                bar_weight: 45,
                plates: [25, 25]
               ),
        ThisSet(ex_type: "dblrows",
                ex_title: "Dumbbell Rows",
                reps: 12,
                equipment: "dbl",
                bar_weight: 0,
                plates: [])
    ]
}
