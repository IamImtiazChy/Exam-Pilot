<?php
session_start();

// Include the file containing the generateTOTP() function and email sending function
require '2fa_verification.php';

// Process the resend action
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // Extract email from session variable
    $email = $_SESSION["user_email"];

    // Generate a new TOTP code and timestamp
    $secret = strtoupper(bin2hex(random_bytes(5))); // Assuming you generate a new secret here
    $otpTimestamp = time();
    $verificationCode = generateTOTP($secret); // Generate new TOTP code

    // Resend the verification code
    if (sendVerificationCode($email, $verificationCode)) {
        // Update the session with the new verification code and timestamp
        $_SESSION['verification_code'] = $verificationCode;
        $_SESSION['otp_timestamp'] = $otpTimestamp;

        // Redirect back to the submitCode1.php page
        header("Location: submitCode1.php");
        exit; // Ensure that no further code execution occurs
    } else {
        echo "Failed to resend the verification code. Please try again.";
    }
}
?>
