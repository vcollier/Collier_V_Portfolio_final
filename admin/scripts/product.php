<?php

function getAllProjects(){
    $pdo = Database::getInstance()->getConnection();

    $get_project_query = 'SELECT * FROM tbl_projects';
    $projects = $pdo->query($get_project_query);

    if($projects) {
        return $projects;
    }else{
        return false;
    }
}

function getOneProject($id){
    $pdo = Database::getInstance()->getConnection();
    //TODO: execute the proper SQL query to fetch the user data
    $get_project_query = 'SELECT * FROM tbl_projects WHERE project_id = :id';
    $get_project_set = $pdo->prepare($get_project_query);
    $get_project_result = $get_project_set->execute(
        array(
            ':id' =>$id
        )
    );
        //TODO: if the execution is successful, return the user data
        // Otherwise, return an error message
    if($get_project_result){
        return $get_project_set;
    }else{
        return 'There was a problem accessing the project';
    }
}