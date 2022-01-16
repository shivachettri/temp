<?php include_once 'db.php'; ?>

<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<link href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css" rel="stylesheet">
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>

<div class="container mt-5">
  <h3>Demonstration</h3>

  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="GET" class="mt-5">
    <div class="row">
      <div class="col-sm">
        <label>From Date</label>
        <input type="date" name="from" class="form-control" required />
      </div>
      <div class="col-sm">
        <label>To Date</label>
        <input type="date" name="to" class="form-control" required />
      </div>
      <div class="col-sm">
        <label>District</label>
        <select class="form-control" name="district">
          <option value="">All</option>
          <option value="East Khasi Hills">East Khasi Hills</option>
          <option value="West Khasi Hills">West Khasi Hills</option>
          <option value="South West Khasi Hills">South West Khasi Hills</option>
          <option value="Ri-Bhoi">Ri-Bhoi</option>
        </select>
      </div>
      <div class="col-sm">
        <label>Form</label>
        <select class="form-control" name="form">
          <option value="">All</option>
          <option value="1.1">1.1</option>
          <option value="1.2">1.2</option>
          <option value="1.3">1.3</option>
        </select>
      </div>
      <div class="col-sm text-right mt-4">
        <button class="btn btn-primary" type="submit">Retrieve Data</button>
      </div>
    </div>
  </form>


  <?php
  if (isset($_GET['from']) && isset($_GET['to']) && isset($_GET['district']) && isset($_GET['form'])) {
    if ($_GET['form'] == "")
      $form = "";
    else
      $form = "AND form = '" . $_GET['form'] . "'";

    if ($_GET['district'] == "")
      $district = "";
    else
      $district = "AND district = '" . $_GET['district'] . "'";

    $sql = "
    SELECT * 
      FROM sms 
      WHERE DATE(creation_time) >= DATE('" . $_GET['from'] . "')
      AND DATE(creation_time) <= DATE('" . $_GET['to'] . "')
      " . $district . "
      " . $form . "
      ORDER BY id DESC
  ";
    $result = $conn->query($sql);
  ?>
    <div class="card">
      <div class="card-body">
        <table id="myTable" class="mt-5 table table-bordered table-responsive">
          <thead>
            <tr>
              <th>District</th>
              <th>Form</th>
              <th>Indicator</th>
              <th>Numerator</th>
              <th>Demonimator</th>
              <th>Creation Time</th>
            </tr>
          </thead>
          <tbody>
            <?php
            if ($result->num_rows > 0) {
              $indicator = $numerator = $denominator = "";
              while ($row = $result->fetch_assoc()) {
                if ($row['form'] == "1.1") {
                  $indicator = "Percentage of pregnant women receiving 4 or more antenal care check-ups to the no. of pregnant woman registered for: ";
                  $numerator = "No. of pregnant women receiving 4 or more antenatal care check: ";
                  $denominator = "Total No. of pregnant women registered for antenatal care check: ";
                }
                if ($row['form'] == "1.2") {
                  $indicator = "Precentage of ANC registered within 1st trimester against total ANC registration: ";
                  $numerator = "Number of ANCs registered within 1st trimester: ";
                  $denominator = "Total No. of pregnant women registered for antenatal care: ";
                }
                if ($row['form'] == "1.3") {
                  $indicator = "Precentage of pregnant women (PWs) registered for ANCs to total estimated pregnancies: ";
                  $numerator = "Total No. of pregnant women registered for antenatal care: ";
                  $denominator = "Estimated pregnancies: ";
                }
            ?>
                <tr>
                  <td><?php echo $row["district"]; ?></td>
                  <td><?php echo $row["form"]; ?></td>
                  <td><?php echo $indicator . " <strong>" . $row["indicator"] . "</strong>"; ?></td>
                  <td><?php echo $numerator . "<strong> " . $row["numerator"] . "</strong>"; ?></td>
                  <td><?php echo $denominator . " <strong>" . $row["denominator"] . "</strong>"; ?></td>
                  <td><?php echo $row["creation_time"]; ?></td>
                </tr>
          <?php
              }
            } else {
              echo "0 results";
            }
            $conn->close();
          }
          ?>
          </tbody>
          <thead>
            <tr>
              <th>District</th>
              <th>Form</th>
              <th>Indicator</th>
              <th>Numerator</th>
              <th>Demonimator</th>
              <th>Creation Time</th>
            </tr>
          </thead>
        </table>
      </div>
    </div>
    <script>
      $(document).ready(function() {
        $('#myTable').DataTable();
      });
    </script>
</div>