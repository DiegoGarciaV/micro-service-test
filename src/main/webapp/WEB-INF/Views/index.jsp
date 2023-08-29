<!DOCTYPE html>
<html lang="es" ng-app="usersCrud">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>REST users CRUD service</title>

    <link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.css">

    <script type="text/javascript" src="js/tools/jquery-3.6.0.js"></script>
    <script type="text/javascript" src="js/tools/angular.js"></script>
    <script type="text/javascript" src="js/bootstrap/bootstrap.js"></script>

    <script type="text/javascript" src="js/index.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
    <link rel="stylesheet" href="css/index.css" type="text/css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Montserrat&family=Oswald:wght@300&family=Quicksand&display=swap"
        rel="stylesheet">
</head>

<body ng-controller="usersCrudController">
    <h1>Users CRUD</h1>
    <div class="container">
        <div class="row justify-around">
            <div class="col col-12 col-md-3">
                <div class="controls-section">
                    <h2 ng-click="startShowing()">Show all users</h2>
                    
                </div>
                <div class="controls-section">
                    <h2  data-bs-toggle="collapse" href="#filterId">Find User</h2>
                    <form class="collapse" id="filterId">
                        <div class="mb-3">
                            <label for="idUser" class="form-label">Id User</label>
                            <input type="text" class="form-control" id="idUser" ng-model="filterUser" ng-change="showUserById()">
                        </div>  
                    </form>   
                </div>
                <div class="controls-section">
                    <h2 data-bs-toggle="collapse" href="#newForm">Add User</h2>
                    <form form class="collapse" id="newForm">
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="firstName" ng-model="newUser.firstName">
                        </div>

                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="lastName" ng-model="newUser.lastName">
                        </div>

                        <div class="mb-3">
                            <label for="age" class="form-label">Age</label>
                            <input type="number" class="form-control" id="age" ng-model="newUser.age">
                        </div>

                        <div class="mb-3">
                            <label for="mail" class="form-label">Email</label>
                            <input type="email" class="form-control" id="mail" ng-model="newUser.email">
                        </div>

                        <button type="submit" class="btn btn-success" ng-click="addUser()">Add</button>      
                    </form>

                </div>
                <div class="controls-section">
                    <h2  data-bs-toggle="collapse" href="#updForm">Update User</h2>
                    <form class="collapse" id="updForm">
                        <div class="mb-3">
                            <label for="updIdUser" class="form-label">Id User</label>
                            <input type="text" class="form-control" id="updIdUser" ng-model="updUserId" ng-change="setCurrentUserData()">
                        </div>
                        <div class="mb-3">
                            <label for="updFirstName" class="form-label">First Name</label>
                            <input type="text" class="form-control" id="updFirstName" ng-model="updUser.firstName">
                        </div>

                        <div class="mb-3">
                            <label for="updLastName" class="form-label">Last Name</label>
                            <input type="text" class="form-control" id="updLastName" ng-model="updUser.lastName">
                        </div>

                        <div class="mb-3">
                            <label for="updAge" class="form-label">Age</label>
                            <input type="number" class="form-control" id="updAge" ng-model="updUser.age">
                        </div>

                        <div class="mb-3">
                            <label for="updMail" class="form-label">Email</label>
                            <input type="email" class="form-control" id="updMail" ng-model="updUser.email">
                        </div>

                        <button type="submit" class="btn btn-primary" ng-click="updateUser()">Update</button>      
                    </form>
                </div>
                <div class="controls-section">
                    <h2  data-bs-toggle="collapse" href="#delForm">Delete User</h2>
                    <form class="collapse" id="delForm">
                        <div class="mb-3">
                            <label for="delIdUser" class="form-label">Id User</label>
                            <input type="text" class="form-control" id="delIdUser" ng-model="delUser">
                        </div>
                        <button type="submit" class="btn btn-danger" ng-click="deleteUser()">Delete</button>      
                </div>
            </div>
            <div class="col col-12 col-md-8">
                <table class="table" aria-describedby="Users table">
                    <thead>
                        <tr>
                            <th>IdUser</th>
                            <th>Firts name</th>
                            <th>Last name</th>
                            <th>Age</th>
                            <th>Mail Address</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr ng-repeat="user in users">
                            <td>{{user.idUser}}</td>
                            <td>{{user.firstName}}</td>
                            <td>{{user.lastName}}</td>
                            <td>{{user.age}}</td>
                            <td>{{user.email}}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            
        </div>
    </div>
</body>

</html>