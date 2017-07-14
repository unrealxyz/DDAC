<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EuropeDDAC._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Maersk Line</h1>
        <p class="lead">Maersk Line is the global container division and the largest operating unit of the A.P. Moller.</p>
        <p><a href="About.aspx" class="btn btn-info btn-lg">Click Here to Learn more &raquo;</a></p>
    </div>

    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="Images/maersk1.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Maersk</h3>
          <p>Maersk Ship 1</p>
      </div>
    </div>
    <div class="item">
      <img src="Images/maersk2.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Maersk</h3>
          <p>Maersk Ship 2</p>
      </div>
        </div>
        <div class="item">
      <img src="Images/MicrosoftAzure.jpg" alt="...">
      <div class="carousel-caption">
        <h3>Microsoft Azure</h3>
          <p>Cloud solution for your business</p>
      </div>
      </div>
      </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

    <div class="row">
        <div class="col-md-4">
            <h2>Add&nbsp;</h2>
            <p>
                Add shipment.
            </p>
            <p>
                <a class="btn btn-primary" href="add.aspx">Add &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Edit</h2>
            <p>
               Edit shipment to make latest changes.
            </p>
            <p>
                <a class="btn btn-warning" href="edit.aspx">Edit &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Delete</h2>
            <p>
                Delete Shipment to cancel any changes made.
            </p>
            <p>
                <a class="btn btn-danger" href="delete.aspx">Delete &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>View</h2>
            <p>
               View shipment to get the latest update of an item.
            </p>
            <p>
                <a class="btn btn-success" href="view.aspx">View &raquo;</a>
            </p>
        </div>
    </div>
    <!--- Middle Contents --->
    <div class="container">
        <div class="col-lg-4">
            <img class="img-circle" src="Images/fbicon.png" width="140" height="140" />
            <h2>Facebook</h2>
            <p>
                Visit our Facebook page for the latest news and update.
            </p>
            <p><a class="btn btn-default" href="https://www.facebook.com/MaerskGroup/" role="button">Facebook page &raquo;</a>

            </p>
        </div>
         <div class="col-lg-4">
            <img class="img-circle" src="Images/twittericon.png" width="140" height="140" />
            <h2>Twitter</h2>
            <p>
                Visit our Twitter page for the latest news and update.
            </p>
             <p><a class="btn btn-default" href="https://twitter.com/Maersk?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor" role="button">Twitter page &raquo;</a>

            </p>
        </div>

    </div>
    

    
</asp:Content>