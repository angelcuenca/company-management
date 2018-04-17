'use strict';

function login(){
    hello("google").login(function(e){
        log("login",e);
    });
}

function getUrlParam(sParam){
    console.log(((window.location.href)));
    if( ((window.location.href).search(sParam)) != -1){
        return true;
    }
}

var logout = getUrlParam("logout");
if(logout){
    hello("google").logout(function(){
        window.location = "/";
    });
}

hello.init( {
    google 	: "567947741943-b739f4oafrbvs65oph5muq335jqg2q1f.apps.googleusercontent.com"
},{
    redirect_uri:'callback',
    display:'popup',
    scope: 'email'
});

hello.on('auth.login', function(auth){
    // call user information, for the given network
    hello( auth.network ).api( '/me' ).then( function(r){
        // Inject it into the container
        window.location = "/signup?token=" + auth.authResponse.access_token + "&service=" + auth.network;
    });
});

$('#btn-login').on("click", function (e) {
    e.preventDefault();
    $(this).addClass('state-loading');
    var scope = $(this);
    setTimeout(function () {
        scope.removeClass('state-loading');
        scope.addClass('state-success');
        setTimeout(function () {
            scope.removeClass('state-success');
        }, 1000);
    }, 3000);
});