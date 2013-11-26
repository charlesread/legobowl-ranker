package com.charlesread

class LegoRankTagLib {

    def springSecurityService

    def radioLego = {attr, body ->
        out << "<tr class='radiorow'>"
        out << "<td style='width:30px;'><input class='roundedOne' type='radio' name='${attr.name}' value='0' ${attr.val == 0 ? 'checked' : ''}  /></td>"
        out << "<td><input class='roundedOne' type='radio' name='${attr.name}' value='1' ${attr.val == 1 ? 'checked' : ''}  /></td>"
        out << "<td><input class='roundedOne' type='radio' name='${attr.name}' value='2' ${attr.val == 2 ? 'checked' : ''}   /></td>"
        out << "<td><input class='roundedOne' type='radio' name='${attr.name}' value='3' ${attr.val == 3 ? 'checked' : ''}  /></td>"
        out << "<td><input class='roundedOne' type='radio' name='${attr.name}' value='4' ${attr.val == 4 ? 'checked' : ''}  /></td>"
        out << "</tr>"
    }

    def criterionBlock = {attr, body ->

        Criterion c = Criterion.findByCode(attr.code)


        out << "<div class='criterionBlock' style='background-color:${attr.color};'><table class='criterionTable' width='800'>"
        out << "<tr>"
        out << "<td colspan='2'>"
        out << c.name
        out << "</td>"
        out << "<td colspan='3'>"
        out << c.description
        out << "</td>"
        out << "</tr>"
        out << "<tr class='radiorow' width='40'>"
        out << "<td style='width:30px;'><label><input class='roundedOne' type='radio' name='${attr.name}' value='0' ${attr.criterion == 0 ? 'checked' : ''}  /><span>ND</span></label></td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='1' ${attr.criterion == 1 ? 'checked' : ''}  /><span>${c.s1}</span></label>"
        out << "</td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='2' ${attr.criterion == 2 ? 'checked' : ''}  /><span>${c.s2}</span></label>"
        out << "</td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='3' ${attr.criterion == 3 ? 'checked' : ''}  /><span>${c.s3}</span></label>"
        out << "</td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='4' ${attr.criterion == 4 ? 'checked' : ''}  /><span>${c.s4}</span></label>"
        out << "</td>"
        out << "</tr>"
        out << "</table></div>"


    }

//    def criterionBlock = {attr, body ->
//
//        Criterion c = Criterion.findByCode(attr.code)
//
//
//        out << "<div class='criterionBlock' style='background-color:${attr.color};'><table class='criterionTable' width='800'>"
//        out << "<tr>"
//        out << "<td colspan='2'>"
//        out << c.name
//        out << "</td>"
//        out << "<td colspan='3'>"
//        out << c.description
//        out << "</td>"
//        out << "</tr>"
//        out << "<tr class='radiorow' width='40'>"
//        out << "<td>ND</td>"
//        out << "<td width='190'>"
//        out << c.s1
//        out << "</td>"
//        out << "<td width='190'>"
//        out << c.s2
//        out << "</td>"
//        out << "<td width='190'>"
//        out << c.s3
//        out << "</td>"
//        out << "<td width='190'>"
//        out << c.s4
//        out << "</td>"
//        out << "</tr>"
//        out << g.radioLego(name: attr.name, val: attr.criterion)
//        out << "</table></div>"
//
//
//    }

    def currentUserFirstName = {attr, body ->

        out << springSecurityService.currentUser.firstName

    }

    def scoreLinks = {attr, body ->

        Long criterionGroup = springSecurityService.currentUser.criteriaGroupId
        Boolean admin = springSecurityService.currentUser.admin
        if (admin || criterionGroup == 123) {
            out << "<li>${g.link(controller: "scoreValues", action: "list"){"core values scores"}}</li>"
        }
        if (admin || criterionGroup == 122) {
            out << "<li>${g.link(controller: "scoreProject", action: "list"){"project scores"}}</li>"
        }
        if (admin || criterionGroup == 124) {
            out << "<li>${g.link(controller: "scoreTechnical", action: "list"){"technical scores"}}</li>"
        }
    }

    def actionSubmitLink = {attr, body ->
        out << "<input type='hidden' name='_action_${attr.action}' />"
        out << "<a style='margin-left:5px;' class='${attr.class}' onclick='${attr.onclick}'>${attr.value}</a>"
    }

}
