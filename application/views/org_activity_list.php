<!doctype html>
<html lang="en">

	<head>
		<meta charset="utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

		<title><?= $this->session->userdata('acronym') ?> | Activity List</title>

		<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
		<meta name="viewport" content="width=device-width" />

		<!-- Bootstrap core CSS     -->
		<link href="<?php echo base_url();?>assets/css/bootstrap.min.css" rel="stylesheet" />

		<!--  Material Dashboard CSS    -->
		<link href="<?php echo base_url();?>assets/css/material-dashboard.css" rel="stylesheet" />

    <!-- Bootstrap-Table CSS -->
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap-table.min.css">

		<!-- Datepicker CSS -->
		<link href="<?php echo base_url();?>assets/css/bootstrap-datepicker.css" rel="stylesheet" />

		<!-- Font Awesome :-) -->
    <link href="<?php echo base_url();?>assets/css/font-awesome.min.css" rel="stylesheet">
		<link rel="icon" type="image/png" sizes="96x96" href="<?php echo base_url(); ?>assets/img/icon/favicon-96x96.png">

		<link rel="stylesheet" href="<?php echo base_url();?>assets/css/cso_table.css">
		<link rel="stylesheet" href="<?php echo base_url();?>assets/css/cso_page.css">
		<style media="screen">
			.dos, .datePended{
				font-weight: bold;
				font-style: normal;
			}
			.list-process{
				font-weight: bold;
			}
			#sortFieldTxt{
				width: auto !important;
			}
			.navbar .dropdown-menu li a:hover{
			  background-color: #2196F3 !important;
			}

			.badge{
			  background-color: crimson !important;
			}
		</style>

		<!--     Fonts and icons     -->
		<link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons" rel="stylesheet" type="text/css">
	</head>

	<body>

		<div class="wrapper">
			<div class="sidebar" data-color="green" data-image="">

				<div class="logo text-center">
					<!-- Logo image test -->
					<img src="<?php echo base_url();?>assets/img/logos/<?= $this->session->userdata('acronym') ?>.png" alt="" width="150px" class=" text-center">
					<a href="#" class="simple-text">
					<?= $this->session->userdata('acronym') ?>
					</a>
				</div>

				<div class="sidebar-wrapper">
					<ul class="nav">
						<li>
							<a href="<?= site_url('org/new-activity')?>">
								<i class="fa fa-file-text"></i>
								<p>New Activity</p>
							</a>
						</li>
						<li class="active">
							<a href="<?= site_url('org/activity-list')?>">
								<i class="fa fa-list"></i>
								<p>View Activities</p>
							</a>
						</li>
						<li >
							<a href="<?= site_url('org/profile')?>">
								<i class="fa fa-users"></i>
								<p>Org Profile</p>
							</a>
						</li>
						<li >
							<a href="<?= site_url('org/billing-list')?>">
								<i class="fa fa-list"></i>
								<p>Billing Statements</p>
							</a>
						</li>
					</ul>
				</div>

			</div>

			<div class="main-panel">
				<!-- Main Navigation (Notification & Logout) -->
        <nav class="navbar navbar-transparent navbar-absolute">
          <div class="container-fluid">
            <!-- Navbar UX -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
            <!-- Navbar Title -->
						</button>
              <a class="navbar-brand nav-title" href="#">
                <i class="fa fa-list"></i> Activity List
              </a>
            </div>

            <div class="collapse navbar-collapse">
              <!-- Navbar Items (Right) -->
              <ul class="nav navbar-nav navbar-right">

                <!-- Notification -->
                <li class="dropdown org">
                  <a href="#" class="dropdown-toggle btn btn-white" data-toggle="dropdown">
                    <i class="fa fa-bell"></i>
										<?php if($notifCount != 0): ?>
                        <span class='notification'><?= $notifCount ?></span>
										<?php endif; ?>
                    <p class="hidden-lg hidden-md">Notifications</p>
                  </a>
                  <ul class="dropdown-menu notifications">
                    <?php # This block uses HEREDOC to print out, check PHP's HEREDOC documentation.
										if(!empty($notifList)){
											foreach($notifList as $row) {
												$badge = "";
												if($row['status'] == 'unseen'){
													$badge = '<span class="badge">New</span>';
												}
												$timestamp = date("M d, Y g:i A", strtotime($row['timedate']));

												if($row['notifType'] == 'org-billing create'){
													$notifID = $row['notifID'];
													$typeID = $row['typeID'];
													$notifText = 'New Billing Statement';
													$url = site_url("org/billing-page/$typeID");
													echo "<li id = '$notifID'><a href = '$url'><strong>$notifText</strong> - $timestamp $badge </a></li>";
												}
												elseif($row['notifType'] == 'org-activity remark'){
													$notifID = $row['notifID'];
													$typeID = $row['typeID'];
													$notifText = 'An activity has been remarked';
													$url = site_url("org/activity-page/$typeID");
													echo "<li id = '$notifID'><a href = '$url'><strong>$notifText</strong> - $timestamp $badge </a></li>";
												}
												elseif($row['notifType'] == 'org-activity approve'){
													$notifID = $row['notifID'];
													$typeID = $row['typeID'];
													$notifText = 'An activity has been approved';
													$url = site_url("org/activity-page/$typeID");
													echo "<li id = '$notifID'><a href = '$url'><strong>$notifText</strong> - $timestamp $badge </a></li>";
												}
												elseif ($row['notifType'] == 'org-activity decline') {
													$notifID = $row['notifID'];
													$typeID = $row['typeID'];
													$notifText = 'An activity has been declined';
													$url = site_url("org/activity-page/$typeID");
													echo "<li id = '$notifID'><a href = '$url'><strong>$notifText</strong> - $timestamp $badge </a></li>";
												}
											}
										} else {
											echo "<li><a>Empty</a></li>";
										}
                		?>

                  </ul>
                </li>

                <!-- Logout -->
                <li>
                  <a href="<?php echo site_url('logout');?>" class="btn btn-white">
                    Logout
                    <i class="fa fa-sign-out"></i>
                  </a>
                </li>

              </ul>
            </div>

          </div>
        </nav>

				<div class="content">
					<div class="container-fluid">
						<!-- Table Actions -->
            <div class="table-toolbar pull-right">
              <!-- Sort Dropdown -->
              <div class="dropdown" data-toggle="tooltip" data-placement="top" title="Sort by Field">
                <a href="#" class="btn btn-white dropdown-toggle sort-toggle" data-toggle="dropdown" id="sortFieldTxt">
                  Title
                </a>
                <ul class="dropdown-menu">
                  <li><a href="#" class="sortFieldBtn" data-field="list-title">Title</a></li>
                  <li><a href="#" class="sortFieldBtn" data-field="list-process">Process</a></li>
                  <li><a href="#" class="sortFieldBtn" data-field="list-dos">Date Submitted</a></li>
                  <li><a href="#" class="sortFieldBtn" data-field="list-datePended">Date Pended</a></li>
									<li><a href="#" class="sortFieldBtn" data-field="list-status">Status</a></li>
                </ul>
              </div>
							<!-- Sort Asc/Des -->
              <div class="sortAsc" data-toggle="tooltip" data-placement="top" title="Sort Up/Down">
                <button class="btn btn-white" id="sortOrderBtn">
                  <i class="fa fa-long-arrow-down" id="sortOrderIcon"></i>
                </button>
              </div>
            </div>
            <!-- Main Table -->
            <table class="table table-hover table-responsive"
            id="activityTable"
            data-toggle="table"
						data-show-header="false">
              <thead>
                <tr>
                  <th data-field="list-title" data-align="left" data-sortable="true">Title</th>
									<th data-field="list-process" data-align="left" data-sortable="true">Process</th>
                  <th data-field="list-dos" data-align="right" data-sortable="true">Date Submmited</th>
                  <th data-field="list-datePended" data-align="right" data-sortable="true">Date Pended</th>
                  <th data-field="list-status" data-align="center" data-sortable="true">Status</th>
                </tr>
              </thead>
              <tbody>

								<?php # This block uses HEREDOC to print out, check PHP's HEREDOC documentation.
                foreach($activityList as $row) {
                  if($row['status'] == "Pending") {
                    $buttonType = "warning";
                  }
                  elseif($row['status'] == "Declined") {
                    $buttonType = "danger";
                  }
									elseif($row['status'] == "Approved") {
										$buttonType = "success";
									}
                $dos = date("M d, Y g:i A", strtotime($row['dateSubmitted']));
                echo <<< EOT
                <tr id={$row['activityID']}>
                  <td class="">
                    <span class="list-title">{$row['title']}</span>
                    <span class="list-desc">{$row['description']}</span>
                  </td>
                  <td class="list-process">{$row['processType']}</td>
                  <td class="list-dos">
                    Date Submitted:
                    <span class="dos">{$dos}</span>
                  </td>
                  <td class="list-datePended">
                    Date Pended:
                    <span class="datePended">{$row['datePendedCSO']}</span>
                  </td>
                  <td class="list-status">
                    <span class="label label-$buttonType">{$row['status']}</span>
                  </td>
                </tr>

EOT;
};
                ?>

              </tbody>
            </table>
					</div>
				</div>
				<footer class="footer">
					<div class="container-fluid">
						<nav class="pull-left">
							<ul>
								<li>
									<a href="#">
                      View Activities
                    </a>
								</li>
							</ul>
						</nav>
						<p class="copyright pull-right">
							&copy;
							<script>
								document.write(new Date().getFullYear())
							</script> <a href="http://www.dlsucso.com">CSO</a> | Council of Student Organizations
						</p>
					</div>
				</footer>
			</div>

		</div>
		<!-- Sort Inputs -->
    <input type="text" value="desc" id="sortOrder" style="display: none">
    <input type="text" value="list-dos" id="sortField" style="display: none">
	</body>

	<!--   Core JS Files   -->
	<script src="<?php echo base_url();?>assets/js/jquery-3.1.0.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/js/bootstrap-datepicker.js"></script>
	<script src="<?php echo base_url();?>assets/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="<?php echo base_url();?>assets/js/bootstrap-table.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>assets/js/material.min.js" type="text/javascript"></script>

	<!--  Charts Plugin -->
	<script src="<?php echo base_url();?>assets/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="<?php echo base_url();?>assets/js/bootstrap-notify.js"></script>

	<!-- Material Dashboard javascript methods -->
	<script src="<?php echo base_url();?>assets/js/material-dashboard.js"></script>

	<!-- Moment JS -->
	<script src="<?php echo base_url();?>assets/js/moment.js"></script>
	<script src="<?php echo base_url();?>assets/js/org_table.js"></script>

	<script type="text/javascript">
		var notifIDs = new Array();
		$('.dropdown.org').click(function(event) {
			notifIDs = new Array();
			getAllNotificationIDs();

			$.ajax({
				url: "<?= site_url('clearNotification') ?>",
				type: 'POST',
				dataType: 'json',
				data: {
					notifIDs: notifIDs}
			})
			.done(function() {
				console.log("success");
			})
			.fail(function() {
				console.log("error");
			})
			.always(function() {
				console.log("complete");
			});

			$('.notification').remove();

		});


		function getAllNotificationIDs(){
			var p = $('.notifications li').length;
			$('.notifications li').each(function(index, el) {
				notifIDs.push($(this).attr('id'));
			});
		}
	</script>

  <script type="text/javascript">
    var $table = $('#activityTable');
    $table.bootstrapTable({
      pagination: true,
      onlyInfoPagination: false,
			search: true,
			toolbar: '.table-toolbar',
			toolbarAlign: 'right',
      pageSize: 12,
      formatShowingRows: function(pageFrom, pageTo, totalRows) {

      },
      formatRecordsPerPage: function(pageNumber) {

      },
      formatDetailPagination: function(totalRows) {
        return ;
      },
      onClickRow: function(row, $element){
      },
    });
  </script>
	<script type="text/javascript">

		<?php
			$flash = $this->session->flashdata('submitActivity');
			if($flash == 'true'):
		?>
		$.notify({
			icon: "check",
			message: "Create Activity - Successfully added a new Activity",
		},{
				type: 'success',
				timer: 4000,
				placement: {
						from: 'top',
						align: 'center'
				},
				allow_dismiss: true,
				newest_on_top: true,
				mouse_over: 'pause'
		});
		<?php elseif($flash == 'false'): ?>
		$.notify({
			icon: "check",
			message: "Create Activity - Error in creating a new activity",
		},{
				type: 'danger',
				timer: 4000,
				placement: {
						from: 'top',
						align: 'center'
				},
				allow_dismiss: true,
				newest_on_top: true,
				mouse_over: 'pause'
		});
		<?php endif; ?>
	</script>

	<script type="text/javascript">
		var pageID = '';
		$('#activityTable').on('click-row.bs.table', function (row, $element, field) {
			pageID = $(field).attr('id');
			window.location.href = "<?= site_url('org/activity-page/')  ?>" + pageID;
		});
	</script>


</html>
