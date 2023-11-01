function refreshPage() {
    // Reload the current page
    window.location.reload();
}




// Function to show/hide the "Other Type" input box
function toggleOtherTypeInput() {
var typesDropdown = document.getElementById('types');
var otherTypeRow = document.getElementById('otherTypeRow');

if (typesDropdown.value === 'Others') {
otherTypeRow.style.display = 'block';
} else {
otherTypeRow.style.display = 'none';
}
}

// Add an event listener to the "Types" dropdown to trigger the toggle function
document.getElementById('types').addEventListener('change', toggleOtherTypeInput);









