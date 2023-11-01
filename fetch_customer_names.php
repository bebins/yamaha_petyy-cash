<?php
include "connect.php";

// Get the entered customer name from the AJAX request
$enteredCustomerName = $_GET['customer_name'];

// Query to fetch matching customer names from the daybook table
$query = "SELECT DISTINCT CUSTOMERNAME FROM `daybook` WHERE CUSTOMERNAME LIKE '%$enteredCustomerName%'";
$result = $conn->query($query);

// Initialize an array to store the matching customer names
$matchingCustomerNames = array();

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $matchingCustomerNames[] = $row['CUSTOMERNAME'];
    }
}

// Return the matching customer names as a JSON response
echo json_encode($matchingCustomerNames);

$conn->close();
?>
