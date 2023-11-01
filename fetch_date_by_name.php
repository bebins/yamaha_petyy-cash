<?php
include "connect.php"; // Include your database connection code

if (isset($_GET['customer_name'])) {
    $customerName = $_GET['customer_name'];
    
    // Add your SQL query here to fetch data based on the customer name
    $query = "SELECT DATE, TYPES, RECEIPT, VEHICLENAME, SERVICE, MODE, REFERENCE FROM `daybook` WHERE CUSTOMERNAME = '$customerName'";
    
    $result = $conn->query($query);
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $daybookData = array(
            'date' => $row['DATE'],
            'types' => $row['TYPES'],
            'receipt' => $row['RECEIPT'],
            'vehicle_name' => $row['VEHICLENAME'],
            'service' => $row['SERVICE'],
            'mode' => $row['MODE'],
            'reference' => $row['REFERENCE']
        );
        
        // Return the data as JSON
        echo json_encode($daybookData);
    } else {
        echo json_encode(array()); // Return an empty JSON object if no data is found
    }
} else {
    echo json_encode(array()); // Return an empty JSON object if customer_name parameter is not set
}

$conn->close();
?>
