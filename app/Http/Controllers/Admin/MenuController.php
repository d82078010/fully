<?php

namespace Fully\Http\Controllers\Admin;

use Fully\Http\Controllers\Controller;
use View;
use Validator;
use Redirect;
use Input;
use Fully\Models\Menu;
use URL;
use Exception;
use Response;
use Flash;
use Request;


use App\Transformer\MenuTransformer;

/**
 * Class MenuController.
 *
 * @author Sefa Karagöz <karagozsefa@gmail.com>
 */
class MenuController extends Controller
{
    protected $menu;
	
	protected $menuTransformer;
	
	

    public function __construct(Menu $menu,MenuTransformer $menuTransformer)
    {
		$this->menuTransformer = $menuTransformer;
        $this->menu = $menu;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        $items = $this->menu->orderBy('order', 'asc')->where('lang', getLang())->get();
        $menus = $this->menu->getMenuHTML($items);

        return view('backend.menu.index', compact('menus'));
    }

    /**
     * Show the form for creating a new resource.	
     *
     * @return Response
     */
    public function create()
    {
        $options = $this->menu->getMenuOptions();

		/*
		 *  增加 parent_id
		 */
		 
		$LangIds = $this->menu->getTheIdFromLang();
		
	
	
		
		//dd($LangIds->sort());
		//$parents = $this->menuTransformer->transformCollection($LangIds->toArray());
		
		//$arrays = [ 0 => '父级' ];
		
		
		$arrays = $this->menu->getMenuInfo($LangIds->sort());
		
		
		//dd($targetItems);
		
        return view('backend.menu.create', compact('options','arrays'));
    }
	
	
	private function tree($parents,$sign){
		
		foreach($parents as $parent){
			
			
			$array = [
			$parent['id'] => $sign.$parent['title']
			];
			
			if($this->menu->hasChildItems($parent['id'])){
				
				$cld = $this->menu->getChildItems($parent['id']);
				$this->menuTransformer->transformCollection($cld->toArray());
				
			}
			
			
			
			$arrays += $array;
						
		}
		
}
	

    /**
     * Store a newly created resource in storage.
     *
     * @return Response
     */
    public function store()
    {
        $formData = Input::all();

		
		
        if ($formData['type'] == 'module') {
            $option = $formData['option'];
            $this->menu->option = $option;
			$url = $this->menu->getUrl($option);
            $formData['url'] = $url;
        }

        $host = $_SERVER['SERVER_NAME'];
        $urlInfo = parse_url($formData['url']);
		
        $rules = array(
            'title' => 'required',
            'url' => 'required',
        );

        $validation = Validator::make($formData, $rules);

		
        if ($validation->fails()) {
            return langRedirectRoute('admin.menu.create')->withErrors($validation)->withInput();
        }

        $this->menu->fill($formData);
        $this->menu->order = $this->menu->getMaxOrder() + 1;

        if (isset($urlInfo['host'])) {
            $url = ($host == $urlInfo['host']) ? $urlInfo['path'] : $formData['url'];
        } else {
            $url = ($formData['type'] == 'module') ? $formData['url'] : 'http://'.$formData['url'];
        }

	//	dd($formData);
	
		$parent_id = $formData['parent_id']?$formData['parent_id']:0;
		$type = $formData['type']?$formData['type']:0;
		
		$this->menu->parent_id = $parent_id;
		$this->menu->type = $type;
        $this->menu->lang = getLang();
        $this->menu->url = $url;
        $this->menu->save();

        Flash::message('Menu was successfully added');

        return langRedirectRoute('admin.menu.index');
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        return view('menu.show');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $options = $this->menu->getMenuOptions();
        $menu = $this->menu->find($id);
		

		
		
		$LangIds = $this->menu->getTheIdFromLang();
		
		$arrays = $this->menu->getMenuInfo($LangIds->sort());
		
	

        return view('backend.menu.edit', compact('menu', 'options','arrays'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function update($id)
    {
        $formData = Input::all();

        if ($formData['type'] == 'module') {
            $option = $formData['option'];
            $this->menu->option = $option;
			$url = $this->menu->getUrl($option);
            $formData['url'] = $url;
        }

        $host = $_SERVER['SERVER_NAME'];
        $urlInfo = parse_url($formData['url']);
		
		

        $rules = array(
            'title' => 'required',
            'url' => 'required',
        );

        $validation = Validator::make($formData, $rules);

        if ($validation->fails()) {
            return langRedirectRoute('admin.menu.create')->withErrors($validation)->withInput();
        }

        $this->menu = $this->menu->find($id);
        $this->menu->fill($formData);

        if (isset($urlInfo['host'])) {
            $url = ($host == $urlInfo['host']) ? $urlInfo['path'] : $formData['url'];
        } else {
            $url = ($formData['type'] == 'module') ? $formData['url'] : 'http://'.$formData['url'];
        }

		
		
		
        $this->menu->url = $url;
		$parent_id = $formData['parent_id']?$formData['parent_id']:0;
		$type = $formData['type']?$formData['type']:0;
		$this->menu->parent_id = $parent_id;
		$this->menu->type = $type;
		
        $this->menu->save();

        Flash::message('Menu was successfully updated');
		
        return langRedirectRoute('admin.menu.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        if ($this->menu->hasChildItems($id)) {

            //throw new Exception("This menu has sub-menus. Can't delete!");
            Flash::message("There are sub menus of this menu. Can't be deleted!");

            return Redirect::action('App\Controllers\Admin\MenuController@index');
        }

        $this->menu = $this->menu->find($id);
        $this->menu->delete();
        Flash::message('Menu was successfully deleted');

        return langRedirectRoute('admin.menu.index');
    }

    public function confirmDestroy($id)
    {
        $menu = $this->menu->find($id);

        return view('backend.menu.confirm-destroy', compact('menu'));
    }

    public function save()
    {
        $this->menu->changeParentById($this->menu->parseJsonArray(json_decode(Input::get('json'), true)));

        return Response::json(array('result' => 'success'));
    }

    public function togglePublish($id)
    {
        $this->menu = $this->menu->find($id);
        $this->menu->is_published = ($this->menu->is_published) ? false : true;
        $this->menu->save();

        return Response::json(array('result' => 'success', 'changed' => ($this->menu->is_published) ? 1 : 0));
    }
}
