<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>CSO | Activity List</title>

    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="viewport" content="width=device-width" />

    <!-- Bootstrap core CSS     -->
    <link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Bootstrap-Table CSS -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap-table.min.css">

    <!--  Material Dashboard CSS    -->
    <link href="<?php echo base_url(); ?>assets/css/material-dashboard.css" rel="stylesheet" />


    <!-- Font Awesome :-) -->
    <link href="<?php echo base_url(); ?>assets/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/cso_table.css">

    <link href="http://fonts.googleapis.com/css?family=Roboto:400,700,300|Material+Icons" rel="stylesheet" type="text/css">
    <link rel="icon" type="image/png" sizes="96x96" href="<?php echo base_url(); ?>assets/img/icon/favicon-96x96.png">
  </head>

  <body>
    <div class="wrapper">
      <!-- The Sidebar  -->
      <div class="sidebar" data-color="green" data-image="">

        <!-- LOGO Image and Name -->
        <div class="logo text-center">
          <img src="<?php echo base_url(); ?>assets/img/cso_logo.png" alt="" width="150px" class=" text-center">
          <a href="#" class="simple-text logo-name">
  					CSO
  				</a>
        </div>
        <!-- Sidebar Navigation! -->
        <div class="sidebar-wrapper">
          <ul class="nav">
            <li>
              <a href="<?php echo site_url('admin/create-activity'); ?>">
                <i class="fa fa-file-text"></i>
                <p>New Activity</p>
              </a>
            </li>
            <li>
              <a href="<?php echo site_url('admin/activity-list'); ?>">
                <i class="fa fa-list"></i>
                <p>CSO Activities</p>
              </a>
            </li>
            <?php if($this->session->userdata('acronym') == 'CSO-E'): ?>
              <li class="divider"></li>
              <li>
                <a href="<?php echo site_url('admin/new-billing'); ?>">
                  <i class="fa fa-file-text"></i>
                  <p>New Billing Statement</p>
                </a>
              </li>
              <li>
                <a href="<?php echo site_url('admin/billing-list'); ?>">
                  <i class="fa fa-list"></i>
                  <p>All Billing Statements</p>
                </a>
              </li>
            <?php endif ?>
            <li class="divider"></li>
            <li class="active">
              <a href="<?php echo site_url('admin/org-activity-list'); ?>">
                <i class="fa fa-list"></i>
                <p>ORG Activities</p>
              </a>
            </li>
            <li>
              <a href="<?php echo site_url('admin/archive-list'); ?>">
                <i class="fa fa-archive"></i>
                <p>Approved</p>
              </a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="<?php echo site_url('admin/org-list'); ?>">
                <i class="fa fa-users"></i>
                <p>Organizations</p>
              </a>
            </li>
          </ul>
        </div>

      </div>

      <!-- The Main Panel -->
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
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle btn btn-white" data-toggle="dropdown">
                    <i class="fa fa-bell"></i>
                    <?php if($notifCount != 0): ?>
                        <span class='notification'><?= $notifCount ?></span>;
                    <?php endif; ?>
                    <p class="hidden-lg hidden-md">Notifications</p>
                  </a>
                  <ul class="dropdown-menu">
                    <?php # This block uses HEREDOC to print out, check PHP's HEREDOC documentation.
                    if(!empty($notifList)){
                      $type = $this->session->userdata('acronym');

                      if($type == 'CSO'){
                        foreach($notifList as $row) {

                          $timestamp = date("M d, Y g:i A", strtotime($row['timedate']));
                          $notifText = "An Org submmited a Cash Advance or Direct Payments";

                          echo <<< EOT
                          <li id={$row['notifID']}>
                          <a href="#"><strong>{$notifText}</strong> - {$timestamp}</a>
                          </li>
EOT;
                        }

                      }elseif ($type == 'CSO-E') {
                        foreach($notifList as $row) {

                          $timestamp = date("M d, Y g:i A", strtotime($row['timedate']));
                          $notifText = "CSO Approved an Activity";

                          echo <<< EOT
                          <li id={$row['notifID']}>
                          <a href="#"><strong>{$notifText}</strong> - {$timestamp}</a>
                          </li>
EOT;
                        }
                      }
                    }else {
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
                <a href="#" class="btn btn-white dropdown-toggle sort-toggle" data-toggle="dropdown" id="sortFieldTxt" >
                  Date
                </a>
                <ul class="dropdown-menu">
                  <li><a href="#" class="sortFieldBtn" data-field="list-head">ORG</a></li>
                  <li><a href="#" class="sortFieldBtn" data-field="list-prs">PRS</a></li>
                  <li><a href="#" class="sortFieldBtn" data-field="list-body">Title</a></li>
                  <li><a href="#" class="sortFieldBtn" data-field="list-date">Date</a></li>
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
                  <th data-field="list-head" data-align="left" data-sortable="true"></th>
                  <th data-field="list-prs" data-sortable="true"></th>
                  <th data-field="list-body" data-sortable="true"></th>
                  <th data-field="list-date" data-align="right" data-sortable="true"></th>
                  <th data-field="list-status" data-align="center"></th>
                </tr>
              </thead>
              <tbody>
                <?php # This block uses HEREDOC to print out, check PHP's HEREDOC documentation.

                  foreach($activityList as $row) {
                    $letter = substr($row['acronym'], 0, 1);
                    $buttonType = "warning";
                    if($row['status'] == "Pending" ) {
                      $buttonType = "warning";
                    }
                    elseif($row['status'] == "Declined") {
                      $buttonType = "danger";
                    }
                    elseif($row['status'] == "Approved") {
                      $buttonType = "success";
                    }

                    echo <<< EOT

                    <tr id={$row['activityID']}>
                      <td class="list-head">
                          <div class="logo-circle hidden-sm hidden-xs">{$letter}</div>
                          <div class="org-acro">{$row['acronym']}</div>
                      </td>
                      <td class="list-prs">
                        <span style="font-style: italic">PRS: </span>
                        <span style="font-weight: bold">{$row['PRSno']}</span>
                      </td>
                      <td class="list-body">
                        <span class="list-title">{$row['title']}</span>
                        <span class="list-desc">{$row['description']}</span>
                      </td>
                      <td class="list-date">
                        {$row['dateSubmitted']}
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
      </div>

    </div>

    <!-- Sort Inputs -->
    <input type="text" value="desc" id="sortOrder" style="display: none">
    <input type="text" value="list-date" id="sortField" style="display: none">
  </body>
  <!--   Core JS Files   -->
  <script src="<?php echo base_url(); ?>assets/js/jquery.js" type="text/javascript"></script>
  <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="<?php echo base_url(); ?>assets/js/bootstrap-table.min.js" type="text/javascript"></script>
  <script src="<?php echo base_url(); ?>assets/js/material.min.js" type="text/javascript"></script>

  <!--  Charts Plugin -->
  <script src="<?php echo base_url(); ?>assets/js/chartist.min.js"></script>

  <!--  Notifications Plugin    -->
  <script src="<?php echo base_url(); ?>assets/js/bootstrap-notify.js"></script>

  <!-- Material Dashboard javascript methods -->
  <script src="<?php echo base_url(); ?>assets/js/material-dashboard.js"></script>

  <!-- Moment JS -->
  <script src="<?php echo base_url(); ?>assets/js/moment.js"></script>

  <script src="<?php echo base_url(); ?>assets/js/cso_table.js"></script>

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
      }
    });

    $('#activityTable').on('click-row.bs.table', function (row, $element, field) {
			pageID = $(field).attr('id');
      initials = $(field).find('.org-acro').text().trim();
      console.log(pageID);
      console.log(initials);
      window.location.href = "<?= site_url('admin/activity-page/')  ?>" + initials + "/" + pageID;

		});
  </script>

  <script type="text/javascript">

		<?php
			$flash = $this->session->flashdata('remarkActivity');
			if($flash == 'true'):
		?>
		$.notify({
			icon: "check",
			message: "Remark Activity - Successfully Remarked the activity",
		  },{
				type: 'success',
				timer: 1000,
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
			icon: "warning",
			message: "Remark Activity - Error in issuing a remark.",
		  },{
				type: 'danger',
				timer: 1000,
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
    <?php
      $flash = $this->session->flashdata('updateActivity');
      if($flash == 'true'):
    ?>
      $.notify({
        icon: "check",
        message: "Update Activity - Successfully updated an Activity",
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
        icon: "warning",
        message: "Update Activity - Error in updating an activity",
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

</html>
