<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel='stylesheet'
        href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/css/bootstrap.min.css' />

    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js'></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.4.1/js/bootstrap.min.js'></script>
    <title>@yield('title')</title>

    <style>
        body{
            background-color: #80808030;
        }

        textarea{
            resize: none;
        }

        .card {
            margin-top: 0px;
            margin-bottom: 0px;
        }

        .card .panel-heading {
            cursor: pointer;
        }

        .card .panel-heading b{
            font-size: 2em;
        }

        .card .panel-body {
            font-size: 1.5em;
            color: dimgray;
            word-wrap: break-word; 
        }

        .card .panel-footer {
            padding-bottom: 1.75em;
        }

        .card .panel-footer span{
            position: relative;
            top: 0.5em;
            color: lightslategray;            
        }
    </style>
</head>

<body>
    <div>
        <form id="test" method="POST" action="/post/22">
            @csrf
            @method('DELETE')
            <button type="submit">Test</button>
        </form>
    </div>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Forum</a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="#" id="btnNewPost">
                        <span class="glyphicon glyphicon-pencil"></span>
                        Post
                    </a>
                </li>
                <li>
                    @if($user)
                    <a href="/login" id="btnLogout">
                        <span class="glyphicon glyphicon-log-out"></span>
                        Logout
                    </a>
                    @else
                    <a href="#" id="btnLogin">
                        <span class="glyphicon glyphicon-log-in"></span>
                        Login
                    </a>
                    @endif
                </li>
            </ul>
        </div>
    </nav>

    <div class="container">
        @yield('content');
    </div>

    @include('layouts.login')

    @include('layouts.newpost')

    <script>

        $('#btnLogin').click(() => {
            $('#login').modal();
        });

        $('#btnNewPost').click(()=>{
            $('#newPost').modal();
        })

        closeLoginAllert();

        $('#formLogin').submit((e)=>{

            e.preventDefault();

            let data = $('#formLogin').serialize();

            $.post('/login', data)
                .then( res =>{
                    closeLoginAllert('fast');

                    $('#loginSuccess').show('slow');

                    setTimeout(()=>{
                        location.reload();
                    },1000);
                })
                .catch( err => {
                    if(err.status == 401){

                        closeLoginAllert('fast');

                        $('#loginFail').show('slow');
                    }
                });
        })

        $('#editPost').submit((e)=>{
          

            let data = $('#editForm').serialize();
            e.preventDefault();
            $.ajax({
               method: 'post',
               url: '/update',
               data: data 
            })
                .then( res => {
                    console.log(res);
                })
                .catch( err => {
                    console.log(err);
                });

            let panelID = '#post_' + postID.value;
            
            let date = new Date();
            let dateFormat = 
                date.getFullYear() + '-' +
                (date.getMonth() + 1) + '-' +
                date.getDate() + ' ' +
                date.getHours() + ':' +
                date.getMinutes() + ':' +
                date.getSeconds()

            $(panelID + ' .panel-heading b').text(editTitle.value);
            $(panelID + ' .panel-heading span').text(dateFormat);
            $(panelID + ' .panel-body').text(editContent.value);

            $('#editPost').modal('toggle');
        });

        $('.panel-body, .panel-footer').toggle();

        function showPost(card) {
            $('#' + card.id + ' .panel-body').toggle('fast');
            $('#' + card.id + ' .panel-footer').toggle('fast');
        }

        function editPost(id){

            let content = $('#post_' + id + ' .panel-body').text();
            let title = $('#post_' + id + ' .panel-heading b').text();

            $('#editTitle').val(title);
            $('#editContent').val(content);
            $('#postID').val(id);

            $('#editPost').modal();
        }

        function closeLoginAllert(option = ''){
            $('#loginSuccess').hide(option);
            $('#loginFail').hide(option);
        }

        function deletePost(id){

            let postID = "#post_" + id;
            let data = $('#delete_' + id).serialize();

            $(postID).fadeOut('slow');
            

            $.ajax({
                method: 'DELETE',
                url: '/post/' + id,
                data: data
            });
        }

    </script>
</body>

</html>