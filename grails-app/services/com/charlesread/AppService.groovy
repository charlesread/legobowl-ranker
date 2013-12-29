package com.charlesread

class AppService {

    def indicativeCheck(Contestant contestant, def group) {
        if (group.indicative) {
            def list
            switch (group) {
                case ScoreValues:
                    list = ScoreValues.findAllByContestantAndIndicative(contestant,true)
                    break
                case ScoreTechnical:
                    list = ScoreTechnical.findAllByContestantAndIndicative(contestant,true)
                    break
                case ScoreProject:
                    list = ScoreProject.findAllByContestantAndIndicative(contestant,true)
                    break
                default:
                    break
            }
            if (list.size() > 0) {
                list.each {
                    it.indicative = false
                    it.save(flush: true)
                }
            }
        }

    }
}
