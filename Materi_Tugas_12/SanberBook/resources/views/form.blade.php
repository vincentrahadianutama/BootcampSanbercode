<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
</head>
<body>
    <h1>Buat Account Baru!</h1>
    <h3>Sign Up Form</h3>
    <form action="/sent" method="post">
    @csrf
        <label>First Name:</label>
        <br>
        <input type="text" name="nama">
        <br><br>
        <label>Last Name:</label><br>
        <input type="text" name="marga"><br><br>
        <label>Gender</label>
        <br>
        <input type="radio" name="gender" value="Laki-Laki">Laki-Laki<br>
        <input type="radio" name="gender" value="Perempuan">Perempuan<br>
        <br><br>
        <label>Nationality</label><br>
        <select name="Gender">
            <option value="Indonesian" name="national">Indonesian</option>
            <option value="England" name="national">England</option>
            <option value="Arabian" name="national">Arabian</option>
            <option value="Other" name="national">Other</option>
        </select><br><br>
        <label>Language Spoken</label><br>
        <input type="checkbox">bahasa Indonesia<br>
        <input type="checkbox">English<br>
        <input type="checkbox">Arabian<br>
        <input type="checkbox">Other<br><br>
        <label>Biodata:</label><br>
        <textarea name="Biodata" rows="10" cols="30"></textarea><br><br>                              
    </form>
    <a href="/welcome"><button>Sign Up</button></a> 
</body>
</html>