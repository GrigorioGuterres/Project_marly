<?php
/**
 * Menu Items
 * All Project Menu
 * @category  Menu List
 */

class Menu{
	
	
			public static $navbarsideleft = array(
		array(
			'path' => 'home', 
			'label' => 'DASHBOARD', 
			'icon' => '<i class="material-icons ">account_balance</i>'
		),
		
		array(
			'path' => 'menu2', 
			'label' => 'MASTER INPUT', 
			'icon' => '<i class="material-icons ">add_box</i>','submenu' => array(
		array(
			'path' => 'tb_visitatnes', 
			'label' => 'Dadus Veteranus', 
			'icon' => '<i class="material-icons ">account_circle</i>'
		),
		
		array(
			'path' => 'tb_idosos', 
			'label' => 'Dadus Idosos', 
			'icon' => '<i class="material-icons ">account_circle</i>'
		),
		
		array(
			'path' => 'tb_funsionario', 
			'label' => 'Dadus Funsionariu', 
			'icon' => '<i class="material-icons ">accessibility</i>'
		),
		
		array(
			'path' => 'tb_estudante', 
			'label' => 'Dadus Estudante', 
			'icon' => '<i class="material-icons ">accessibility</i>'
		)
	)
		),
		
		array(
			'path' => 'menu3', 
			'label' => 'PROSSESU DADUS', 
			'icon' => '<i class="material-icons ">adjust</i>','submenu' => array(
		array(
			'path' => 'tb_prosses', 
			'label' => 'Prosesu Dadus ', 
			'icon' => '<i class="material-icons ">account_circle</i>'
		)
	)
		),
		
		array(
			'path' => 'menu4', 
			'label' => 'OUTPUT', 
			'icon' => '<i class="material-icons ">insert_drive_file</i>','submenu' => array(
		array(
			'path' => 're_geral', 
			'label' => 'Relatori Geral', 
			'icon' => '<i class="material-icons ">add_to_photos</i>'
		),
		
		array(
			'path' => 're_visitantes', 
			'label' => 'Relatorio visitantes', 
			'icon' => '<i class="material-icons ">attach_file</i>'
		),
		
		array(
			'path' => 're_estudante', 
			'label' => 'Relatori Estudante', 
			'icon' => '<i class="material-icons ">attach_file</i>'
		)
	)
		)
	);
		
	
	
}