<?php
include 'conf.php';

$sql = "SELECT * FROM patient_details";
$result = mysqli_query($conn, $sql);
echo '<Table border = "1" cellspacing = "2" cellpading = "2">
<tr>
<td>Name</td>
<td>Age</td>
<td>Phone</td>
</tr>
';

if(mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        
        $name = $row['patientName'];
        $age = $row['patientAge'];
        $phone = $row['patientPhone'];
        

        echo '<tr>
        
        <td>'.$name.'</td>
        <td>'.$age.'</td>
        <td>'.$phone.'</td>
        </tr>';
}
}

?>