$(document).ready(function() {
    $('#main_table').DataTable({
      "pageLength": 4, // Show 4 rows by default
      "lengthMenu": [ [4, 10, 20, 30, 40, 50, 100], [4, 10, 20, 30, 40, 50, 100] ], // Dropdown menu for selecting rows per page
      "dom": 'Blfrtip', // Show buttons (B) with default layout
      "buttons": [
        'csv', 'excel', 'pdf', 'print' // Add buttons for CSV, Excel, PDF, and Print
      ]
    });
  });