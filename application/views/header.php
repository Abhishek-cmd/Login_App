<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>CodeIgniter Routes</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.2/css/bulma.min.css">
        <script defer src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>

        <style type="text/css">
            body {
              margin: 0;
              padding: 0;
              background-color: #17a2b8;
              height: 100vh;
            }
            #login .container #login-row #login-column #login-box {
              margin-top: 120px;
              max-width: 600px;
              height: 320px;
              border: 1px solid #9C9C9C;
              background-color: #EAEAEA;
            }
            #login .container #login-row #login-column #login-box #login-form {
              padding: 20px;
            }
            #login .container #login-row #login-column #login-box #login-form #register-link {
              margin-top: -85px;
            }
        </style>
    </head>
    <body>
        <section class="section">
            <div class="container">
                <h1 class="title">CI Contacts v1</h1>
                <h2 class="subtitle">CodeIgniter contacts management app</h2>
                <div class="columns">
                    <div class="column is-one-quarter">
                        <aside class="menu">
                            <p class="menu-label">
                                General
                            </p>
                            <ul class="menu-list">
                                <li><a class="is-active" href="#">Dashboard</a></li>
                                <li><a href="<?=site_url('contacts/create')?>">New Contact</a></li>
                                <li><a href="<?=site_url('contacts/edit/1')?>">Edit Contacts</a></li>
                            </ul>
                            <p class="menu-label">
                                Settings
                            </p>
                            <ul class="menu-list">
                                <li><a href="#">SMS</a></li>
                                <li><a href="#">Email</a></li>
                            </ul>
                        </aside>
                    </div>