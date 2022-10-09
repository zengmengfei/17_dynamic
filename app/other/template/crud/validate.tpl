<?php
namespace {$validate.namespace};

use app\api\validate\BaseValidate;

class {$validate.class_name} extends  BaseValidate {
    protected $rule = [
    {foreach $tables[0].datas as $k=>$item}
        {if '{$item.check}'}'{$item.field}' => '{foreach $item.check as $j=>$checkItem}{$checkItem.value}{if {$j}<{$count(item.check)}-1}|{/if}{/foreach}',{/if}
        {if !'{$item.incremental}'}
            {if !'{$item.check}' && '{$item.not_null}'}'{$item.field}' => 'require',{/if}
        {/if}

    {/foreach}
        ];

        protected $message = [
    {foreach $tables[0].datas as $k=>$item}
        {if '{$item.check}'}{foreach $item.check as $j=>$checkItem}'{$item.field}.{$checkItem.value}' => '{$checkItem.message}',
        {/foreach}{/if}
    {/foreach}
        ];

        protected $scene = [
            'add'  =>  [{foreach $tables[0].datas as $k=>$item}{if '{$item.add}'=='true' && ('{$item.not_null}' || '{$item.check}')}'{$item.field}', {/if}{/foreach}],
            'edit'  =>  [{foreach $tables[0].datas as $k=>$item}{if '{$item.edit}'=='true' && ('{$item.not_null}' || '{$item.check}')}'{$item.field}', {/if}{/foreach}],
        ];

}