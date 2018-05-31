<div class="table-responsive">
<div class="pull-right">
	<a href="<?php echo site_url('place/add'); ?>" class="btn btn-success" style="margin-left: 10px;">Add</a> 
</div>

<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
<thead>
    <tr>
		<th>Country Code</th>
		<th>Country Name</th>
		<th>State</th>
		<th>City</th>
		<th>Actions</th>
    </tr>
</thead>
<tfoot>
    <tr>
		<th>Country Code</th>
		<th>Country Name</th>
		<th>State</th>
		<th>City</th>
		<th>Actions</th>
    </tr>	
</tfoot>
<tbody>
	<?php foreach($m_place as $m){ ?>
    <tr>
		<td><?php echo $m['m_pla_id']; ?></td>
		<td><?php echo $m['m_pla_name']; ?></td>
		<td><?php echo $m['sta_id']; ?></td>
		<td><?php echo $m['cit_id']; ?></td>
		<td>
            <a href="<?php echo site_url('m_place/edit/'.$m['m_pla_id']); ?>" class="btn btn-info btn-xs">Edit</a> 
            <a href="<?php echo site_url('m_place/remove/'.$m['m_pla_id']); ?>" class="btn btn-danger btn-xs">Delete</a>
        </td>
    </tr>
	<?php } ?>	
</tbody>
</table>
</div>

