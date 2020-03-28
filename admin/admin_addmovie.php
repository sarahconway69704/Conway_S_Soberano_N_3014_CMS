<?php
require_once '../load.php';
confirm_logged_in();

//TODO: 15 mins - 20 mins
//1. Refere how we build the add user page
//2. Check the Database and find out how the form looks like
//3. Build the form

//TODO: 15 mins - 20 mins
//Figure out how do we pull the genres from tbl_genre and populate in the following <select> element

//TODO: 5 ~ 10 mins
// Google how to upload file through PHP???
$category_table = 'tbl_category';
$categories      = getAll($category_table);

if (isset($_POST['submit'])) {
    $product = array(
        'product_img'   => $_FILES['img'],
        'product_name'   => trim($_POST['name']),
        'product_description'    => trim($_POST['description']),
    );

    $result  = addProduct($product);
    $message = $result;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product</title>
</head>
<body>
    <?php echo !empty($message) ? $message : ''; ?>
    <form action="admin_addmovie.php" method="post" enctype="multipart/form-data">
        <label>Product Image:</label><br>
        <input type="file" name="img" value=""><br><br>

        <label>Product Name:</label><br>
        <input type="text" name="name" value=""><br><br>

        <label>Product Description:</label><br>
        <input type="text" name="description" value=""><br><br>


        <label>Product Category:</label><br>
        <select name="genList">
            <option>Please select a product category..</option>
            <?php while ($row = $categories->fetch(PDO::FETCH_ASSOC)): ?>
                <option value="<?php echo $row['category_id'] ?>"><?php echo $row['category_name']; ?></option>
            <?php endwhile;?>
        </select>
        <br><br>
        <button type="submit" name="submit">Add Product</button>
    </form>
</body>
</html>