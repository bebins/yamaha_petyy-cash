<?php
include "connect.php";

// Get the customer name from the AJAX POST request
$customerName = $_POST['customer_name'];

// Prepare and execute a database query to fetch customer information
$sql = "SELECT CUSTOMERCODE, CUSTOMERNAME, VEHICLENAME, PHONE FROM customer_master WHERE CUSTOMERNAME = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $customerName);
$stmt->execute();
$result = $stmt->get_result();

// Check if a matching record was found
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $customerInfo = array(
        'CUSTOMERCODE' => $row['CUSTOMERCODE'],
        'CUSTOMERNAME' => $row['CUSTOMERNAME'],
        'VEHICLENAME' => $row['VEHICLENAME'],
        'PHONE' => $row['PHONE']
    );
    // Encode the customer information as JSON and return it
    echo json_encode($customerInfo);
} else {
    // Return an empty JSON object if no matching record was found
    echo json_encode((object)[]);
}

// Close the database connection
$stmt->close();
$conn->close();
?>
