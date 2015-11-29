<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>
    <script>
        $(function () {
            $(".addform").validate({
                rules: {
                    name: {
                        required: true
                    },
                    branch: {
                        required: true
                    },
                    employeeCount: {
                        number: true
                    }
                }
            });
        });
    </script>
    <style>
        .error{
            color: red;
        }
    </style>
</head>
<body>
    <form action="add" method="post" class="addform">
        <label for="name">Enter book name:
            <input type="text" id="name" value="${enterprise.name}" name="name" />
        </label>  <br />
        <label for="branch">Enter book author:
            <input type="text" id="branch" value="${enterprise.branch}" name="branch" />
        </label>  <br />
        <label for="employeeCount">Enter book`s amount:
            <input type="text" id="employeeCount" value="${enterprise.employeeCount}" name="employeeCount" />
        </label>  <br />
        <input type="hidden" name="id" value="${enterprise.enterpriseId}" />
        <input type="submit" value="Save" />
    </form>
</body>
</html>
