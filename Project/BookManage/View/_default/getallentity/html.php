<?php 
$sum = array_pop($this->object);
reset($this->object);
?>
<table class ="table">
	<thead>
		<tr>
			<?php
			foreach ($this->object as $entity) {
					foreach ($entity as $key => $value) {
							echo '<th>'.Resource::getresource($key).'</th>';
					}
					break;		
			}; ?>
		</tr>
	</thead>
	<tbody>
			<?php
			foreach ($this->object as $entity) {
					echo '<tr>';
					foreach ($entity as $key => $value) {
						echo '<th>'.$value.'</th>';
					}
					echo '</tr>';
			} ?>
	</tbody>
</table>