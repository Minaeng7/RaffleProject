<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>The Error</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<div class="error-wrapper">
    <div class="error-container error-500">
        <div class="error">
            <div class="error-title">
               <a class="navbar-brand" href="/raffle/" ><img src="images/logo.png" class="logo" alt=""></a><br>
            </div><br>
            <div class="error-number">
            </div>
          
            <div class="error-or">
                <div class="or-line"></div>
                <div class="or"></div>
                <br>
            </div>
              <div class="error-description">
               	<h4>Wrong ID & PW</h4>
            </div>
            <form action = "login" method="post">
            <div class="error-textbox">
                ID : <input type="text" class="form-control" name = "userid">
                PW : <input type="text" class="form-control" name = "passwd">
             
                <button>로그인</button>
            </div>
            </form>
            <div class="error-or">
                <div class="or-line"></div>
                <div class="or"></div>
            </div>
            <ul class="error-actions">
                <li>
                    <a href="">
                        <i class="pe-7s-left-arrow" data-toggle="tooltip" title="" data-original-title="BACK"></i>
                    </a>
                </li>
                <li>
                    <a href="">
                        <i class="pe-7s-home" data-toggle="tooltip" title="" data-original-title="HOME"></i>
                    </a>
                </li>
                <li>
                    <a href="">
                        <i class="pe-7s-mail" data-toggle="tooltip" title="" data-original-title="CONTACT US"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<style type="text/css">
.error-wrapper {
    background-color: #292929;
    height: 100%;
    padding-top: 10%
}

.error-wrapper .error-container {
    -webkit-transform: skew(0deg, -10deg);
    -moz-transform: skew(0deg, -10deg);
    -o-transform: skew(0deg, -10deg);
    -ms-transform: skew(0deg, -10deg);
    transform: skew(0deg, -10deg);
    background-color: #1dbc9c;
    padding: 60px
}

.error-wrapper .error-container .error {
    -webkit-transform: skew(0deg, 10deg);
    -moz-transform: skew(0deg, 10deg);
    -o-transform: skew(0deg, 10deg);
    -ms-transform: skew(0deg, 10deg);
    transform: skew(0deg, 10deg);
    margin: 0 auto;
    text-align: center;
    width: 350px
}

.error-wrapper .error-container .error .error-title {
    font-size: 28px;
    font-weight: 700;
    letter-spacing: 5px;
    text-transform: uppercase
}

.error-wrapper .error-container .error .error-number {
    font-size: 100px;
    font-weight: 700;
    letter-spacing: 5px;
    text-shadow: 0 3px 0 #292929, 0 14px 10px rgba(0, 0, 0, .15), 0 24px 2px rgba(0, 0, 0, .1), 0 34px 30px rgba(0, 0, 0, .1)
}

.error-wrapper .error-container .error .error-description {
    font-size: 14px;
    font-weight: 300;
    padding: 0 40px
}

.error-wrapper .error-container .error .error-or {
    height: 20px;
    margin: 30px 0 10px;
    position: relative;
    text-align: center
}

.error-wrapper .error-container .error .error-or .or-line {
    background-color: #ffffff;
    height: 1px;
    left: 40px;
    position: absolute;
    right: 40px;
    top: 10px
}

.error-wrapper .error-container .error .error-or .or {
    -lh-property: 0;
    left: -webkit-calc(50% - 30px);
    left: -moz-calc(50% - 30px);
    left: calc(50% - 30px);
    background-color: #ffffff;
    height: 20px;
    margin: 0 auto;
    position: absolute;
    text-transform: uppercase;
    top: 2px;
    width: 60px
}

.error-wrapper .error-container .error .error-textbox {
    padding: 0 40px
}

.error-wrapper .error-container .error .error-textbox .form-control {
    background-color: #292929;
    border: 0
}

.error-wrapper .error-container .error .error-submit {
    padding: 0 40px
}

.error-wrapper .error-container .error .error-submit input {
    font-size: 13px;
    font-weight: 300;
    text-transform: uppercase
}

.error-wrapper .error-container .error .error-actions {
    display: block;
    height: 40px;
    list-style: none;
    padding: 5px
}

.error-wrapper .error-container .error .error-actions>li {
    display: inline-block;
    float: left;
    width: 33%
}

.error-wrapper .error-container .error .error-actions>li a i {
    color: #292929;
    font-size: 32px
}

.error-wrapper .error-container.error-500 {
    background-color: #ffffff
}

.error-wrapper .error-container.error-500 .error .error-or .or-line {
    background-color: #ffffff
}

.error-wrapper .error-container.error-500 .error .error-or .or {
    background-color: #ffffff
}

.error-wrapper .error-container.error-401 {
    background-color: #ffffff
}

.error-wrapper .error-container.error-401 .error .error-or .or-line {
    background-color: #ffffff
}

.error-wrapper .error-container.error-401 .error .error-or .or {
    background-color: #ffffff
}

@media only screen and (max-width:600px) {
    .error-wrapper {
        padding-top: 5%
    }
    .error-wrapper .error-container {
        -webkit-transform: skew(0deg, -5deg);
        -moz-transform: skew(0deg, -5deg);
        -o-transform: skew(0deg, -5deg);
        -ms-transform: skew(0deg, -5deg);
        transform: skew(0deg, -5deg)
    }
    .error-wrapper .error-container .error {
        -webkit-transform: skew(0deg, 5deg);
        -moz-transform: skew(0deg, 5deg);
        -o-transform: skew(0deg, 5deg);
        -ms-transform: skew(0deg, 5deg);
        transform: skew(0deg, 5deg);
        width: auto
    }
}
</style>

<script type="text/javascript">

</script>
</body>
</html>