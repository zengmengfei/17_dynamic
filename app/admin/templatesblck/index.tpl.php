<template>
    <div class="ele-body">
        <a-card :bordered="false">
            <!-- 搜索表单 -->
            <a-form
                    :model="where"
                    :label-col="{md: {span: 6}, sm: {span: 24}}"
                    :wrapper-col="{md: {span: 18}, sm: {span: 24}}">
                <a-row>
                    <?php foreach ($queryList as $val) {?>
                        <?php if (isset($val['columnValue'])) {?>
                            <?php if (isset($val['columnSwitch']) && $val['columnSwitch']) {?>

                            <?php } elseif ($val['dataType'] == 'bigint' || $val['dataType'] == 'int' || $val['dataType'] == 'smallint' || $val['dataType'] == 'tinyint') {?>

                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="<?php echo $val['columnComment']?>"
                                            name="<?php echo $val['columnName']?>">
                                        <a-select
                                                v-model:value="where.<?php echo $val['columnName']?>"
                                                placeholder="请选择<?php echo $val['columnComment']?>"
                                                allow-clear>
                                            <?php foreach ($val['columnValue'] as $v) { ?>
                                                <a-select-option :value="<?php echo $v["value"]?>"><?php echo $v["name"]?></a-select-option>
                                            <?php } ?>
                                        </a-select>
                                    </a-form-item>
                                </a-col>
                            <?php } ?>
                        <?php } else {?>

                            <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                <a-form-item label="<?php echo $val['columnComment']?>:">
                                    <a-input
                                            v-model:value.trim="where.<?php echo $val['columnName']?>"
                                            placeholder="请输入<?php echo $val['columnComment']?>"
                                            allow-clear/>
                                </a-form-item>
                            </a-col>
                        <?php } ?>
                    <?php } ?>

                    <a-col :lg="6" :md="12" :sm="24" :xs="24">
                        <a-form-item style="padding-left:10px;" :wrapper-col="{span: 24}">
                            <a-space>
                                <a-button type="primary" @click="reload">查询</a-button>
                                <a-button @click="reset">重置</a-button>
                            </a-space>
                        </a-form-item>
                    </a-col>
                </a-row>
            </a-form>
            <!-- 表格 -->
            <ele-pro-table
                    ref="table"
                    row-key="id"
                    :datasource="url"
                    :columns="columns"
                    :where="where"
                    v-model:selection="selection"
                    :scroll="{x: 'max-content'}">
                <template #toolbar>
                    <a-space>
                        <a-button type="primary" @click="openEdit()" v-if="permission.includes('sys:<?php echo $moduleName?>:add')">
                            <template #icon>
                                <plus-outlined/>
                            </template>
                            <span>新建</span>
                        </a-button>
                        <a-button type="danger" @click="removeBatch" v-if="permission.includes('sys:<?php echo $moduleName?>:dall')">
                            <template #icon>
                                <delete-outlined/>
                            </template>
                            <span>删除</span>
                        </a-button>
                    </a-space>
                </template>
                <?php foreach ($columnList as $val) {?>
                    <?php if ($val['columnName'] != 'id' && $val['columnName'] != 'create_user' && $val['columnName'] != 'create_time' && $val['columnName'] != 'update_time' && $val['columnName'] != 'mark') {?>
                        <?php if (isset($val['columnValue'])) {?>
                            <?php if (isset($val['columnSwitch']) && $val['columnSwitch']) {?>

                                <template #<?php echo $val['columnName']?>="{ text, record }">
                                    <a-switch
                                            :checked="text===1"
                                            @change="(checked) => <?php echo $val['columnSwitchName']?>(checked, record)"/>
                                </template>
                            <?php } elseif ($val['dataType'] == 'bigint' || $val['dataType'] == 'int' || $val['dataType'] == 'smallint' || $val['dataType'] == 'tinyint') {?>

                                <template #<?php echo $val['columnName']?>="{ record }">
                                    <a-tag :color="['green', 'blue', 'orange', 'red'][record.<?php echo $val['columnName']?>-1]">
                                        {{[<?php echo "'" . implode("','",array_key_value($val['columnValue'], 'name')) . "'"?>][record.<?php echo $val['columnName']?>-1] }}
                                    </a-tag>
                                </template>
                            <?php } ?>
                        <?php } elseif (isset($val['columnImage']) && $val['columnImage']) {?>

                            <template #<?php echo $val['columnName']?>="{ record }">
                                <a-image :width="35" :src="record.<?php echo $val['columnName']?>" />
                            </template>
                        <?php } else {?>

                        <?php } ?>
                    <?php } ?>
                <?php } ?>

                <template #action="{ record }">
                    <a-space>
                        <a @click="openEdit(record)" v-if="permission.includes('sys:<?php echo $moduleName?>:edit')">修改</a>
                        <a-divider type="vertical"/>
                        <a-popconfirm
                                title="确定要删除此<?php echo $moduleTitle?>吗？"
                                @confirm="remove(record)">
                            <a class="ele-text-danger" v-if="permission.includes('sys:<?php echo $moduleName?>:delete')">删除</a>
                        </a-popconfirm>
                    </a-space>
                </template>
            </ele-pro-table>
        </a-card>
    </div>
    <!-- 编辑弹窗 -->
    <<?php echo $moduleName?>-edit
    v-model:visible="showEdit"
    :data="current"
    @done="reload"/>
</template>

<script>
    import { mapGetters } from "vuex";
    import {createVNode} from 'vue'
    import {
        PlusOutlined,
        DeleteOutlined,
        ExclamationCircleOutlined
    } from '@ant-design/icons-vue';
    import <?php echo $moduleName?>Edit from './<?php echo $moduleName?>-edit';

    export default {
        name: 'Exam<?php echo $entityName?>',
        components: {
            PlusOutlined,
            DeleteOutlined,
            <?php echo $moduleName?>Edit
        },
        computed: {
            ...mapGetters(["permission"]),
        },
        data() {
            return {
                // 表格数据接口
                url: '/<?php echo $moduleName?>/index',
                // 表格列配置
                columns: [
                    {
                        key: 'index',
                        title: '编号',
                        width: 48,
                        align: 'center',
                        fixed: 'left',
                        customRender: ({index}) => this.$refs.table.tableIndex + index
                    },
                    <?php foreach ($columnList as $val) {?>
                    <?php if ($val['columnName'] != 'id' && $val['columnName'] != 'create_user' && $val['columnName'] != 'create_time' && $val['columnName'] != 'update_time' && $val['columnName'] != 'mark') {?>
                    <?php if (isset($val['columnValue'])) {?>
                    <?php if (isset($val['columnSwitch']) && $val['columnSwitch']) {?>

                    {
                        title: '<?php echo $val['columnComment']?>',
                        dataIndex: '<?php echo $val['columnName']?>',
                        sorter: true,
                        width: 100,
                        align: 'center',
                        slots: {customRender: '<?php echo $val['columnName']?>'}
                    },
                    <?php } elseif ($val['dataType'] == 'bigint' || $val['dataType'] == 'int' || $val['dataType'] == 'smallint' || $val['dataType'] == 'tinyint') {?>

                    {
                        title: '<?php echo $val['columnComment']?>',
                        dataIndex: '<?php echo $val['columnName']?>',
                        sorter: true,
                        align: 'center',
                        slots: {customRender: '<?php echo $val['columnName']?>'}
                    },
                    <?php } ?>
                    <?php } elseif (isset($val['columnImage']) && $val['columnImage']) {?>

                    {
                        title: '<?php echo $val['columnComment']?>',
                        dataIndex: '<?php echo $val['columnName']?>',
                        align: 'center',
                        slots: {customRender: '<?php echo $val['columnName']?>'}
                    },
                    <?php } else {?>

                    {
                        title: '<?php echo $val['columnComment']?>',
                        dataIndex: '<?php echo $val['columnName']?>',
                        align: 'center'
                    },
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>

                    {
                        title: '创建时间',
                        dataIndex: 'create_time',
                        sorter: true,
                        align: 'center',
                        //customRender: ({text}) => this.$util.toDateString(text*1000)
                    },
                    {
                        title: '更新时间',
                        dataIndex: 'update_time',
                        sorter: true,
                        align: 'center',
                       // customRender: ({text}) => this.$util.toDateString(text*1000)
                    },
                    {
                        title: '操作',
                        key: 'action',
                        width: 100,
                        align: 'center',
                        fixed: 'right',
                        slots: {customRender: 'action'}
                    }
                ],
                // 表格搜索条件
                where: {},
                // 表格选中数据
                selection: [],
                // 当前编辑数据
                current: null,
                // 是否显示编辑弹窗
                showEdit: false
            };
        },
        methods: {
            /* 搜索 */
            reload() {
                this.selection = [];
                this.$refs.table.reload({page: 1});
            },
            /*  重置搜索 */
            reset() {
                this.where = {};
                this.$nextTick(() => {
                    this.reload();
                });
            },
            /* 删除单个 */
            remove(row) {
                const hide = this.$message.loading('请求中..', 0);
                this.$http.post('/<?php echo $moduleName?>/delete', {id : row.id}).then(res => {
                    hide();
                    if (res.data.code === 0) {
                        this.$message.success(res.data.msg);
                        this.reload();
                    } else {
                        this.$message.error(res.data.msg);
                    }
                }).catch(e => {
                    hide();
                    this.$message.error(e.message);
                });
            },
            /* 批量删除 */
            removeBatch() {
                if (!this.selection.length) {
                    this.$message.error('请至少选择一条数据');
                    return;
                }
                this.$confirm({
                    title: '提示',
                    content: '确定要删除选中的<?php echo $moduleTitle?>吗?',
                    icon: createVNode(ExclamationCircleOutlined),
                    maskClosable: true,
                    onOk: () => {
                        const hide = this.$message.loading('请求中..', 0);
                        this.$http.post('/<?php echo $moduleName?>/delete', {
                            id: this.selection.map(d => d.id)
                        }).then(res => {
                            hide();
                            if (res.data.code === 0) {
                                this.$message.success(res.data.msg);
                                this.reload();
                            } else {
                                this.$message.error(res.data.msg);
                            }
                        }).catch(e => {
                            hide();
                            this.$message.error(e.message);
                        });
                    }
                });
            },
            /* 打开编辑弹窗 */
            openEdit(row) {
                this.current = row;
                this.showEdit = true;
            },
        <?php foreach ($columnList as $val) {?>
        <?php if (isset($val['columnSwitch']) && $val['columnSwitch']) {?>

            /* 修改<?php echo $val['columnComment']?> */
                <?php echo $val['columnSwitchName']?>(checked, row) {
        let params = Object.assign({}, {
            id : row.id,
        <?php echo $val['columnName']?> : checked ? 1 : 2,
    });
        this.$http.post('/<?php echo $moduleName?>/<?php echo $val['columnSwitchName']?>', params).then(res => {
            if (res.data.code === 0) {
                row.<?php echo $val['columnName']?> = checked ? 1 : 2;
                this.$message.success(res.data.msg);
            } else {
                this.$message.error(res.data.msg);
            }
        }).catch(e => {
            this.$message.error(e.message);
        });
    },
    <?php } ?>
    <?php } ?>

    }
    }
</script>

<style scoped>
</style>