'use strict';

var SurveyEngine = SurveyEngine || {};

SurveyEngine.login = {

    login: function(){
        hello("google").login(function(e){
            log("login",e);
        });
    },
    logout: function(){
        hello("google").logout(function(){
            window.location = "/index";
        });
    },
    verifySession: function () {
        var logout = SurveyEngine.commons.userInterface.getUrlParam("logout");
        if(logout){
            var session = SurveyEngine.login;
            session.logout();
        }
    },
    init: function() {
        hello.init( {
            google 	: "567947741943-b739f4oafrbvs65oph5muq335jqg2q1f.apps.googleusercontent.com"
        },{
            redirect_uri:'callback',
            display: 'popup',
            scope: 'email'
        });

        hello.on('auth.login', function(auth){
            // call user information, for the given network
            hello( auth.network ).api( '/me' ).then( function(r){
                // Inject it into the container
                window.location = "/signup?token=" + auth.authResponse.access_token + "&service=" + auth.network;
            });
        });

        SurveyEngine.login.login();
    }
};