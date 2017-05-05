<?php
$user_id = 1;
$currency_pref = get_user_pref($user_id);
get_prices($currency_pref);


//Functions
function get_user_pref ($user_id) {
  $result = run_query("SELECT pref FROM currency_pref where user_id=$user_id");
  $row = $result->fetch_assoc();
  return $row['pref'];
}

function get_prices ($currency_pref) {
  $result = run_query("SELECT product_id, $currency_pref FROM products;");
  if ($result->num_rows > 0) {
      while($row = $result->fetch_assoc()) {
          $the_price = format_the_price($currency_pref, $row[$currency_pref]);
          echo "id: " . $row["product_id"]. " - Price: " . $the_price . "<br>";
      }
  } else {
      echo "0 results";
  }
}

function format_the_price ($currency_pref, $price) {
  if ($currency_pref == "price_sek"){
    $result = number_format($price,2,","," ");
  } elseif ($currency_pref == "price_dkk"){
    $result = number_format($price,2,",",".");
  } elseif ($currency_pref == "price_usd"){
    $result = number_format($price,2,",",".");
  } elseif ($currency_pref == "price_eur"){
    $result = number_format($price,2,",",".");
  }
  return $result;
}

function run_query ($sql) {
  $servername = "localhost";
  $username = "root";
  $password = "root";
  $dbname = "test";

  $conn = new mysqli($servername, $username, $password, $dbname);

  if ($conn->connect_error) {
      die("Connection failed: " . $conn->connect_error);
  }

  $result = $conn->query($sql);
  return $result;
  $conn->close();
}

?>
