<!doctype html>
                        <html>
                            <head>
                                <meta charset='utf-8'>
                                <meta name='viewport' content='width=device-width, initial-scale=1'>
                                <title>Snippet - BBBootstrap</title>
                                <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css' rel='stylesheet'>
                                <link href='' rel='stylesheet'>
                                <style>body {
    background: #eee
}

.card {
    border-radius: 12px
}

.card1 {
    background-image: url("https://i.imgur.com/aeidEH1.jpg");
    margin-top: 20px
}

.first {
    background-image: url("https://image.freepik.com/free-vector/team-work-building-business-puzzle-illustration-people-character-together-idea-success-strategy-partnership_121223-1016.jpg");
    background-repeat: no-repeat;
    background-size: 100% 100%;
    border-radius: 12px;
    max-width: 100%;
    display: block;
    height: auto
}

.linkedin {
    position: relative;
    left: 25px;
    top: 20px;
    font-size: 19px
}

.in {
    border-width: 10px;
    color: #fff;
    background: blue;
    font-weight: bold
}

.second {
    background: #fff;
    border-radius: 12px
}

.welcome {
    margin-top: 130px;
    font-size: 23px;
    font-weight:
}

.form-group {
    padding-top: 8px;
    font-size: 12px
}

.form-control {
    background: #E3F2FD;
    margin-top: 10px;
    font-size: 9px;
    font-weight: bold;
    color: #fff;
    padding-top: 15px;
    padding-bottom: 15px;
    caret-color: red
}

.form-control:focus {
    box-shadow: none
}

.forgot {
    padding-top: 7px;
    color: #42A5F5
}

.space {
    padding-top: 28px
}

.btn {
    border-radius: 0%;
    font-size: 11px;
    font-weight: bold;
    padding-left: 40px;
    padding-right: 40px;
    padding-top: 10px;
    padding-bottom: 10px
}

.btn1 {
    background: #0277BD;
    padding-left: 46px;
    padding-right: 46px
}
p
{
color:red;
}
.btn2 {
    background-color: #fff;
    color: #0277BD;
    margin-left: 10px
}

.under {
    font-size: 8px;
    color: #42A5F5;
    padding-top: 40px
}

.lower {
    font-size: 8px;
    color: #42A5F5;
    position: relative;
    top: 90%
}
.link2
{
 padding-left: 220px;
}

@media only screen and (max-width: 800px) {
    .linkedin {
        display: none
    }
    }
</style>
                                <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
                                <script type='text/javascript' src='https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js'></script>
                                <script type='text/javascript' src='https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js'></script>
                                <script type='text/javascript'></script>
                            </head>
                            <body oncontextmenu='return false' class='snippet-body'>
							<form method="post" action="signin">
                            <div class="card p-5 card1 container">
    <div class="row d-flex justify-content-center">
        <div class="col-md-10">
            <div class="card">
                <div class="row no-gutters">
                    <div class="col-md-4 first">
                        <div class="linkedin"><span class="no-gutters text-primary font-weight-bold"></span><span class="in"></span></div>
                    </div>
                    <div class="col-md-6 second pl-4 pr-4">
                        <h4 class="welcome text-primary">Candidate Login</h4>
                        <div class="form-group"> <input type="email" name="email" placeholder="Email" class="form-control"> <input type="password" name="newpassword" placeholder="Password" class="form-control">
                            <div class="forgot"><span><a href="forgotpassword" >Forgot Password?</a><a href="signup" class="link2">Register</a></span></div>
                      
                        </div>
                         
                        <div class="space"> <button class="btn btn-primary btn1">Login</button> </div>
                      <p><b> ${errorMessage}</b></p>
                        <div class="row">
                            
                            <div class="col-md-1">
                                <p> </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <p class="lower"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
                            </body>
                        </html>