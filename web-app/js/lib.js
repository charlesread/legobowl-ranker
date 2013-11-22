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

    $(document).ready(function(){
        $("#password").focus(function(){
            $("#password").val("");
            $("#password2").val("");
        });
    });