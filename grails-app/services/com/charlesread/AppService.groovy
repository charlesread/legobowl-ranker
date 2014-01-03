package com.charlesread

class AppService {

    def indicativeCheck(def group, String indicative) {
//        println("indicativeCheck called")
//        println("val = ${indicative}")
        if (indicative == 'on') {
//            println("ind checked")
            def list
            switch (group) {
                case ScoreValues:
//                    println("ScoreValues")
                    list = ScoreValues.findAllByContestantAndIndicative(group.contestant,true)
                    break
                case ScoreTechnical:
//                    println("ScoreTechnical")
                    list = ScoreTechnical.findAllByContestantAndIndicative(group.contestant,true)
                    break
                case ScoreProject:
//                    println("ScoreProject")
                    list = ScoreProject.findAllByContestantAndIndicative(group.contestant,true)
                    break
                default:
                    break
            }
            if (list.size() > 0) {
//                println("list > 0")
                list.each {
                    it.indicative = false
                    it.save(flush: true)
                }
            }
        }

    }
}
