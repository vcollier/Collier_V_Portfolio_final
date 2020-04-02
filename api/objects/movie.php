<?php
class Movie
{

    private $conn;

    // Note: update table names, column names in here
    public $product_table               = 'tbl_product';
    public $category_table               = 'tbl_category';
    public $product_category_linking_table = 'tbl_category_product';

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getProduct()
    {
        //TODO:write the SQL query that returns all movies from the tbl_movies table
        // $query = 'SELECT * FROM '.$this->movies_table;


        //TODO:write the SQL query that returns all movies with its genre
        $query = 'SELECT m.*, GROUP_CONCAT(g.category_name) as category_name FROM ' . $this->product_table . ' m';
        $query .= ' LEFT JOIN ' . $this->product_category_linking_table . ' link ON link.product_id = m.product_id';
        $query .= ' LEFT JOIN ' . $this->category_table . ' g ON link.category_id = g.category_id ';
        $query .= ' GROUP BY m.product_id';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    public function getProductByCategory($category){
        $query = 'SELECT m.*, GROUP_CONCAT(g.category_name) as category_name FROM ' . $this->product_table . ' m';
        $query .= ' LEFT JOIN ' . $this->product_category_linking_table . ' link ON link.product_id = m.product_id';
        $query .= ' LEFT JOIN ' . $this->category_table . ' g ON link.category_id = g.category_id ';
        $query .= ' GROUP BY m.product_id';
        $query .= ' HAVING category_name LIKE "%'.$category.'%"';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }

    public function getProductByID($id)
    {
        $query = 'SELECT m.*, GROUP_CONCAT(g.category_name) as category_name FROM ' . $this->product_table . ' m';
        $query .= ' LEFT JOIN ' . $this->product_category_linking_table . ' link ON link.product_id = m.product_id';
        $query .= ' LEFT JOIN ' . $this->category_table . ' g ON link.category_id = g.category_id ';
        $query .= ' WHERE m.product_id=' . $id;
        $query .= ' GROUP BY m.product_id';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // execute query
        $stmt->execute();

        return $stmt;
    }
}
