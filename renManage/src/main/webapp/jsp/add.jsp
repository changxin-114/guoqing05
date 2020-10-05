<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>
<form action="/add" method="post">
    <table border="1px">
        <tr>
            <td colspan="2" style="text-align: center; font-size: 30px;">添加人员</td>
        </tr>

        <tr>
            <td>姓名:</td>
            <td><input type="text" name="name" /></td>
        </tr>

        <tr>
            <td>性别</td>
            <td>
                <select name="gender">
                    <option value="请选择">请选择</option>
                    <option value="0">女</option>
                    <option value="1">男</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>年龄</td>
            <td><input type="text" name="age" /></td>
        </tr>

        <tr>
            <td>等级</td>
            <td>
                <select name="rank">
                    <option value="请选择">请选择</option>
                    <option value="1">1级</option>
                    <option value="2">2级</option>
                    <option value="3">3级</option>
                    <option value="4">4级</option>
                    <option value="5">5级</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>等级</td>
            <td>
                <select name="department">
                    <option value="请选择">请选择</option>
                    <option value="技术部">技术部</option>
                    <option value="后勤部">后勤部</option>
                    <option value="人事部">人事部</option>
                    <option value="财务部">财务部</option>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center"><input type="submit" value="提交" /></td>
        </tr>
    </table>
</form>

</body>
</html>
<script type="text/javascript">
    $("form").submit(function () {
        var name=$("[name=name]").val();
        if(name==""){
            alert("姓名不能为空");
            return false;
        }

        var gender=$("[name=gender]").val();
        if(gender=="请选择"){
            alert("请选择性别");
            return false;
        }

        var age=$("[name=age]").val();
        if(age==""){
            alert("年龄不能为空");
            return false;
        }

        var rank=$("[name=rank]").val();
        if(rank=="请选择"){
            alert("请选择等级");
            return false;
        }

        var department=$("[name=department]").val();
        if(department=="请选择"){
            alert("请选择部门");
            return false;
        }


    })


</script>
