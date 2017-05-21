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
<h1>Loan's Information</h1>
<form action="adminPanel/loans/create.php" method="post">
    <table>
        <tr>
            <td><label for="name">Loan Name: </label></td>
            <td><input type="text" id="name" name="name" placeholder="Loan Name"></td>
        </tr>
        <tr>
            <td><label for="amount">Amount: </label></td>
            <td><input type="text" id="amount" name="amount" placeholder="Amount"> BDT</td>
        </tr>
        <tr>
            <td><label for="interest">Interest: </label></td>
            <td><input type="text" id="interest" name="interest" placeholder="interest">%</td>
        </tr>
        <tr>
            <td><label for="duration">Duration: </label></td>
            <td><input type="text" id="duration" name="duration" placeholder="duration"> year</td>
        </tr>
        <tr>
            <td><label for="loan_id">Loan ID: </label></td>
            <td><input type="text" id="loan_id" name="loan_id" placeholder="Loan ID"></td>
        </tr>
        <tr>
            <td><label for="details">Duration: </label></td>
            <td><input type="text" id="details" name="details" placeholder="details"></td>
        </tr>
        <td><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>
</body>
</html>