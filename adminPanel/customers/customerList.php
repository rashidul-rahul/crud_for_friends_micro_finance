<?php
$db = new PDO("mysql:hostname=localhost;dbname=friends_mf","root","");
$query ="SELECT * FROM `customers`";
$stmt = $db->query($query);
$customers = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<html>
<head>
    <base href="http://localhost/friends_mf/">
</head>
<body>
<table>
    <td>
    <th><a href="index.php">Home</th>
    <th><a href="adminPanel/customers/customerList.php">All Customer</th>
    <th><a href="adminPanel/accounts/accountsList.php">All accounts</th>
    <th><a href="adminPanel/loans/loansList.php">All Loans</th>
    <th><a href="adminPanel/customers/addCustomer.php">Add Customer</th>
    <th><a href="adminPanel/loans/addloans.php">Add loan</th>
    <th><a href="adminPanel/assignLoans.php">Assign Loan</th>
    </td>
</table>
<br/>
<table>
    <thead>
    <tr>
       <th>Name</th>
    </tr>
    </thead>
</table>
</body>
</html>