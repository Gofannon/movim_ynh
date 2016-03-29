<?php
use Movim\Controller\Base;

class GroupController extends Base
{
    function load() {
        $this->session_only = false;
    }

    function dispatch() {
        $user = new User();
        if(!$user->isLogged()) {
            $this->name = 'grouppublic';
        }

        $this->page->setTitle(__('page.groups'));
    }
}
