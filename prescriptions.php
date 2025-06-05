<?php
// Enable error reporting
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Start session at the VERY TOP
session_start();

// Redirect if not logged in


// Get role from session (with null coalescing operator)
$role = $_SESSION['role'] ?? '';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Prescription Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 20px;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        h1, h2 {
            color: #2c3e50;
            margin-bottom: 25px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        input[type="text"],
        input[type="date"] {
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 14px;
            width: 100%;
        }

        button {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            width: auto;
            margin-top: 10px;
        }

        button:hover {
            background-color: #2980b9;
        }

        .patient, .insertForm {
            background: white;
            padding: 20px;
            border-radius: 8px;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #34495e;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Patient View -->
        <?php if ($role === 'patient'): ?>
        <div class="patient">
            <h1>Prescription Management</h1>
            <form id="details" method="POST" action="view.php">
                <label>Patient Name: </label>
                <input type="text" name="name" placeholder="Enter your name" required>
                <button type="submit" id="viewButton">VIEW</button>
            </form>
        </div>

        <!-- Doctor Interface -->
        <?php elseif ($role === 'doctor'): ?>
        <div class="insertForm">
            <h2>Insert Patient Record</h2>
            <form id="record" action="insert.php" method="post">
                <input type="text" name="name" placeholder="Patient Name" required><br>
                <input type="text" name="diagnosis" placeholder="Diagnosis" required><br>
                <input type="text" name="treatment" placeholder="Treatment" required><br>
                <input type="date" name="date" required><br>
                <input type="text" name="doctor" placeholder="Doctor Name" required><br>
                <button type="submit">Insert Record</button>
            </form>
        </div>
        <?php endif; ?>
    </div>
    <script src="prescription.js"></script>
</body>
</html>
