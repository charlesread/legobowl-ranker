    function passEqual() {
        if ($("#password").val() != $("#password2").val()) {
            alert("Both passwords must be equal!");
            return false
        } else {
            return true
        }
    }

    function contestantSelected() {

        if ($("#contestant")[0].selectedIndex == 0) {
            alert("You have to select a contestant!")
            $("#contestant").focus();
            return false
        }
        return true
    }

    function submitForm() {
        document.forms[0].submit();
    }

    function deleteConfirm() {
        if (confirm("You sure about that?")) {
            submitForm();
        } else {
            return false;
        }
    }

    function doSingleCheckbox(e, val) {
        var id = e.id;
        if (e.checked) {
            $("#" + id + "_show").html(val);
            $("#" + id + "_val").val(val);
        } else {
            $("#" + id + "_show").html(0);
            $("#" + id + "_val").val(0);
        }
    }

    function doDoubleCheckboxLinked(e, val) {
        var id = e.id;
        var f = document.getElementById(id + 'a')
        if (e.checked && f.checked) {
            $("#" + id + "_show").html(val);
            $("#" + id + "_val").val(val);
        } else {
            $("#" + id + "_show").html(0);
            $("#" + id + "_val").val(0);
        }
    }

    function doTripleCheckboxLinked(e, val) {
        var id = e.id;
        var f = document.getElementById(id + 'a')
        var g = document.getElementById(id + 'b')
        if (e.checked && f.checked && g.checked) {
            $("#" + id + "_show").html(val);
            $("#" + id + "_val").val(val);
        } else {
            $("#" + id + "_show").html(0);
            $("#" + id + "_val").val(0);
        }
    }

    function doSingleRange(e, mult) {
        var id = e.id;
        $("#" + id + "_show").html(e.value);
        $("#" + id + "_show_mult").html(e.value * mult);
        $("#" + id + "_val").val(e.value * mult);
    }

    $(document).ready(function(){
        $("#password").focus(function(){
            $("#password").val("");
            $("#password2").val("");
        });
    });