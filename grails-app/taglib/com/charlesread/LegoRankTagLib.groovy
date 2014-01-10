package com.charlesread

class LegoRankTagLib {

    def springSecurityService

    def editable = {attr, body ->
        out << "<span id='${attr.field}_span' onclick='hideSpan(\"${attr.field}\")'>${attr.bean[attr.field]}</span><input id='${attr.field}_input' style='display:none;' type='text' name='${attr.field}' value='${attr.bean[attr.field]}' onblur='hideInput(\"${attr.field}\")' />"
    }

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


        out << "<div class='criterionBlock ${attr.clazz}'><table class='criterionTable' width='800'>"
        out << "<tr>"
        out << "<td colspan='2'>"
        out << c.name
        out << "</td>"
        out << "<td colspan='3'>"
        out << c.description
        out << "</td>"
        out << "</tr>"
        out << "<tr class='radiorow' width='40'>"
        out << "<td style='width:30px;'><label><input class='roundedOne' type='radio' name='${attr.name}' value='0' ${attr.criterion == 0 ? 'checked="checked"' : ''}  /><span>ND</span></label></td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='1' ${attr.criterion == 1 ? 'checked="checked"' : ''}  /><span>${c.s1}</span></label>"
        out << "</td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='2' ${attr.criterion == 2 ? 'checked="checked"' : ''}  /><span>${c.s2}</span></label>"
        out << "</td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='3' ${attr.criterion == 3 ? 'checked="checked"' : ''}  /><span>${c.s3}</span></label>"
        out << "</td>"
        out << "<td width='190'>"
        out << "<label><input class='roundedOne' type='radio' name='${attr.name}' value='4' ${attr.criterion == 4 ? 'checked="checked"' : ''}  /><span>${c.s4}</span></label>"
        out << "</td>"
        out << "</tr>"
        out << "</table></div>"


    }

    def reportCriterionBlock = {attr, body ->

        Criterion c = Criterion.findByCode(attr.code)


        out << "<div class='reportCriterionBlock ${attr.clazz}'><table class='criterionTable'>"
        out << "<tr>"
        out << "<td colspan='2' class='blockTitle'>"
        out << c.name
        out << "</td>"
        out << "<td colspan='3' class='blockDesc'>"
        out << c.description
        out << "</td>"
        out << "</tr>"
        out << "<tr class='radiorow'>"
        out << "<td width='4%'><span class='${attr.criterion == 0 ? 'checked' : ''}'>ND</span></td>"
        out << "<td width='24%'>"
        out << "<span class='${attr.criterion == 1 ? 'checked' : ''}'>${c.s1}</span>"
        out << "</td>"
        out << "<td width='24%'>"
        out << "<span class='${attr.criterion == 2 ? 'checked' : ''}'>${c.s2}</span>"
        out << "</td>"
        out << "<td width='24%'>"
        out << "<span class='${attr.criterion == 3 ? 'checked' : ''}'>${c.s3}</span>"
        out << "</td>"
        out << "<td width='24%'>"
        out << "<span class='${attr.criterion == 4 ? 'checked' : ''}'>${c.s4}</span>"
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
        Boolean judge = springSecurityService.currentUser.judge
        Boolean referee = springSecurityService.currentUser.referee
        if (admin || (criterionGroup == 123 && judge)) {
            out << "<li>${g.link(controller: "scoreValues", action: "list"){"core values scores"}}</li>"
        }
        if (admin || (criterionGroup == 122 && judge)) {
            out << "<li>${g.link(controller: "scoreProject", action: "list"){"project scores"}}</li>"
        }
        if (admin || (criterionGroup == 124 && judge)) {
            out << "<li>${g.link(controller: "scoreTechnical", action: "list"){"robot design scores"}}</li>"
        }
        if (admin || judge) {
            out << "<li>${g.link(controller: "aggregation", action: "index"){"<i class=\"fa fa-cogs\"></i> score aggregation"}}</li>"
        }
        if (admin || referee) {
            out << "<li>${g.link(controller: "robotDemo", action: "list"){"robot demonstration scores"}}</li>"
        }
    }

    def actionSubmitLink = {attr, body ->
        out << "<input type='hidden' name='_action_${attr.action}' />"
        out << "<a class='${attr.class}' onclick='${attr.onclick}'>${attr.value}</a>"
    }

    def singleCheckbox = {attr, body ->
        out << "<div class='demoBlock'>"
        out << "<table class='innerTable' width='300'>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}' onchange='doSingleCheckbox(this,${attr.points})' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}.label") + "</span>"
        out << "</label>"
        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"
        out << "</td>"
        out << "<td width='40'>"
        out << "<span id='${attr.name}_show'>0</span>"
        out << "</td>"
        out << "</tr>"
        out << "</table>"
        out << "</div>"
    }

    def doubleCheckboxLinked = {attr, body ->
        out << "<div class='demoBlock'>"
        out << "<table class='innerTable' width='300'>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}a' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}a.label") + "</span"
        out << "</label>"
        out << "</td>"
        out << "<td width='40' rowspan='2'>"
        out << "<span id='${attr.name}_show'>0</span>"
        out << "</td>"
        out << "</tr>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}' onchange='doDoubleCheckboxLinked(this,${attr.points})' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}b.label") + "</span>"
        out << "</label>"
        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"
        out << "</td>"
        out << "</tr>"
        out << "</table>"
        out << "</div>"
    }

    def tripleCheckboxLinked = {attr, body ->
        out << "<div class='demoBlock'>"
        out << "<table class='innerTable' width='300'>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}a' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}a.label") + "</span>"
        out << "</label>"
        out << "</td>"
        out << "<td width='40' rowspan='3'>"
        out << "<span id='${attr.name}_show'>0</span>"
        out << "</td>"
        out << "</tr>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}b' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}b.label") + "</span"
        out << "</label>"
        out << "</td>"
        out << "</tr>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}' onchange='doTripleCheckboxLinked(this,${attr.points})' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}c.label") + "</span>"
        out << "</label>"
        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"
        out << "</td>"
        out << "</tr>"
        out << "</table>"
        out << "</div>"
    }

    def singleRange = {attr, body ->
        out << "<div class='demoBlock'>"
        out << "<table class='innerTable' width='300'>"
        out << "<tr>"
        out << "<td width='260'>"
        out << g.message(code: "robotDemo.${attr.name}.label") + " " + "<span style='font-weight:bold;' id='${attr.name}_show'>0</span>"
        out << "</td>"
        out << "<td width='40' rowspan='2'>"
        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"
        out << "<span id='${attr.name}_show_mult'>0</span>"
        out << "</td>"
        out << "</tr>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<input style='width:230px;' type='range' id='${attr.name}' value='${attr?.value ?: 0}' min='${attr?.min ?: 0}' max='${attr?.max ?: 10}' step='${attr?.step ?: 1}' onchange='doSingleRange(this,${attr.factor},${attr.offset ?: 0})' />"
        out << "</td>"
        out << "</tr>"
        out << "</table>"
        out << "</div>"
    }

    def singleCheckBoxSingleRangeLinked = {attr, body ->
        out << "<div class='demoBlock'>"
        out << "<table class='innerTable' width='300'>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<label>"
        out << "<input type='checkbox' id='${attr.name}a' />"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}a.label") + "</span>"
        out << "</label>"
//        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"
        out << "</td>"
        out << "<td width='40' rowspan='3'>"
        out << "<span id='${attr.name}_show_mult'>0</span>"
        out << "</td>"
        out << "</tr>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<span>" + g.message(code: "robotDemo.${attr.name}b.label") + " " + "<span style='font-weight:bold;' id='${attr.name}_show'>0</span>" + "</span>"
        out << "</td>"
        out << "<td width='40'>"
        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"

        out << "</td>"
        out << "</tr>"
        out << "<tr>"
        out << "<td width='260'>"
        out << "<input style='width:230px;' type='range' id='${attr.name}' value='${attr?.value ?: 0}' min='${attr?.min ?: 0}' max='${attr?.max ?: 10}' step='${attr?.step ?: 1}' onchange='doSingleRange(this,${attr.factor})' />"
        out << "</td>"
        out << "</tr>"
        out << "</table>"
        out << "</div>"
    }

    def radioGroup = {attr, body ->

        def values = attr.values.tokenize(',')

        out << "<div class='demoBlock'>"
        out << "<table class='innerTable' width='300'>"
        out << "<tr>"
        out << "<td width='200'>"
        out << g.message(code: "robotDemo.${attr.name}.label")
        out << "<input type='hidden' name='${attr.name}' id='${attr.name}_val' value='0' />"
        out << "</td>"
        out << "<td width='100'>"

        values.size().times {
            out << "<input type='radio' name='${attr.name}_radio' id='${attr.name}' onchange='doRadioGroup(this,${values[it]})' />" + g.message(code: "robotDemo.${attr.name}.${it+1}.label") + "<br>"
        }

        out << "</td>"
        out << "<td width='40'>"
        out << "<span id='${attr.name}_show'>0</span>"
        out << "</td>"
        out << "</tr>"
        out << "</table>"
        out << "</div>"
    }



}
