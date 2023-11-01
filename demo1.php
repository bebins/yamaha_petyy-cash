<?php
include "connect.php";

// Add a query to retrieve customer codes from the customer_master table
$customerCodeQuery = "SELECT CUSTOMERCODE FROM `customer_master`";
$customerCodeResult = $conn->query($customerCodeQuery);

// Initialize an array to store the customer codes
$customerCodes = array();

if ($customerCodeResult->num_rows > 0) {
    while ($row = $customerCodeResult->fetch_assoc()) {
        $customerCodes[] = $row['CUSTOMERCODE'];
    }
}


// Add a query to retrieve the sum of all previous closing balances
$query = "SELECT SUM(CLOSINGBALANCE) AS totalClosingBalance FROM `daybook`";
$result = $conn->query($query);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $previousClosingBalanceSum = (float)$row['totalClosingBalance'];
} else {
    $previousClosingBalanceSum = 0.00; // Default value if no previous records are found
}



// Add a query to retrieve the last stored CLOSINGBALANCE value
$query = "SELECT CLOSINGBALANCE FROM `daybook` ORDER BY ID DESC LIMIT 1";
$result = $conn->query($query);

$previousClosingBalance = 0.00; // Default value if no previous records are found

if ($result !== false && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $previousClosingBalance = (float)$row['CLOSINGBALANCE'];
}



if (isset($_REQUEST['save'])) {
  $date = $_POST["date"];
  $types = $_POST["types"];
  $otherType = $_POST["other_type"];
  $customername = $_POST["customer_name"];
  $receipt = $_POST["receipt"];
  $vehiclename = $_POST["vehicle_name"];
  $service = $_POST["service"];
  $mode = $_POST["mode"];
  $reference = $_POST["reference"];
  $credit = $_POST["credit"];
  $debit = $_POST["debit"];
  $closebal = $_POST["closebal"];
  $financeOption = isset($_POST['financeOption']) ? $_POST['financeOption'] : '';

  // Check if the selected type is "Others"
  if ($types === "Others" && !empty($otherType)) {
      // Sanitize the "Other Type" input
      $otherType = mysqli_real_escape_string($conn, $otherType);
  } else {
      // If the selected type is not "Others," use the selected type as the value for TYPES
      $otherType = $types;
  }

  // Initialize variables to store credit amounts for different payment modes
  $creditAmount = 0.00;
  $debitAmount = 0.00; // Initialize debitAmount

  $hdfccaCredit = 0.00;
  $hdrccCredit = 0.00;
  $invCredit = 0.00;

  // Check if the selected mode is "Neft"
  if ($mode === 'Neft') {
      $neftOption = isset($_POST['neftOption']) ? $_POST['neftOption'] : ''; // Get the selected Neft option

      // Check the reference (selected Neft option)
      if ($neftOption === 'HDFCCA') {
          $hdfccaCredit = $credit;
      } elseif ($neftOption === 'HDRCC') {
          $hdrccCredit = $credit;
      } elseif ($neftOption === 'INV') {
          $invCredit = $credit;
      } else {
          // Handle any other conditions as needed
      }

      // Set the creditAmount and debitAmount to 0 when Neft with one of the three options is selected
      $creditAmount = 0.00;
      $debitAmount = 0.00; // Set debitAmount to 0
  }
  
 else if ($mode === 'G Pay' || $mode === 'DD / Check') {
    $gpayOption = isset($_POST['gpayOption']) ? $_POST['gpayOption'] : ''; // Get the selected Neft option

    // Check the reference (selected Neft option)
    if ($gpayOption === 'HDFCCA') {
        $hdfccaCredit = $credit;
    } elseif ($gpayOption === 'HDRCC') {
        $hdrccCredit = $credit;
    } elseif ($gpayOption === 'INV') {
        $invCredit = $credit;
    } else {
        // Handle any other conditions as needed
    }

    // Set the creditAmount and debitAmount to 0 when Neft with one of the three options is selected
    $creditAmount = 0.00;
    $debitAmount = 0.00; // Set debitAmount to 0
}


  



  else {
      // If mode is not Neft, set creditAmount and debitAmount
      $creditAmount = $credit;
      $debitAmount = $debit;
  }

  // Calculate the updated closing balance
  $closingBalance = (float)$previousClosingBalance + (float)$creditAmount - (float)$debitAmount; // Use debitAmount

  // Check if the closing balance is negative
  if ($closingBalance < 0) {
      echo '<script>alert("Closing Balance is negative. Closing Balance: RS.' . number_format($closingBalance, 2) . '");</script>';
  } else {
      // Insert a new record with the appropriate credit and debit amounts
      $insertRecordQuery = "INSERT INTO `daybook` (DATE, TYPES, CUSTOMERNAME, RECEIPT, VEHICLENAME, SERVICE, MODE, REFERENCE, CREDIT, DEBIT, CLOSINGBALANCE, FINANCEOPTION, NEFTOPTION, HDFCCA, HDRCC, INV)
          VALUES ('$date', '$otherType', '$customername', '$receipt', '$vehiclename', '$service', '$mode', '$reference', '$creditAmount', '$debitAmount', '$closebal', '$financeOption', '$neftOption', '$hdfccaCredit', '$hdrccCredit', '$invCredit')";

      if ($conn->query($insertRecordQuery) === TRUE) {
          echo '<script>alert("Record inserted successfully.");</script>';
      } else {
          echo "Error inserting record: " . $conn->error;
      }

      // Update the closing balance in the database
      $updateBalanceQuery = "UPDATE `daybook` SET CLOSINGBALANCE = '$closingBalance' WHERE CUSTOMERNAME = '$customername' AND DATE = '$date'";
      $conn->query($updateBalanceQuery);

      header("Location: daybook_save.php");
      exit;
  }

  $conn->close();
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    


<form action="" method="post" class="form" enctype="multipart/form-data">
  
  <div class="row" style="margin-top:-15px;">
    <div class="col">
  <button type="button" class="button3"><a href="daybook_save.php" style="color: white;">View Details</a></button>
    </div>
  
  
    <!-- Add an empty div to display the current balance -->
  <div class="col">
      <!-- Display the Current Balance using PHP -->
      <div class="opening-balance-label"  >Current Balance: <span style="border: 2px solid white; padding: 2px;">RS.<?php echo number_format($previousClosingBalance, 2); ?></span></div>
  </div>
  </div>
    <div class="row">
          <div class="col-4">
            <div class="form-group">
              <label>Date</label>
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group">
  
              <label>Types</label>
  
                </DIV></DIV>  </DIV> 
                <div class="row">
          <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="date" name="date" max="<?= date('Y-m-d') ?>" min="<?= date('Y-m-d', strtotime('-1 day')) ?>" required>
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group">
      <select class="form-control" name="types" id="types" required>
    <option value="" disabled selected><--Select Sale type--></option>
    <option value="Sales">Sales</option>
    <option value="Service">Service</option>
    <option value="Counter">Counter</option>
    <option value="Insurance">Insurance</option>
    <option value="Expense">Expense</option>
    <option value="Others">Others</option> <!-- Updated value to "Others" -->
  </select>
  </DIV></DIV></DIV>
         
  <div class="row" id="otherTypeRow" style="display:none;">
    <div class="col-4">
    </div>
    <div class="col-4">
      <div class="form-group">
        <input class="form-control" type="text" name="other_type" style="margin-left: 23.3rem;
      margin-top: 5px;">
      </div>
    </div>
  </div>
                <div class="row">
          <div class="col-4">
            <div class="form-group">
              <label>Customer Name</label>
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group">
              <label>Receipt Number</label>
                </DIV></DIV>  </DIV>
                <div class="row">
          <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="text" name="customer_name" id="customer_name" required>
            <!-- <div class="cust_dropdown" id="customerDropdown"></div> -->
  
  
  
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="text" name="receipt" required>
                </DIV></DIV> </DIV>
   <div class="row" id="customerCodeRow">
    <div class="col-4">
      <div class="form-group">
        <label>Customer Code</label>
        <select class="form-control" name="customer_code" id="customer_code" >
          <option value="" disabled selected><--Select Customer Code--></option>
          <?php
          foreach ($customerCodes as $code) {
            echo '<option value="' . $code . '">' . $code . '</option>';
          }
          ?>
        </select>
      </div>
    </div>
    <div class="col-4">
      <div class="form-group">
        <label>Phone Number</label>
        <input class="form-control" type="text" name="phone_number" id="phone_number" >
      </div>
    </div>
  </div>
  
  
  
       <!-- Add this script after your HTML content -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script>
  $(document).ready(function() {
    // Initially hide the customerCodeRow div
    $('#customerCodeRow').hide();
  
    // Listen for changes in the 'types' select
    $('#types').change(function() {
      // Check if the selected option is "Sales"
      if ($(this).val() === "Sales") {
        // If "Sales" is selected, show the customerCodeRow div
        $('#customerCodeRow').show();
      } else {
        // If any other option is selected, hide the customerCodeRow div
        $('#customerCodeRow').hide();
      }
    });
  });
  </script>
  
  
  
                <div class="row">
          <div class="col-4">
            <div class="form-group">
              <label>Vehicle Name</label>
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group">
  
              <label>Types of services</label>
                </DIV></DIV>  </DIV>
                <div class="row">
          <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="text" name="vehicle_name" id="vehicle_name" required>
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="text" name="service" required>
                </DIV></DIV> </DIV>
                <div class="row">
          <div class="col-4">
            <div class="form-group">
              <label>Mode of Payment</label>
    </DIV></DIV>
    <div class="col-4">
            <div class="form-group" id="paymentReferenceContainer">
  
              <label>Payment Reference Number</label>
  
                </DIV></DIV></DIV>
                <div class="row">
          <div class="col-4">
            <div class="form-group">
            <select class="form-control" name="mode" id="mode" required onchange="toggleFinanceOptions()">
              <option value="" disabled selected><--Select Payment type--></option>
              <option value="Cash">Cash</option>
              <option value="G Pay">G Pay</option>
              <option value="Neft">Neft</option>
              <option value="DD / Check">DD / Check</option>
              <option value="Finance">Finance</option>
          </select>
    </DIV></DIV>
  
    
  
    <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="text" name="reference" id="reference">
                </DIV></DIV> </DIV>
  
  
  
  
  
  <!-- Add a new div for the additional information, initially hidden -->
  <!-- <div class="row" id="neftInfoRow" style="display: none;">
      <div class="col-4">
          <div class="form-group">
              <p class="neft-info">HDFCCA<input type="radio" name="neftOption" value="HDFCCA" id="NeftHDFCCA" class="neft-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
              <p class="neft-info">HDRCC<input type="radio" name="neftOption" value="HDRCC" id="NeftHDRCC" class="neft-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
              <p class="neft-info">INV<input type="radio" name="neftOption" value="INV" id="NeftINV" class="neft-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
          </div>
      </div>
  </div> -->


  <div class="row" id="neftInfoRow" style="display: none;">
    <div class="col-4">
        <div class="form-group">
            <p class="neft-info">HDFCCA<input type="radio" name="neftOption" value="HDFCCA" class="neft-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
            <p class="neft-info">HDRCC<input type="radio" name="neftOption" value="HDRCC" class="neft-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
            <p class="neft-info">INV<input type="radio" name="neftOption" value="INV" class="neft-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
        </div>
    </div>
</div>
  
  
  
  
  
  
  <div class="row" id="financeInfoRow" style="display: none;">
        <div class="col-4">
            <div class="form-group">
                <!-- Add your additional finance information here -->
                <p class="finance-info">
                    HDFC <input type="radio" name="financeOption" id="financeHDFC" class="finance-radio" value="HDFC"style="margin-left: 16pc; position: absolute; margin-top: -17px;">
                </p>
                <p class="finance-info">
                    IDFC <input type="radio" name="financeOption" id="financeIDFC" value="IDFC" class="finance-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;">
                </p>
                <p class="finance-info">
                    IBC <input type="radio" name="financeOption" id="financeIBC"  value="IBC" class="finance-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;">
                </p>
            </div>
        </div>
    </div>
  
  
  
  
  
  
    <div class="row" id="gpayInfoRow" style="display: none;">
        <div class="col-4">
            <div class="form-group">
                <!-- Add your additional finance information here -->
                <p class="gpay-info">HDFCCA<input type="radio" name="gpayOption" value="HDFCCA" id="GpayHDFCCA" class="gpay-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
              <p class="gpay-info">HDRCC<input type="radio" name="gpayOption" value="HDRCC" id="GpayHDRCC" class="gpay-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
              <p class="gpay-info">INV<input type="radio" name="gpayOption" value="INV" id="GpayINV" class="gpay-radio" style="margin-left: 16pc; position: absolute; margin-top: -17px;"></p>
            </div>
        </div>
    </div>
  
  
  
  
  
  
  
  
  
    <script>
    function toggleFinanceOptions() {
        var modeDropdown = document.getElementById('mode');
        var financeInfoRow = document.getElementById('financeInfoRow');
        var neftInfoRow = document.getElementById('neftInfoRow');
        var gpayInfoRow = document.getElementById('gpayInfoRow'); // Added Gpay row
    
        if (modeDropdown.value === 'Finance') {
            financeInfoRow.style.display = 'block';
            neftInfoRow.style.display = 'none'; // Hide Neft options
        } else if (modeDropdown.value === 'Neft') {
            financeInfoRow.style.display = 'none'; // Hide Finance options
            neftInfoRow.style.display = 'block'; // Show Neft options
        }else if (modeDropdown.value === 'G Pay' || modeDropdown.value === 'DD / Check'){
          financeInfoRow.style.display = 'none'; // Hide Finance options
          neftInfoRow.style.display = 'none'; // Hide Neft options
          gpayInfoRow.style.display = 'block'; // Show Gpay options
        }
  
        else {
            financeInfoRow.style.display = 'none'; // Hide Finance options
            neftInfoRow.style.display = 'none'; // Hide Neft options
        }
    }
    
    // Get all the radio buttons by their class
    var financeRadios = document.querySelectorAll('.finance-radio');
    var neftRadios = document.querySelectorAll('.neft-radio');
    var gpayRadios = document.querySelectorAll('.gpay-radio'); // Added Gpay radios
    
    // Add a change event listener to each radio button
    financeRadios.forEach(function (radio) {
        radio.addEventListener('change', function () {
            // Update the display style of the financeInfoRow based on radio button status
            var financeInfoRow = document.getElementById('financeInfoRow');
            financeInfoRow.style.display = 'none';
        });
    });
    
    neftRadios.forEach(function (radio) {
        radio.addEventListener('change', function () {
            // Update the display style of the neftInfoRow based on radio button status
            var neftInfoRow = document.getElementById('neftInfoRow');
            neftInfoRow.style.display = 'none';
        });
    });
  
    gpayRadios.forEach(function (radio) {
      radio.addEventListener('change', function () {
          // Update the display style of the gpayInfoRow based on radio button status
          var gpayInfoRow = document.getElementById('gpayInfoRow');
          gpayInfoRow.style.display = 'none';
      });
  });
    </script>
  
  
  
  
  
   <!-- Add an ID to the Expense-related label and input elements -->
   <div class="row" id="expenseInfoRow" style="display: none;">
      <div class="col-4">
          <div class="form-group">
              <label id="particularLabel" for="particular">Particular</label>
          </div>
      </div>
      <div class="col-4">
          <div class="form-group" id="voucherLabelContainer">
              <label id="voucherLabel" for="voucher">Voucher</label>
          </div>
      </div>
  </div>
  
  <div class="row" id="expenseInputRow" style="display: none;">
      <div class="col-4">
          <div class="form-group">
              <input class="form-control" type="text" name="particular" id="particularInput">
          </div>
      </div>
      <div class="col-4">
          <div class="form-group" id="voucherInputContainer">
              <input class="form-control" type="text" name="voucher" id="voucherInput">
          </div>
      </div>
  </div>
  
  
  
  <div class="row">
          <div class="col-4">
            <div class="form-group" id="creditLabelContainer">
              <label for="credit">Credit Amount</label>
    </DIV></DIV>
    <div class="col-4" id="debitAmountDiv">
            <div class="form-group" id="debitContainer">
  
              <label for="debit">Debit Amount</label>
                </DIV></DIV>  </DIV>
                <div class="row"> 
          <div class="col-4">
            <div class="form-group" id="creditInputContainer">
            <input class="form-control" type="text" name="credit" id="credit" required>
    </DIV></DIV>
    <div class="col-4" id="debitAmountDiv1">
            <div class="form-group">
            <input class="form-control" type="text" name="debit" id="debit">
                </DIV></DIV></DIV>
  
                <div class="row">
          <div class="col-4" >
            <div class="form-group">
              <label>Closing Balance</label>
                </DIV></DIV>  </DIV>
                <div class="row" >
          <div class="col-4">
            <div class="form-group">
            <input class="form-control" type="text" name="closebal" id="closebal" readonly>
            
  
            
                </DIV></DIV> </DIV>
  
  
  
  
                <div class="form-group mt-4">
          <input type="submit" value="SAVE" class="button2" name="save">
      </div>
  </form>
  
  </div>
  </div>
  </body>
  <script>
    

// Add event listeners to credit and debit inputs to trigger the calculation
document.getElementById('credit').addEventListener('input', calculateClosingBalance);
document.getElementById('debit').addEventListener('input', calculateClosingBalance);
document.getElementById('mode').addEventListener('change', calculateClosingBalance); // Add this line

function calculateClosingBalance() {
    // Get the credit and debit input values
    var creditInput = document.getElementById('credit');
    var debitInput = document.getElementById('debit');
    var closeBalInput = document.getElementById('closebal');

    // Parse the input values as floats (assuming they contain numeric values)
    var creditAmount = parseFloat(creditInput.value) || 0;
    var debitAmount = parseFloat(debitInput.value) || 0;

    // Get the selected payment mode
    var selectedMode = document.getElementById('mode').value;

    var closingBalance = <?php echo json_encode($previousClosingBalanceSum); ?>;
    
    // Check if the selected mode is "Cash" before adding the credit amount
    if (selectedMode === "Cash") {
        closingBalance = parseFloat(closingBalance) + creditAmount - debitAmount;
    }

    // Update the closing balance input field
    closeBalInput.value = isNaN(closingBalance) ? '' : closingBalance.toFixed(2); // Display with two decimal places or empty string if NaN
}

// Calculate the closing balance on page load
window.addEventListener('load', calculateClosingBalance);








document.getElementById('customer_code').addEventListener('change', function () {
    var selectedCustomerCode = this.value;

    // Make an AJAX request to fetch customer details
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            var customerDetails = JSON.parse(xhr.responseText);
            if (customerDetails) {
                // Populate the customer name and phone number fields
                document.getElementById('customer_name').value = customerDetails.CUSTOMERNAME;
                document.getElementById('phone_number').value = customerDetails.PHONE;
                document.getElementById('vehicle_name').value = customerDetails.VEHICLENAME;
            } else {
                // Clear the fields if no details are found
                document.getElementById('customer_name').value = '';
                document.getElementById('phone_number').value = '';
                document.getElementById('vehicle_name').value = '';
            } 
        }
    };

    // Send the AJAX request to a PHP script to fetch customer details
    xhr.open('GET', 'fetch_customer_details.php?customer_code=' + selectedCustomerCode, true);
    xhr.send();
});




  </script>
  </html>