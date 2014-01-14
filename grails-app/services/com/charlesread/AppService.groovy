package com.charlesread

class AppService {

    def indicativeCheck(def group, String indicative) {
        if (indicative == 'on') {
            def list
            switch (group) {
                case ScoreValues:
                    list = ScoreValues.findAllByContestantAndIndicative(group.contestant,true)
                    break
                case ScoreTechnical:
                    list = ScoreTechnical.findAllByContestantAndIndicative(group.contestant,true)
                    break
                case ScoreProject:
                    list = ScoreProject.findAllByContestantAndIndicative(group.contestant,true)
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

    def toggleIndicative(def score) {
        if (!score.indicative) {
            indicativeCheck(score, 'on')
        }
        score.indicative = !score.indicative
        score.save(flush: true)
    }
}
