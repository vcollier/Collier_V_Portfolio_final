<?php

function getAll($tbl){
    $pdo = Database::getInstance()->getConnection();
    $queryAll = 'SELECT * FROM '.$tbl;
    $results = $pdo->query($queryAll);

    if($results){
        return $results;
    }else{
        return 'There was a problem acessing this info';
    }
}

function getSingleProduct($tbl, $col, $id){
    //TODO: finish the function based on getAll, this time only return
    //one movie's fields
    
    $pdo = Database::getInstance()->getConnection();
    //$query = 'SELECT * FROM '.$tbl.' WHERE '$col' = .$id;
    $query = "SELECT * FROM $tbl WHERE $col = $id";
    $results = $pdo->query($query);

    if($results){
        return $results;
    }else{
        return 'There was a problem acessing this info';
    }

}

function getProductsByFilter($args){
    $pdo = Database::getInstance()->getConnection();

    $filterQuery = 'SELECT * FROM '.$args['tbl'].' AS t, '.$args['tbl2'].' AS t2, '.$args['tbl3'].' AS t3';
    $filterQuery .= ' WHERE t.'.$args['col'].' = t3.'.$args['col'];
    $filterQuery .= ' AND t2.'.$args['col2'].' = t3.'.$args['col2'];
    $filterQuery .= ' AND t2.'.$args['col3'].' = "'.$args['filter'].'"';

    $results = $pdo->query($filterQuery);
    // echo $filterQuery;
    // exit;

    if($results){
        return $results;
    }else{
        return 'There was a problem acessing this info';
    }
}

function getSearch($search){
    include 'connect.php';

    //create query using placeholders
    $get_search_query = "SELECT * FROM tbl_product WHERE product_name LIKE :search";

    //prepare and exicute query using the variables in the lower array
    $get_search_set = $pdo->prepare($get_search_query);
    $result = $get_search_set->execute(
        array(
            ':search' => "%".$search."%"
            )
    );
    
    //if some thing was created/updated.. then:
    if($result){ 
        //send the result back  
        return $get_search_set;
    }else{
        //there was an error
        $message = 'something went wrong';
        return $message;
    }
}
