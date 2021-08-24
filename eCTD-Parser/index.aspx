<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="eCTD_Parser.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>eCTD</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/themes/default/style.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link href="Content/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="Style/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="bg-info navbar navbar-expand-lg navbar-light text-light">
                <div class="container-fluid">
                    <a class="navbar-brand text-light" href="#">Navbar</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarToggler53"
                        aria-controls="" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarToggler53">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="active nav-link text-white" href="#">Home</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link text-white" href="#">Link</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link disabled" href="#">Disabled</a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink54"
                                    data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown link </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink54">
                                    <a class="dropdown-item" href="#">Action</a>
                                    <a class="dropdown-item" href="#">Another action</a>
                                    <a class="dropdown-item" href="#">Something else here</a>
                                </div>
                            </li>
                        </ul>

                        <asp:Label ID="lblUser" runat="server" Text=""></asp:Label>
                        <button class="btn btn-outline-success" type="submit"><i class="fa fa-sign-out" aria-hidden="true"></i></button>

                    </div>
                </div>
            </nav>
            <div class="container">
                <div class="row mt-1">
                    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active" aria-current="page">overview</li>
                        </ol>
                    </nav>
                    <br />
                    <hr />
                </div>
                <div class="row" style="height: 800px;">

                    <div class="col-md-3 gradblue1" id="productside">
                        <aside>
                            <h3>Products</h3>
                            <div class="d-flex">
                                <input class="form-control me-2 mb-2 mt-1" type="search" placeholder="Search"
                                    aria-label="Search" />

                            </div>
                            <div class="list-group" id="ProductList">
                            </div>
                        </aside>
                    </div>
                    <div class="col-md-9">
                        <div class="row gradblue2">
                            <div class="col-md-9">
                                <button type="button" class="btn btn-orange mt-1 mb-1" data-bs-toggle="modal" data-bs-target="#ModalNewProd">
                                    <span>New Product </span><i class="fa fa-plus" aria-hidden="true"></i>
                                </button>
                            </div>
                            <div class="col-md-3">
                                <button type="button" class="btn btn-danger mt-1 mb-1" data-bs-toggle="modal" data-bs-target="#ModalDeleteProd">
                                    <span>Delete </span><i
                                        class="fa fa-trash-o" aria-hidden="true"></i>
                                </button>
                                <button type="button" class="btn btn-info mt-1 mb-1">
                                    <span>Refresh </span><i
                                        class="fa fa-refresh" aria-hidden="true"></i>
                                </button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-2">

                                <h3>sequences</h3>
                                <div class="d-flex">
                                    <input class="form-control me-2 mb-2 mt-1" type="search" placeholder="Search" aria-label="Search" />
                                </div>
                                <div class="list-group" id="sequenceList">
                                </div>

                            </div>
                            <div class="col-md-10">
                                <div class="row">
                                    <div class="col-md-3">
                                        <asp:LinkButton runat="server" ID="btnNewSeq" CssClass="btn btn-outline-primary" OnClick="btnNewSeq_Click"> <i class="fa fa-plus-circle"></i> New Sequence </asp:LinkButton>
                                    </div>
                                    <div class="col-md-6">
                                        <button type="button" class="btn btn-success mt-1 mb-1" data-bs-toggle="modal" data-bs-target="#euXmlModal">
                                            <span>EU-regional</span><i class="fa fa-code" aria-hidden="true"></i>
                                        </button>

                                        <button type="button" class="btn btn-success mt-1 mb-1" data-bs-toggle="modal" data-bs-target="#submissionModal">
                                            <span>Index.xml </span><i
                                                class="fa fa-code" aria-hidden="true"></i>
                                        </button>
                                    </div>

                                    <div class="col-md-3">
                                        <button type="button" class="btn btn-success mt-1 mb-1">
                                            <span>Del. empty Folders
                                            </span><i class="fa fa-eraser" aria-hidden="true"></i>
                                        </button>
                                    </div>

                                </div>
                                <asp:HiddenField ID="hdnfProducts" runat="server" />
                                <asp:HiddenField ID="hdnfSequence" runat="server" />
                                <div class="row">
                                    <h3>tree view title</h3>
                                </div>
                                <div class="row">
                                    <div id="treeview"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>

            </div>
        </div>

        <!-- Modal newprod-->
        <div class="modal fade" id="ModalNewProd" tabindex="-1" aria-labelledby="NewProdModal" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="NewProdModal">New product</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <asp:TextBox ID="txtNewProduct" runat="server" CssClass="form-control" placeholder="Product Name"></asp:TextBox>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <asp:Button ID="btnNewProduct" runat="server" Text="Confirm" CssClass="btn btn-primary" OnClick="btnNewProduct_Click"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal deleteProd-->
        <div class="modal fade" id="ModalDeleteProd" tabindex="-1" aria-labelledby="DelProdModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="DelProdModalLabel">New product</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure to delete <label id="ProducToDeleteModal" style="font-family: Verdana, Geneva, Tahoma, sans-serif; font-weight: bold; font-style: normal; color: #000080; text-decoration: underline"> </label> Product and all it's related sequences ?</p>
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <asp:Button ID="btnDelProd" runat="server" Text="Confirm" CssClass="btn btn-primary" OnClick="btnDelProd_Click"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal submissionxml-->
        <div class="modal fade" id="submissionModal" tabindex="-1" aria-labelledby="submissionLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="submissionLabel">Submission</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                                                
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <asp:Button ID="btnSubmission" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmission_Click"/>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal EuXml-->
        <div class="modal fade" id="euXmlModal" tabindex="-1" aria-labelledby="euXmlModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="euXmlModalLabel">Eu XML</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                                                
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                        <asp:Button ID="EuXml" runat="server" Text="Eu- submit" CssClass="btn btn-primary" OnClick="EuXml_Click"/>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jstree/3.2.1/jstree.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>

        <script type="text/javascript">
            //$(document).ready(function () {
            //    $("#ProductList > a").on('click', function () {
            //        var prod = $(this).children("div").children("h5").html();
            //        alert("link accessed " + prod);
            //        var hdnprod = "<%=hdnfProducts.ClientID%>";
            //        hdnprod = prod;
            //        alert(hdnprod)
            //    });
            //
            //})

        </script>
        <script type="text/javascript">
            function GetProduct(product) {
                document.getElementById('<%=hdnfProducts.ClientID%>').value = product;
                document.getElementById('ProducToDeleteModal').innerHTML = document.getElementById('<%=hdnfProducts.ClientID%>').value;
                
                //ajax call
                $.ajax({
                    type: "POST",
                    url: "index.aspx/sequenceList",
                    data: '{"product": "' + product + '"}',
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccess,
                    failure: function () {
                        alert("Un erreur est survenus, essayez ulterieurement !");
                    }
                });

                function OnSuccess(response) {
                    var data = JSON.parse(response.d);
                    console.log(response.d);
                    document.getElementById("sequenceList").innerHTML = "";
                    data.forEach(function (obj) {
                        console.log(obj["Seqnumber"]);
                        var seq = "'" + obj["Seqnumber"] + "'";
                        var RelProduct = "'" + obj["RelatedProduct"] + "'";
                        var list = '<a href="#" class="list-group-item list-group-item-action mb-2" aria-current="true" onclick="GetSequence(' + seq + ', ' + RelProduct + ')"><div class="d-flex w-100 justify-content-between"><i class="fa fa-folder-o fa-2x"></i><span>' + obj["Seqnumber"] + '</span></div></a>';
                        document.getElementById("sequenceList").innerHTML += list;

                    });


                };
            }
        </script>
        <script type="text/javascript">
            function GetSequence(sequence, product) {
                document.getElementById('<%=hdnfSequence.ClientID%>').value = sequence;
                $('#treeview').jstree("destroy");
                $('#treeview').jstree({

                    'core': {
                        'multiple': true,
                        'data': {
                            type: "POST",
                            url: function (node) { return node.id === '#' ? "index.aspx/GetRoot" : "index.aspx/GetChildren"; },
                            data: function (node) {
                                if (node.id !== '#') {
                                    return '{"path": "' + $('#treeview').jstree().get_path(node, '/') + '", ' + '"seq": "' + sequence + '", ' + '"prod": "' + product + '"}';
                                } else {
                                    return '{"seq": "' + sequence + '", ' + '"prod": "' + product + '"}';
                                }
                            },
                            contentType: "application/json; charset=utf-8",
                            success: function (Data) {
                                //console.log(Data);
                                $(Data).each(function () {
                                    return { "id": this.id };
                                });
                            }
                        }
                    },
                    'types': {
                        "folder": {
                            "icon": "jstree-icon jstree-folder"
                        },
                        "file": {
                            "icon": "jstree-icon jstree-file"
                        },
                        "pdf": {
                            "icon": "fa fa-file-pdf-o text-danger"
                        },
                        "xml": {
                            "icon": "fa fa-file-code-o text-dark"
                        },
                        "doc": {
                            "icon": "fa fa-file-word-o text-primary"
                        },
                        "xls": {
                            "icon": "fa fa-file-excel-o text-success"
                        }

                    },
                    "plugins": ["contextmenu", "types"]
                });
            }
        </script>
        <script type="text/javascript">
            $(document).ready(function () {
                //ajax load
                $.ajax({
                    type: "POST",
                    url: "index.aspx/productList",
                    data: {},
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccess,
                    failure: function () {
                        alert("Un erreur est survenus, essayez ulterieurement !");
                    }
                });
                function OnSuccess(response) {
                    var data = JSON.parse(response.d);
                    //console.log(response.d);
                    document.getElementById("ProductList").innerHTML = "";
                    data.forEach(function (obj) {
                        console.log(obj["ProdName"]);
                        var prod = "'" + obj["ProdName"] + "'";
                        var list = '<a href="#" class="list-group-item list-group-item-action" aria-current="true" onclick="GetProduct(' + prod + ')"><div class="d-flex w-100 justify-content-between"><h5 class="mb-1">' + obj["ProdName"] + '</h5></div><small>created: ' + obj["CreationDate"] + '</small><br/><small>last change: ' + obj["LastChange"] + '</small></a>';
                        document.getElementById("ProductList").innerHTML += list;

                    });


                };
            })
        </script>
        <script type="text/javascript">
            function populateTree(sequence, product) {
                $('#treeview').jstree("destroy");
                $('#treeview').jstree({

                    'core': {
                        'multiple': true,
                        'data': {
                            type: "POST",
                            url: function (node) { return node.id === '#' ? "index.aspx/GetRoot" : "index.aspx/GetChildren"; },
                            data: function (node) {
                                if (node.id !== '#') {
                                    return '{"path": "' + $('#treeview').jstree().get_path(node, '/') + '", ' + '"seq": "' + sequence + '", ' + '"prod": "' + product + '"}';
                                } else {
                                    return '{"seq": "' + sequence + '", ' + '"prod": "' + product + '"}';
                                }
                            },
                            contentType: "application/json; charset=utf-8",
                            success: function (Data) {
                                console.log(Data);
                                $(Data).each(function () {
                                    return { "id": this.id };
                                });
                            }
                        }
                    },
                    'types': {
                        "folder": {
                            "icon": "jstree-icon jstree-folder"
                        },
                        "file": {
                            "icon": "jstree-icon jstree-file"
                        },
                        "pdf": {
                            "icon": "fa fa-file-pdf-o text-danger"
                        },
                        "xml": {
                            "icon": "fa fa-file-code-o text-dark"
                        },
                        "doc": {
                            "icon": "fa fa-file-word-o text-primary"
                        },
                        "xls": {
                            "icon": "fa fa-file-excel-o text-success"
                        }

                    },
                    "plugins": ["contextmenu", "types"]
                });

            }
        </script>
        <script type="text/javascript">
            function updateProductList() {
                $.ajax({
                    type: "POST",
                    url: "index.aspx/productList",
                    data: {},
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: OnSuccess,
                    failure: function () {
                        alert("Un erreur est survenus, essayez ulterieurement !");//to add sweet alert
                    }
                });
                function OnSuccess(response) {
                    var data = JSON.parse(response.d);
                    //console.log(response.d);
                    document.getElementById("ProductList").innerHTML = "";
                    data.forEach(function (obj) {
                        console.log(obj["ProdName"]);
                        var prod = "'" + obj["ProdName"] + "'";
                        var list = '<a href="#" class="list-group-item list-group-item-action" aria-current="true" onclick="GetProduct(' + prod + ')"><div class="d-flex w-100 justify-content-between"><h5 class="mb-1">' + obj["ProdName"] + '</h5></div><small>created: ' + obj["CreationDate"] + '</small><br/><small>last change: ' + obj["LastChange"] + '</small></a>';
                        document.getElementById("ProductList").innerHTML += list;
           
                    })
           
                };
            }
        </script>

    </form>
</body>
</html>
