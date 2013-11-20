import com.charlesread.AppUser
import com.charlesread.Contestant
import com.charlesread.Criterion
import com.charlesread.Judge
import com.charlesread.Score

class BootStrap {

    def init = { servletContext ->

//        def charles = new Judge(name: 'Charles').save(flush: true)
//        def sarah = new Judge(name: 'Sarah').save(flush: true)
//        def chris = new Judge(name: 'Chris').save(flush: true)
//        def charles = AppUser.get(3)
//        def sarah = AppUser.get(4)
//        def chris = AppUser.get(5)
//
//        def team1 = new Contestant(name: 'Team 1').save(flush: true)
//        def team2 = new Contestant(name: 'Team 2').save(flush: true)
//        def team3 = new Contestant(name: 'Team 3').save(flush: true)
//
//        def score1 = new Score(contestant: team1, judge: charles,
//                a11:  2,
//                a12:  3,
//                a13:  1,
//                a21:  2,
//                a22:  3,
//                a23:  2,
//                a31:  0,
//                a32:  1,
//                a33:  4,
//
//                b11:  4,
//                b12:  3,
//                b13:  1,
//                b14:  2,
//                b21:  1,
//                b22:  1,
//                b23:  0,
//                b31:  1,
//                b32:  1,
//                b33:  0,
//
//                c11:  2,
//                c12:  1,
//                c13:  4,
//                c21:  1,
//                c22:  3,
//                c23:  4,
//                c31:  1,
//                c32:  4,
//                c33:  2).save(flush: true)
//
//        def score2 = new Score(contestant: team1, judge: sarah,
//                a11:  1,
//                a12:  3,
//                a13:  3,
//                a21:  2,
//                a22:  3,
//                a23:  4,
//                a31:  0,
//                a32:  1,
//                a33:  2,
//
//                b11:  1,
//                b12:  3,
//                b13:  3,
//                b14:  2,
//                b21:  4,
//                b22:  3,
//                b23:  1,
//                b31:  1,
//                b32:  1,
//                b33:  4,
//
//                c11:  2,
//                c12:  1,
//                c13:  4,
//                c21:  3,
//                c22:  2,
//                c23:  2,
//                c31:  1,
//                c32:  3,
//                c33:  2).save(flush: true)
//
//        def score3 = new Score(contestant: team1, judge: chris,
//                a11:  1,
//                a12:  2,
//                a13:  1,
//                a21:  4,
//                a22:  4,
//                a23:  2,
//                a31:  0,
//                a32:  1,
//                a33:  1,
//
//                b11:  1,
//                b12:  2,
//                b13:  4,
//                b14:  2,
//                b21:  4,
//                b22:  3,
//                b23:  0,
//                b31:  3,
//                b32:  1,
//                b33:  1,
//
//                c11:  2,
//                c12:  3,
//                c13:  4,
//                c21:  2,
//                c22:  2,
//                c23:  1,
//                c31:  1,
//                c32:  4,
//                c33:  2).save(flush: true)
//        ///////////////////
//        def score4 = new Score(contestant: team2, judge: charles,
//                a11:  1,
//                a12:  3,
//                a13:  2,
//                a21:  2,
//                a22:  4,
//                a23:  2,
//                a31:  0,
//                a32:  1,
//                a33:  0,
//
//                b11:  4,
//                b12:  3,
//                b13:  1,
//                b14:  2,
//                b21:  4,
//                b22:  3,
//                b23:  0,
//                b31:  3,
//                b32:  1,
//                b33:  3,
//
//                c11:  2,
//                c12:  0,
//                c13:  4,
//                c21:  1,
//                c22:  3,
//                c23:  4,
//                c31:  2,
//                c32:  1,
//                c33:  2).save(flush: true)
//
//        def score5 = new Score(contestant: team2, judge: sarah,
//                a11:  2,
//                a12:  0,
//                a13:  1,
//                a21:  1,
//                a22:  3,
//                a23:  2,
//                a31:  4,
//                a32:  1,
//                a33:  2,
//
//                b11:  4,
//                b12:  3,
//                b13:  1,
//                b14:  2,
//                b21:  3,
//                b22:  3,
//                b23:  0,
//                b31:  4,
//                b32:  1,
//                b33:  1,
//
//                c11:  2,
//                c12:  2,
//                c13:  4,
//                c21:  1,
//                c22:  2,
//                c23:  4,
//                c31:  1,
//                c32:  1,
//                c33:  2).save(flush: true)
//
//        def score6 = new Score(contestant: team2, judge: chris,
//                a11:  2,
//                a12:  1,
//                a13:  1,
//                a21:  2,
//                a22:  0,
//                a23:  2,
//                a31:  4,
//                a32:  1,
//                a33:  4,
//
//                b11:  1,
//                b12:  2,
//                b13:  4,
//                b14:  2,
//                b21:  1,
//                b22:  2,
//                b23:  0,
//                b31:  4,
//                b32:  1,
//                b33:  0,
//
//                c11:  2,
//                c12:  4,
//                c13:  4,
//                c21:  2,
//                c22:  2,
//                c23:  4,
//                c31:  3,
//                c32:  1,
//                c33:  2).save(flush: true)
//        /////////////////
//        def score7 = new Score(contestant: team3, judge: charles,
//                a11:  1,
//                a12:  1,
//                a13:  1,
//                a21:  1,
//                a22:  1,
//                a23:  1,
//                a31:  1,
//                a32:  1,
//                a33:  1,
//
//                b11:  1,
//                b12:  1,
//                b13:  1,
//                b14:  1,
//                b21:  1,
//                b22:  1,
//                b23:  1,
//                b31:  1,
//                b32:  1,
//                b33:  1,
//
//                c11:  1,
//                c12:  1,
//                c13:  1,
//                c21:  1,
//                c22:  1,
//                c23:  1,
//                c31:  1,
//                c32:  1,
//                c33:  1).save(flush: true)
//
//        def score8 = new Score(contestant: team3, judge: sarah,
//                a11:  1,
//                a12:  1,
//                a13:  1,
//                a21:  1,
//                a22:  1,
//                a23:  1,
//                a31:  1,
//                a32:  1,
//                a33:  1,
//
//                b11:  1,
//                b12:  1,
//                b13:  1,
//                b14:  1,
//                b21:  1,
//                b22:  1,
//                b23:  1,
//                b31:  1,
//                b32:  1,
//                b33:  1,
//
//                c11:  1,
//                c12:  1,
//                c13:  1,
//                c21:  1,
//                c22:  1,
//                c23:  1,
//                c31:  1,
//                c32:  1,
//                c33:  1).save(flush: true)
//
//        def score9 = new Score(contestant: team3, judge: chris,
//                a11:  1,
//                a12:  1,
//                a13:  1,
//                a21:  1,
//                a22:  1,
//                a23:  1,
//                a31:  1,
//                a32:  1,
//                a33:  1,
//
//                b11:  1,
//                b12:  1,
//                b13:  1,
//                b14:  1,
//                b21:  1,
//                b22:  1,
//                b23:  1,
//                b31:  1,
//                b32:  1,
//                b33:  1,
//
//                c11:  1,
//                c12:  1,
//                c13:  1,
//                c21:  1,
//                c22:  1,
//                c23:  1,
//                c31:  1,
//                c32:  1,
//                c33:  1).save(flush: true)

//        def c1 = new Criterion(code: "a11", name: "Inspiration - Discovery", description: "Balanced emphasis on all three aspects (Robot, Project, Core Values) of FLL; it's not just about winning awards", s1: "emphasis on only one aspect; others neglected", s2: "emphasis on two aspects; one aspect neglected", s3: "emphasis on all three aspects", s4: "balanced emphasis on all three aspects").save(flush: true)
//        def c2 = new Criterion(code: "a12", name: "Inspiration - Team Spirit", description: "Enthusiastic and fun expression of the team identity ", s1: "minimal enthusiasm AND minimal identity ", s2: "minimal enthusiasm OR minimal identity ", s3: "team is enthusiastic and fun; clear identity ", s4: "team engages others in their enthusiasm & fun; clear identity ").save(flush: true)

    }
    def destroy = {
    }
}
