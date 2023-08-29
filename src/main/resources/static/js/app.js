let app = angular.module("usersCrud", []);

app.controller("usersCrudController", function ($scope) {

    const view = $scope;

    view.users = [];

    view.filterUser = 0;

    view.newUser = {

        firstName: "",
        lastName: "",
        age: 0,
        email: "@gmail.com"
    }

    view.updUserId = 0;

    view.updUser = {

        firstName: "",
        lastName: "",
        age: 0,
        email: ""
    }

    view.delUser = 0;

    let showInterval = 0;


    view.showUsers = () => {
        $.ajax({
            url: "/all",
            method: "GET",
            dataType: "json",
            contentType:    "application/json",   
            success:        (result)  => {
                view.users = result;
                view.$apply();
            }
        });
    }

    view.showUserById = () => {

        clearInterval(showInterval);
        $.ajax({
            url: `/id/${view.filterUser}` ,
            method: "GET",
            dataType: "json",
            contentType:    "application/json",   
            success:        (result)  => {
                view.users = [result];
                view.$apply();
            }
        });
    }

    view.addUser = () => {
        $.ajax({
            url: "/save",
            method: "POST",
            dataType: "json",
            contentType: "application/json",   
            data: JSON.stringify(view.newUser),
            success:        (result)  => {
                
            }
        });
    }

    view.updateUser = () => {
        $.ajax({
            url: `/update/${view.updUserId}`,
            method: "POST",
            dataType: "json",
            contentType: "application/json",   
            data: JSON.stringify(view.updUser),
            success:        (result)  => {
                
            }
        });
    }

    view.deleteUser = () => {
        $.ajax({
            url: `/delete/${view.delUser}`,
            method: "POST",
            dataType: "json",
            contentType: "application/json",
            success:        (result)  => {
                
            }
        });
    }

    view.setCurrentUserData = () => {

        $.ajax({
            url: `/id/${view.updUserId}` ,
            method: "GET",
            dataType: "json",
            contentType:    "application/json",   
            success:        (result)  => {
                view.updUser = result;
                view.$apply();
            }
        });
    }

    view.showInterval = 0;
    view.startShowing = () =>
    {
        view.showUsers();
        showInterval = setInterval(view.showUsers,1000);
    }

    view.startShowing();
    
    
    

});