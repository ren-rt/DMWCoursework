<?php
include 'conf.php';

$sql = "SELECT * FROM doc_details";
$result = mysqli_query($conn, $sql);
echo '<Table border = "1" cellspacing = "2" cellpading = "2">
<tr>
<td>Name</td>
<td>Specialisation</td>
</tr>
';

if(mysqli_num_rows($result) > 0) {
    while($row = mysqli_fetch_assoc($result)) {
        
        $name = $row['doctorName'];
        $specialisation = $row['specialisation'];
        

        echo '<tr>
        
        <td>'.$name.'</td>
        <td>'.$specialisation.'</td>
        </tr>';
}
}

?>