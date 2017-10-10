<?php 

namespace App\Transformer;

class MenuTransformer extends Transformer{
	
		public function transform($menu){
		
		
			
			return [
				'id' => $menu['id'],
				'title' => $menu['title'],
				
			];
		
	}

	
}