<html>

<head>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
            integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="col-lg-6">

    <form:form modelAttribute="testForm" action="/index" method="post" cssClass="form-horizontal">


        <fieldset>
            <legend>Contact Form</legend>
            <form:hidden path="id"/>

            <div class="form-group">
                <label class="col-sm-2 control-label">User:</label>
                <div class="col-sm-6">
                    <form:input class="form-control" path="user"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Password:</label>
                <div class="col-sm-6">
                    <form:password class="form-control" path="password"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Toppings:</label>
                <div class="col-sm-6">
                    <label>

                    <form:checkbox class="" path="topping" value="Peperoni"/>
                        Peperoni
                    </label>
                    <label>

                        <form:checkbox class="" path="topping" value="Sausage"/>
                        Sausage
                    </label>
                    <label>

                        <form:checkbox class="" path="topping" value="Chicken"/>
                        Chicken
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Special Instructions:</label>
                <div class="col-sm-6">
                    <form:textarea class="form-control" path="specialInstructions"/>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Crust:</label>
                <div class="col-sm-6">
                    <label>
                        <form:radiobutton label="Thin" class="" path="crust" value="Thin"/>
                    </label>
                    <label>
                          <form:radiobutton label="Stuffed" class="" path="crust" value="Stuffed"/>
                    </label>
                    <label>
                         <form:radiobutton label="Chicago" class="" path="crust" value="Chicago"/>
                    </label>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Artist:</label>
                <div class="col-sm-6">
                    <form:select class="form-control" path="artist">
                        <form:option label="Prince" value="prince"/>
                        <form:option label="Rick James" value="rickjames"/>
                        <form:option label="Alicia Keys" value="aliciakeys"/>
                    </form:select>
                </div>
            </div>

            <div class="form-group">
                <label class="col-sm-2 control-label">Animals:</label>
                <div class="col-sm-6">
                    <form:select multiple="true" class="form-control" path="animals">
                        <form:option label="Dog" value="dog"/>
                        <form:option label="Cat" value="cat"/>
                        <form:option label="Mouse" value="mouse"/>
                    </form:select>
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-4 col-sm-offset-2">
                    <form:button class="btn btn-primary">Add Order</form:button>
                    <form:button value="reset" class="btn btn-primary">Cancel Order</form:button>
                </div>
            </div>
        </fieldset>


    </form:form>

</div>

</body>
</html>
