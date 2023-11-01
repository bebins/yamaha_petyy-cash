<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
  
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script> 
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/b272402e67.js" crossorigin="anonymous"></script>
    <title>View Candidates</title>
    <style>
             /* body {
     
     background: linear-gradient(226deg, #8ECEBD 25.42%, #7ABCCA 83.54%);
   } */
   /* thead
{
    color: #000;
text-align: center;
font-family: Inter;
font-size: 12px;
font-style: normal;
font-weight: 700;
line-height: normal;
letter-spacing: 0.24px;
width: 69px;

background: #FFF;


} */
/* td{
  
    color: #000;
text-align: center;
font-family: Inter;
font-size: 12px;
font-style: normal;
font-weight: 700;
line-height: normal;
letter-spacing: 0.24px;
} */

/* tr{
align-items: flex-start;
box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
} */

/* button.btn_logout_back {
    width: 80px;
    height: 37px;
    color: #FFF;
    font-family: Quantico;
    font-size: 17px;
    font-style: normal;
    font-weight: 700;
    line-height: normal;
    letter-spacing: 1.15px;
    background: #45CDC6;
    box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
    margin-left: 6pc;
    margin-top: 3pc;
} */
/* button.button {
    width: 111px;
    height: 37px;
    background: #45CDC6;
    color: #FFF;
    font-family: Quantico;
    font-size: 18px;
font-style: normal;
font-weight: 700;
line-height: normal;
letter-spacing: 1.15px;
box-shadow: 0px 4px 4px 0px rgba(0, 0, 0, 0.25);
margin-left: 61pc;
    margin-top: 3pc;
} */
/* a{
    text-decoration:none;
} */
/* .sticky-header {
            position: sticky;
            top: 0;
            background-color: #fff; 
            z-index: 1;
        } */
        /* .icon{
    margin-top: 1pc;
    margin-left: 75pc;

}
.grid {
    margin-top: -1.6pc;
    position: absolute;
    margin-left: 71pc;
}
.bell {
    margin-top: -1.6pc;
    margin-left: 73pc;
    position: absolute;
}
.user {
    margin-top: -1.6pc;
    margin-left: 75pc;
    position: absolute;
} */
/* .table-bordered {
    width: 7pc;
    height:10pc;    
    margin-left: 41px;
    margin-top: 3pc; 
    
} */
/* input#filterCustomerName {
    margin-left: 7pc;
    margin-top: 3pc;
}
i.fas.fa-search {
    margin-left: -28px;
} */


    </style>

</head>
<body>

        <input type="text" id="filterCustomerName" placeholder="Customer Name..." class="search">
    <i class="fas fa-search" style="font-size:15px; cursor: pointer;" onclick="filterTableByName()"></i>

    
          
          <div class="grid"><i class="fa-solid fa-bars"></i></div>
          <div class="bell"><i class="fa-solid fa-bell"></i></div>
          <div class="user"><i class="fa-solid fa-user"></i></div> 
   


    
                <div class="row btn_row">
                          <button type="button" class="btn_logout_back" ><a href="rtoform.php" style="color: white;">BACK</a></button>
                        <button type="button" class="button"><a href="logout.php" style="color: white;">LOGOUT</a></button></div>
                </div>


       
<div class="box">



        <table class="table-bordered">
            <thead>
                <tr>
<th>ID</th>


<th>INVOICE DATE</th>
<th>CHASSIS NO</th>
<th>VEHICLE MODEL</th>
<th>CUSTOMER NAME</th>
<th>PAYMENT TYPE</th>
<th>BRANCHES / DEALERS</th>

<th>FILE RECEIVED DATE</th>
<th>FORM20 DATE</th>
<th>FORM20 RECEIVED DDATE</th>
<th>ACCOUNTS CONFIRMATION</th>
<th>REGISTRATION DATE</th>
<th>REGISTRATION NUMBER</th>  

<th>RCSTATUS</th>
<th>RCRECDATE</th>
<th>REMARKS</th>  


<th colspan="2">EDIT</th>   
</tr>
            </thead>
            <tbody id="tableBody">
                <?php
                include "connect.php";
                $sve = "SELECT * FROM project";
                $ddd = mysqli_query($conn, $sve);
                while ($row = mysqli_fetch_assoc($ddd)) {
                    $id = $row['ID'];
                    $invoicedate = $row['INVOICEDATE'];
                    $chassisno= $row['CHASSISNO'];
                    $vehiclemode = $row['VEHICLEMODEL'];
                    $customername = $row['CUSTOMERNAME'];
                    $mode = $row['PAYMENTTYPE'];
                    $branchesdealers = $row['BRANCHESDEALERS'];
                    
                    $filereceiveddate = $row['FILERECEIVEDDATE'];
                    $form20date= $row['FORM20DATE'];
                    $Form20Received = $row['FORM20RECEIVEDDATE'];
                    $accountsconfirmation = $row['ACCOUNTSCONFIRMATION'];
                    $registrationdate = $row['REGISTRATIONDATE'];
                    $registrationnumber = $row['REGISTRATIONNUMBER'];

                    $rc = $row['RCSTATUS'];
                    $rcrec = $row['RCRECDATE'];
                    $remarks = $row['REMARKS'];

                 
                    ?>   
                    <tr>
                    <td><?php echo $id ?></td>
                        <td><?php echo $invoicedate ?></td>
                        <td><?php echo $chassisno ?></td>
                        <td><?php echo $vehiclemode ?></td>
                        <td><?php echo $customername ?></td>
                        <td><?php echo $mode ?></td>
                        <td><?php echo $branchesdealers  ?></td>
                        
                        <td><?php echo $filereceiveddate ?></td>
                        <td><?php echo $form20date ?></td>
                        <td><?php echo $Form20Received ?></td>
                        <td><?php echo $accountsconfirmation ?></td>
                        <td><?php echo $registrationdate ?></td>
                        <td><?php echo $registrationnumber  ?></td>

                        <td><?php echo $rc ?></td>
                        <td><?php echo $rcrec ?></td>
                        <td><?php echo $remarks  ?></td>


                        <td><a href="rtoedit.php?id=<?php echo $row["ID"]; ?>" class="btn" role="button"><i class="fas fa-edit"></i></a></td>
                       
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div><br>   
</body>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        const filterButton = document.getElementById("filterButton");
        const searchInput = document.getElementById("searchInput");
        const tableRows = document.querySelectorAll(".table tbody tr");

        filterButton.addEventListener("click", function () {
            const searchText = searchInput.value.toLowerCase();

            tableRows.forEach(row => {
                const customerNameCell = row.querySelector("td:nth-child(5)");
                if (customerNameCell) {
                    const customerName = customerNameCell.textContent.toLowerCase();
                    row.style.display = customerName.includes(searchText) ? "table-row" : "none";
                }
            });
        });
    });
    document.getElementById("resetButton").addEventListener("click", function() {
  // Reset the form
  document.getElementById("myForm").reset();

  // You can also add additional actions here if needed
  // For example, clear other input fields, hide/show elements, etc.
});

</script>
<script>
  document.getElementById("filterCustomerName").addEventListener("input", filterTableByName);

  function filterTableByName() {
    const customerName = document.getElementById("filterCustomerName").value.toLowerCase();
    const tableBody = document.getElementById("tableBody");
    const rows = tableBody.getElementsByTagName("tr");

    for (let i = 0; i < rows.length; i++) {
      const row = rows[i];
      const customerNameColumn = row.getElementsByTagName("td")[4]; // Assuming customer name is in the fifth column (index 4)

      if (customerNameColumn) {
        const rowCustomerName = customerNameColumn.textContent.toLowerCase();

        // Check if the customer name contains the search term
        if (rowCustomerName.includes(customerName)) {
          row.style.display = "";
        } else {
          row.style.display = "none";
        }
      }
    }
  }
</script> 
</html>