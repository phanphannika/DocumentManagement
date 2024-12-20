<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!-- Link to Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Battambang:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Battambang', sans-serif;
            background-color: #e8ecf4;
            color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.6);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            width: 350px;
            text-align: center;
        }

        .label {
            font-size: 1.5em;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .input-group {
            margin-bottom: 15px;
            text-align: left;
        }

        .input-group label {
            font-size: 1em;
            margin-bottom: 5px;
            display: block;
        }

        .input-group input, .input-group .button {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border-radius: 5px;
            border: none;
            font-size: 1em;
            box-sizing: border-box; /* Ensures consistent width across all browsers */
        }

        .button {
            font-family: 'Battambang', sans-serif;
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #45a049;
        }

        .input-group a {
            color: #FFD700;
            text-decoration: none;
            font-size: 0.9em;
        }

        .input-group a:hover {
            text-decoration: underline;
        }

        .input-group label.error {
            color: #FF5722;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="label">កម្មវិធីគ្រប់គ្រងឯកសាររបស់...</div>
            <div class="input-group">
                <label for="txtUName">ឈ្មោះចូល</label>
                <asp:TextBox ID="txtUName" runat="server" CssClass="input" Height="40px" Width="100%"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="txtPw">លេខសម្ងាត់</label>
                <asp:TextBox ID="txtPw" runat="server" TextMode="Password" MaxLength="12" CssClass="input" Height="40px" Width="100%"></asp:TextBox>
            </div>
            
            <div class="input-group">
                <asp:Button ID="btnAdd" runat="server" Text="ចូល" CssClass="button" Height="40px" Width="100%" OnClick="btnAdd_Click1" />
            </div>
            <div class="input-group">
                <asp:Button ID="btnClear" runat="server" Text="សម្អាត" CssClass="button" Height="40px" Width="100%" OnClick="btnClear_Click1" />
            </div>
            <div class="input-group">
                <asp:HyperLink ID="CreateUser" runat="server" Text="បង្កើតគណនីអ្នកប្រើ" NavigateUrl="~/CreateUser.aspx"></asp:HyperLink>
            </div>
            <div class="input-group">
                <asp:Label ID="lblBlank" runat="server" Height="25px" Width="100%" CssClass="error"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
