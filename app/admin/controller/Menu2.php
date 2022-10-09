<?php


namespace app\admin\controller;


class Menu2
{
    public function index()
    {
        // 管理员(拥有全部权限)
        $menuModel = new \app\admin\model\Menu();
        $menuList = $menuModel->getChilds(0);
        if ($menuList) {
            foreach ($menuList as $val) {
                $data = [
                    'title' => trim($val['title']),
                    'icon' => trim($val['icon']),
                    'path' => trim($val['path']),
                    'component' => trim($val['component']),
                    'target' => trim($val['target']),
                    'pid' => 0,
                    'type' => intval($val['type']),
                    'permission' => trim($val['permission']),
                    'status' => 1,
                    'sort' => intval($val['sort']),
                    'create_user' => 1,
                    'create_time' => time(),
                    'update_user' => 1,
                    'update_time' => time(),
                ];
                $menuModel = new \app\admin\model\Menu2();
                $result = $menuModel->edit($data);
                if (!empty($val['children'])) {
                    foreach ($val['children'] as $vo) {
                        $data2 = [
                            'title' => trim($vo['title']),
                            'icon' => trim($vo['icon']),
                            'path' => trim($vo['path']),
                            'component' => trim($vo['component']),
                            'target' => trim($vo['target']),
                            'pid' => $result,
                            'type' => intval($vo['type']),
                            'permission' => trim($vo['permission']),
                            'status' => 1,
                            'sort' => intval($vo['sort']),
                            'create_user' => 1,
                            'create_time' => time(),
                            'update_user' => 1,
                            'update_time' => time(),
                        ];
                        $menuModel = new \app\admin\model\Menu2();
                        $result2 = $menuModel->edit($data2);
                        if (!empty($vo['children'])) {
                            foreach ($vo['children'] as $v) {
                                $data3 = [
                                    'title' => trim($v['title']),
                                    'icon' => trim($v['icon']),
                                    'path' => trim($v['path']),
                                    'component' => trim($v['component']),
                                    'target' => trim($v['target']),
                                    'pid' => $result2,
                                    'type' => intval($v['type']),
                                    'permission' => trim($v['permission']),
                                    'status' => 1,
                                    'sort' => intval($v['sort']),
                                    'create_user' => 1,
                                    'create_time' => time(),
                                    'update_user' => 1,
                                    'update_time' => time(),
                                ];
                                $menuModel = new \app\admin\model\Menu2();
                                $menuModel->edit($data3);
                            }
                        }
                    }
                }

            }
        }
        print_r($menuList);
        exit;
    }
}