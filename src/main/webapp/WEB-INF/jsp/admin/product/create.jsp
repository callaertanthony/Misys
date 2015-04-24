<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c" uri="/WEB-INF/c.tld" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="_csrf" content="${_csrf.token}"/>
    <!-- default header name is X-CSRF-TOKEN -->
    <meta name="_csrf_header" content="${_csrf.headerName}"/>
    <title>Product Details | Misys</title>

    <link href="<spring:url value="/assets/css/bootstrap.min.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/font-awesome.min.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/prettyPhoto.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/price-range.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/animate.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/main.css"/>" rel="stylesheet">
    <link href="<spring:url value="/assets/css/responsive.css"/>" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="<spring:url value="/assets/js/html5shiv.js"/>"></script>
    <script src="<spring:url value="/assets/js/respond.min.js"/>"></script>
    <![endif]-->
</head><!--/head-->
<body>
    <!-- INCLUDE HEADER -->
    <jsp:include page="../../header.jsp" />

    <section>
        <div class="container">
            <div class="row">
                <form:form name="form" action="" method="post" modelAttribute="form" class="form-horizontal">
                    <form:errors/>
                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                        <form:input type="text" name="name" value="${form.name}" id="name" required="true" path="name" class="form-control" placeholder="Name"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="reference" class="col-sm-2 control-label">Reference</label>
                        <div class="col-sm-10">
                        <form:input type="text" reference="reference" value="${form.reference}" id="reference" required="true" path="reference" class="form-control" placeholder="Reference"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="price" class="col-sm-2 control-label">Price</label>
                        <div class="col-sm-10">
                        <form:input type="number" price="price" value="${form.price}" id="price" required="true" path="price" class="form-control" placeholder="Price" step="0.01" min="0"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="description" class="col-sm-2 control-label">Description</label>
                        <div class="col-sm-10">
                        <form:input type="text" description="description" value="${form.description}" id="description" required="true" path="description" class="form-control" placeholder="Description"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="picture" class="col-sm-2 control-label">Picture</label>
                        <div class="col-sm-10">
                        <form:input type="text" picture="picture" value="${form.picture}" id="picture" required="true" path="picture" class="form-control" placeholder="Picture"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="category" class="col-sm-2 control-label">Category</label>
                        <div class="col-sm-10">
                        <form:select name="category" id="category" required="true" path="category"  class="form-control" placeholder="Category">
                            <c:forEach items="${categories}" var="category">
                                <form:option value="${category.getId()}">${category.getCategory()}</form:option>
                            </c:forEach>
                        </form:select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="brand" class="col-sm-2 control-label">Brand</label>
                        <div class="col-sm-10">
                        <form:select name="brand" id="brand" required="true" path="brand"  class="form-control" placeholder="Brand">
                            <c:forEach items="${brands}" var="brand">
                                <form:option value="${brand.getId()}">${brand.getName()}</form:option>
                            </c:forEach>
                        </form:select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Create product</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </section>

    <!-- INCLUDE FOOTER -->
    <jsp:include page="../../footer.jsp" />
</body>
</html>