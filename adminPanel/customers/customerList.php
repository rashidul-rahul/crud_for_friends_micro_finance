<?php
$db = new PDO("mysql:hostname=localhost;dbname=friends_mf","root","");
$query ="SELECT * FROM `customers` LEFT JOIN accounts ON customers.id=accounts.customer_id";
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
<table border="2px">
    <thead>
    <tr>
       <th>Name</th>
       <th>Account No</th>
       <th>Total Amount Of money</th>
       <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <?php
        foreach ($customers as $customer) {
            ?>
            <tr>
                <td><?=$customer['first_name']." ".$customer['last_name']?></td>
                <td><?=$customer['account_no']?></td>
                <td><?=$customer['total_money']?> BDT</td>
                <td><a href="adminPanel/customers/edit.php">Edit</a> | <a href="adminPanel/customers/view.php?id=<?=$customer['customer_id'];?>">View</a>
                    | <a href="adminPanel/customers/delete.php">Delete</a>
                </td>
            </tr>
            <?php
        }
    ?>
    </tbody>
</table>
</body>
</html>