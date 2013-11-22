package com.charlesread

class LegoRankTagLib {

    def springSecurityService

    def radioLego = {attr, body ->
        out << "<tr class='radiorow'>"
        out << "<td style='width:30px;'><input class='roundedOne' type='radio' name='${attr.name}' ${attr.val == 0 ? 'checked' : ''} value='0' /></td>"
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
        out << "<td>ND</td>"
        out << "<td width='190'>"
        out << c.s1
        out << "</td>"
        out << "<td width='190'>"
        out << c.s2
        out << "</td>"
        out << "<td width='190'>"
        out << c.s3
        out << "</td>"
        out << "<td width='190'>"
        out << c.s4
        out << "</td>"
        out << "</tr>"
        out << g.radioLego(name: attr.code, val: attr.criterion)
        out << "</table></div>"


    }

    def currentUserFirstName = {attr, body ->

        out << springSecurityService.currentUser.firstName

    }

}
