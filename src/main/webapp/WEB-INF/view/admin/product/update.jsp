<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Dự án bookshop" />
    <meta name="author" content="bookshop" />
    <title>Dashboard - bookshop</title>
    <link href="/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
   <!-- Xem trước ảnh -->
   <script>
       $(document).ready(() => {
           const productFile = $("#productFile");
           const orgImage = "${newProduct.coverImage}";  
           if (orgImage) {
               const urlImage = "/images/product/" + orgImage;
               $("#imgProductPreview").attr("src", urlImage);
               $("#imgProductPreview").css({ "display": "block" });
           }

           productFile.change(function (e) {
               const imgURL = URL.createObjectURL(e.target.files[0]);
               $("#imgProductPreview").attr("src", imgURL);
               $("#imgProductPreview").css({ "display": "block" });
           });
       });
   </script>
</head>

<body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp"/>
    <div id="layoutSidenav">
        <jsp:include page="../layout/sidebar.jsp"/>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Manage Products</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active"><a href="/admin">Dashboard</a></li>
                        <li class="breadcrumb-item active">Products</li>
                    </ol>
                    <div class="container mt-5">
                      <div class="row">
                          <div class="col-md-6 col-12 mx-auto">
                              <h3>Update a Product</h3>
                              <hr />
                              <form:form method="post" action="/admin/product/update" modelAttribute="newProduct" class="row" enctype="multipart/form-data">
                                  <div class="mb-3" style="display: none;">
                                      <label class="form-label">Id:</label>
                                      <form:input type="text" class="form-control" path="id" />
                                  </div>

                                  <div class="mb-3 col-12 col-md-6">
                                      <c:set var="errorTitle">
                                        <form:errors path="title" cssClass="invalid-feedback"/>
                                      </c:set>
                                      <label class="form-label">Title:</label>
                                      <form:input type="text" class="form-control ${not empty errorTitle ? 'is-invalid' : ''}" path="title"/> 
                                      ${errorTitle}
                                  </div>

                                  <div class="mb-3 col-12 col-md-6">
                                      <c:set var="errorPrice">
                                        <form:errors path="price" cssClass="invalid-feedback"/>
                                      </c:set>
                                      <label class="form-label">Price:</label>
                                      <form:input type="number" class="form-control ${not empty errorPrice ? 'is-invalid' : ''}" path="price"/>
                                      ${errorPrice}
                                  </div>

                                  <div class="mb-3 col-12">
                                      <c:set var="errorDescription">
                                        <form:errors path="description" cssClass="invalid-feedback"/>
                                      </c:set>
                                      <label class="form-label">Description:</label>
                                      <form:input type="text" class="form-control ${not empty errorDescription ? 'is-invalid' : ''}" path="description"/>
                                      ${errorDescription}
                                  </div>

                                  <div class="mb-3 col-12 col-md-6">
                                      <c:set var="errorAuthor">
                                        <form:errors path="author" cssClass="invalid-feedback"/>
                                      </c:set>
                                      <label class="form-label">Author:</label>
                                      <form:input type="text" class="form-control ${not empty errorAuthor ? 'is-invalid' : ''}" path="author"/>
                                      ${errorAuthor}
                                  </div>

                                  <div class="mb-3 col-12 col-md-6">
                                      <c:set var="errorQuantity">
                                        <form:errors path="quantity" cssClass="invalid-feedback"/>
                                      </c:set>
                                      <label class="form-label">Quantity:</label>
                                      <form:input type="number" class="form-control ${not empty errorQuantity ? 'is-invalid' : ''}" path="quantity"/>
                                      ${errorQuantity}
                                  </div>

                                  <div class="mb-3 col-12 col-md-6">
                                      <label class="form-label">Publisher:</label>
                                      <form:select class="form-select" path="publisher">
                                        <form:option value="NXB Kim Đồng">NXB Kim Đồng</form:option>
                                        <form:option value="NXB Trẻ">NXB Trẻ</form:option>
                                      </form:select>
                                  </div>

                                  <div class="mb-3 col-12 col-md-6">
                                      <label class="form-label">Genre:</label>
                                      <form:select class="form-select" path="genre">
                                        <form:option value="Literature">Literature</form:option>
                                        <form:option value="Science">Science</form:option>
                                      </form:select>
                                  </div>

                                  <div class="mb-3 col-12">
                                      <label for="coverFile" class="form-label">Cover Image:</label>
                                      <input class="form-control" type="file" id="productFile" accept=".png, .jpg, .jpeg" name="File"/>
                                  </div>

                                  <div class="col-12 mb-3">
                                      <img style="max-height: 250px; display: none;" alt="Product Image Preview" id="imgProductPreview">
                                  </div>
                                  <div class="col-12 mb-5"><button type="submit" class="btn btn-warning">Update</button></div>
                              </form:form>
                          </div>
                      </div>
                    </div>
                </div>
            </main>
            <jsp:include page="../layout/footer.jsp"/>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="js/scripts.js"></script>
</body>

</html>
