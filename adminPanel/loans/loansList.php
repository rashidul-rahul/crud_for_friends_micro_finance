<?php
$db = new PDO("mysql:hostname=localhost;dbname=friends_mf","root","");
$query ="SELECT * FROM `loans`";
$stmt = $db->query($query);
$loans = $stmt->fetchAll(PDO::FETCH_ASSOC);
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
<table border="2px">
    <thead>
    <tr>
        <th>NO</th>
        <th>Loan Name</th>
        <th>Loan ID</th>
        <th>Amount</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <?php
    $count = 0;
    foreach ($loans as $loan) {
        $count++;
        ?>
        <tr>
            <td><?=$count?></td>
            <td><?=$loan['name']?></td>
            <td><?=$loan['loan_id']?></td>
            <td><?=$loan['amount']?> BDT</td>
            <td><a href="adminPanel/loans/edit.php">Edit</a> | <a href="adminPanel/loans/view.php">View</a>
                | <a href="adminPanel/loans/delete.php">Delete</a>
            </td>
        </tr>
        <?php
    }
    ?>
    </tbody>
</table>
</body>
</html>