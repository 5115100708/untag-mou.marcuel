<div class="table-responsive">
<div class="pull-right">
	<a href="<?php echo site_url('moua/add'); ?>" class="btn btn-success" style="margin-left: 10px;">Add</a> 
</div>
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
	<thead>    
		<tr>
			<th>MoU/MoA Code</th>
			<th>MoU/MoA</th>
			<th>Country</th>
			<th>Partner Institution</th>
			<th>Contact Person</th>
			<th>Points of Cooperation</th>
			<th>Actions</th>
	    </tr>
	</thead>
	<tfoot>
		<tr>
			<th>MoU/MoA Code</th>
			<th>MoU/MoA</th>
			<th>Country</th>
			<th>Partner Institution</th>
			<th>Contact Person</th>
			<th>Points of Cooperation</th>
			<th>Actions</th>
	    </tr>		
	</tfoot>
	<tbody>
	<?php foreach($m_moua as $m){ ?>
	<tr>
		<td><?php echo $m['m_moua_id']; ?></td>
		<td><?php echo $m['m_moua_type']; ?></td>
		<td><?php echo $m['m_pla_id']; ?></td>
		<td><?php echo $m['m_par_id']; ?></td>
		<td><?php echo $m['m_con_id']; ?></td>
		<td><?php echo $m['m_mut_id']; ?></td>
		<td>
	        <a href="<?php echo site_url('moua/edit/'.$m['m_moua_id']); ?>" class="btn btn-info btn-xs">Edit</a> 
	        <a href="<?php echo site_url('moua/remove/'.$m['m_moua_id']); ?>" class="btn btn-danger btn-xs">Delete</a>
	    </td>
	</tr>
	<?php } ?>
	</tbody>
</table>
</div>
