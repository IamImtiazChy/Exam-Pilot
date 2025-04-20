<?php
session_start();

// Include PHPMailer autoload file
require 'vendor/autoload.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/src/Exception.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "exam pilot";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to send verification code via email
function sendVerificationCode($email, $verificationCode) {
    // Create a new PHPMailer instance
    $mail = new PHPMailer(true);

    try {
        // SMTP configuration
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'exampilot.nstu@gmail.com'; // Gmail email address
        $mail->Password = 'ontm kaji uags dwxf'; // Change app-specific password
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;

        // Add debug output
        $mail->SMTPDebug = 0; // Output debugging info

        // Sender and recipient settings
        $mail->setFrom('exampilot.nstu@gmail.com', 'Exam Pilot');
        $mail->addAddress($email);

        // Email content
        $mail->isHTML(true);
        $mail->Subject = 'Verification Code';
        $mail->Body = "Your verification code is: $verificationCode";

        // Send the email
        $mail->send();
        return true; // Email sent successfully
    } catch (Exception $e) {
        // Show the actual error
        echo "Email sending failed: " . $mail->ErrorInfo;
        return false; // Email sending failed
    }
}

// Function to generate a 4-digit TOTP code
function generateTOTP($secret) {
    $time = floor(time() / 30); // 30-second intervals
    $data = pack("NN", 0, $time); // Convert to network byte order
    $hash = hash_hmac('sha1', $data, $secret, true);
    $offset = ord($hash[19]) & 0xf;
    $otp = ((ord($hash[$offset + 0]) & 0x7f) << 24 |
            (ord($hash[$offset + 1]) & 0xff) << 16 |
            (ord($hash[$offset + 2]) & 0xff) << 8 |
            (ord($hash[$offset + 3]) & 0xff)) % 10000; // Convert to 4-digit OTP
    return str_pad($otp, 4, "0", STR_PAD_LEFT); // Convert to 4-digit OTP
}

// Process the form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Extract email from session variable
    $email = $_SESSION["user_email"];

    // Generate a random secret key
    $secret = strtoupper(bin2hex(random_bytes(5)));

    // Generate a TOTP code and timestamp
    $otpTimestamp = time();
    $verificationCode = generateTOTP($secret);

    if (sendVerificationCode($email, $verificationCode)) {
        // Store the verification code and timestamp in the session
        $_SESSION['verification_code'] = $verificationCode;
        $_SESSION['otp_timestamp'] = $otpTimestamp;

        // Email sent successfully, redirect to submitCode1.php
        header("Location: submitCode1.php");
        exit; // Ensure that no further code execution occurs
    } else {
        echo "Failed to send the verification code. Please try again.";
    }
}

$conn->close();
?>







<!DOCTYPE html>
<html>

<head>
    <title>Verification Page</title>
    <style>
        body {
            background-color: white;
            font-family: Poppins, sans-serif;
        }

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        form {
            background-color: #f0f0f0;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #888888;
        }

        label {
            font-weight: bold;
        }

        input[type=email] {
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 100%;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type=submit] {
            background-color: #ff8533;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        input[type=submit]:hover {
            background-color: #ff6600;
        }

        .error-message {
            color: red;
        }

        .success-message {
            color: green;
        }
    </style>
</head>

<body>
    <div class="container">
        <form action="" method="post">
            <label for="email">Email:</label>
            <!-- Add readonly attribute to make the field read-only -->
            <input type="email" id="email" name="email" value="<?php echo $_SESSION["user_email"]; ?>" readonly required>
            <input type="submit" value="Verify this Email">
        </form>
    </div>
</body>

</html>
