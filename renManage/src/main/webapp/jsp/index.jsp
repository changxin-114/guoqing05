<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="/static/js/jquery-1.12.4.js"></script>
</head>
<body>

    <table border="1px" width="600px">
        <tr>
            <td>编号</td>
            <td>姓名</td>
            <td>性别</td>
            <td>年龄</td>
            <td>等级</td>
            <td>部门</td>
            <td>操作</td>
        </tr>
        <c:forEach var="item" items="${people}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>
                    <c:if test="${item.gender==0}"><%out.print("女");%></c:if>
                    <c:if test="${item.gender==1}"><%out.print("男");%></c:if>
                </td>
                <td>${item.age}</td>
                <td>
                    <c:if test="${item.rank==1}"><%out.print("1级");%></c:if>
                    <c:if test="${item.rank==2}"><%out.print("2级");%></c:if>
                    <c:if test="${item.rank==3}"><%out.print("3级");%></c:if>
                    <c:if test="${item.rank==4}"><%out.print("4级");%></c:if>
                    <c:if test="${item.rank==5}"><%out.print("5级");%></c:if>
                </td>
                <td>${item.department}</td>
                <td><a href="javascript:void(0)" onclick="del(${item.id})">删除</a></td>
            </tr>
        </c:forEach>

    </table>

    <a href="/jsp/add.jsp"><input type="button" value="添加人员"></a>
</body>
</html>
<script type="text/javascript">
    function del(id) {
        var flag=confirm("确定要删除吗");
        if(flag){
            location.href="/del?id="+id;
        }
    }

</script>
