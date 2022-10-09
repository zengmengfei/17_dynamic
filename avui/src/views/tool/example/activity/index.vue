<template>
    <div class="ele-body">
        <a-card :bordered="false">
            <!-- 搜索表单 -->
            <a-form
                    :model="where"
                    :label-col="{md: {span: 6}, sm: {span: 24}}"
                    :wrapper-col="{md: {span: 18}, sm: {span: 24}}">
                <a-row>
                                            
                            <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                <a-form-item label="活动标题:">
                                    <a-input
                                            v-model:value.trim="where.title"
                                            placeholder="请输入活动标题"
                                            allow-clear/>
                                </a-form-item>
                            </a-col>
                                                                                                
                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="取消截止时间类型 10"
                                            name="cancel_apply_deadline_type">
                                        <a-select
                                                v-model:value="where.cancel_apply_deadline_type"
                                                placeholder="请选择取消截止时间类型 10"
                                                allow-clear>
                                                                                            <a-select-option :value="">活动前两小时</a-select-option>
                                                                                            <a-select-option :value=""></a-select-option>
                                                                                    </a-select>
                                    </a-form-item>
                                </a-col>
                                                                                                                            
                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="男参与最低级别 0"
                                            name="male_min_level">
                                        <a-select
                                                v-model:value="where.male_min_level"
                                                placeholder="请选择男参与最低级别 0"
                                                allow-clear>
                                                                                            <a-select-option :value="">不限</a-select-option>
                                                                                    </a-select>
                                    </a-form-item>
                                </a-col>
                                                                                                                            
                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="男参与最高级别 0"
                                            name="male_max_level">
                                        <a-select
                                                v-model:value="where.male_max_level"
                                                placeholder="请选择男参与最高级别 0"
                                                allow-clear>
                                                                                            <a-select-option :value="">不限</a-select-option>
                                                                                    </a-select>
                                    </a-form-item>
                                </a-col>
                                                                                                                            
                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="女参与最低级别 0"
                                            name="female_min_level">
                                        <a-select
                                                v-model:value="where.female_min_level"
                                                placeholder="请选择女参与最低级别 0"
                                                allow-clear>
                                                                                            <a-select-option :value="">不限</a-select-option>
                                                                                    </a-select>
                                    </a-form-item>
                                </a-col>
                                                                                                                            
                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="女参与最高级别 0"
                                            name="female_max_level">
                                        <a-select
                                                v-model:value="where.female_max_level"
                                                placeholder="请选择女参与最高级别 0"
                                                allow-clear>
                                                                                            <a-select-option :value="">不限</a-select-option>
                                                                                    </a-select>
                                    </a-form-item>
                                </a-col>
                                                                                                                            
                                <a-col :lg="6" :md="12" :sm="24" :xs="24">
                                    <a-form-item
                                            label="组织者类型 10"
                                            name="organizer_type">
                                        <a-select
                                                v-model:value="where.organizer_type"
                                                placeholder="请选择组织者类型 10"
                                                allow-clear>
                                                                                            <a-select-option :value="">个人</a-select-option>
                                                                                            <a-select-option :value="20"></a-select-option>
                                                                                    </a-select>
                                    </a-form-item>
                                </a-col>
                                                                                                                            
                                                                        
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
                        <a-button type="primary" @click="openEdit()" v-if="permission.includes('sys:activity:add')">
                            <template #icon>
                                <plus-outlined/>
                            </template>
                            <span>新建</span>
                        </a-button>
                        <a-button type="danger" @click="removeBatch" v-if="permission.includes('sys:activity:dall')">
                            <template #icon>
                                <delete-outlined/>
                            </template>
                            <span>删除</span>
                        </a-button>
                    </a-space>
                </template>
                                                            
                            <template #cover_imgs="{ record }">
                                <a-image :width="35" :src="record.cover_imgs" />
                            </template>
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                                                                                                                                                            
                                                                                                        
                                                                                                                                    
                                <template #male_min_level="{ record }">
                                    <a-tag :color="['green', 'blue', 'orange', 'red'][record.male_min_level-1]">
                                        {{['不限'][record.male_min_level-1] }}
                                    </a-tag>
                                </template>
                                                                                                                                                                
                                <template #male_max_level="{ record }">
                                    <a-tag :color="['green', 'blue', 'orange', 'red'][record.male_max_level-1]">
                                        {{['不限'][record.male_max_level-1] }}
                                    </a-tag>
                                </template>
                                                                                                                                                                
                                <template #female_min_level="{ record }">
                                    <a-tag :color="['green', 'blue', 'orange', 'red'][record.female_min_level-1]">
                                        {{['不限'][record.female_min_level-1] }}
                                    </a-tag>
                                </template>
                                                                                                                                                                
                                <template #female_max_level="{ record }">
                                    <a-tag :color="['green', 'blue', 'orange', 'red'][record.female_max_level-1]">
                                        {{['不限'][record.female_max_level-1] }}
                                    </a-tag>
                                </template>
                                                                                                                                                                
                                <template #organizer_type="{ record }">
                                    <a-tag :color="['green', 'blue', 'orange', 'red'][record.organizer_type-1]">
                                        {{['个人',''][record.organizer_type-1] }}
                                    </a-tag>
                                </template>
                                                                                                                                    
                                                                                                        
                                                                                                        
                                                                                                                                    
                                <template #is_team_part="{ text, record }">
                                    <a-switch
                                            :checked="text===1"
                                            @change="(checked) => setIsTeamPart(checked, record)"/>
                                </template>
                                                                                                                                    
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                                                                        
                                                            
                <template #action="{ record }">
                    <a-space>
                        <a @click="openEdit(record)" v-if="permission.includes('sys:activity:edit')">修改</a>
                        <a-divider type="vertical"/>
                        <a-popconfirm
                                title="确定要删除此活动吗？"
                                @confirm="remove(record)">
                            <a class="ele-text-danger" v-if="permission.includes('sys:activity:delete')">删除</a>
                        </a-popconfirm>
                    </a-space>
                </template>
            </ele-pro-table>
        </a-card>
    </div>
    <!-- 编辑弹窗 -->
    <activity-edit
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
    import activityEdit from './activity-edit';

    export default {
        name: 'ExamActivity',
        components: {
            PlusOutlined,
            DeleteOutlined,
            activityEdit
        },
        computed: {
            ...mapGetters(["permission"]),
        },
        data() {
            return {
                // 表格数据接口
                url: '/activity/index',
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
                                                            
                    {
                        title: '封面图',
                        dataIndex: 'cover_imgs',
                        align: 'center',
                        slots: {customRender: 'cover_imgs'}
                    },
                                                                                                    
                    {
                        title: '关联用户guid',
                        dataIndex: 'guid',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动唯一sn',
                        dataIndex: 'activity_sn',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '场馆sn',
                        dataIndex: 'venue_sn',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动标题',
                        dataIndex: 'title',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动地址',
                        dataIndex: 'activity_address',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动日期',
                        dataIndex: 'activity_date',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动开始时间',
                        dataIndex: 'activity_starttime',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动结束时间',
                        dataIndex: 'activity_endtime',
                        align: 'center'
                    },
                                                                                                                                                                                                                            
                    {
                        title: '取消截止时间',
                        dataIndex: 'cancel_apply_deadline_time',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动标签',
                        dataIndex: 'tags',
                        align: 'center'
                    },
                                                                                                                        
                    {
                        title: '男参与最低级别 0',
                        dataIndex: 'male_min_level',
                        sorter: true,
                        align: 'center',
                        slots: {customRender: 'male_min_level'}
                    },
                                                                                                                                            
                    {
                        title: '男参与最高级别 0',
                        dataIndex: 'male_max_level',
                        sorter: true,
                        align: 'center',
                        slots: {customRender: 'male_max_level'}
                    },
                                                                                                                                            
                    {
                        title: '女参与最低级别 0',
                        dataIndex: 'female_min_level',
                        sorter: true,
                        align: 'center',
                        slots: {customRender: 'female_min_level'}
                    },
                                                                                                                                            
                    {
                        title: '女参与最高级别 0',
                        dataIndex: 'female_max_level',
                        sorter: true,
                        align: 'center',
                        slots: {customRender: 'female_max_level'}
                    },
                                                                                                                                            
                    {
                        title: '组织者类型 10',
                        dataIndex: 'organizer_type',
                        sorter: true,
                        align: 'center',
                        slots: {customRender: 'organizer_type'}
                    },
                                                                                                                        
                    {
                        title: '联系人姓名',
                        dataIndex: 'contact_name',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '联系人手机号',
                        dataIndex: 'contact_mobile',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '联系人微信号',
                        dataIndex: 'contact_wxid',
                        align: 'center'
                    },
                                                                                                                        
                    {
                        title: '是否分队 10',
                        dataIndex: 'is_team_part',
                        sorter: true,
                        width: 100,
                        align: 'center',
                        slots: {customRender: 'is_team_part'}
                    },
                                                                                                                        
                    {
                        title: '队伍总人数',
                        dataIndex: 'total_num',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '已报名总人数',
                        dataIndex: 'current_num',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '红队总人数',
                        dataIndex: 'red_team_num',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '红队已报名人数',
                        dataIndex: 'red_team_current_num',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '蓝队总人数',
                        dataIndex: 'blue_team_num',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '蓝队已报名人数',
                        dataIndex: 'blue_team_current_num',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '场馆费用',
                        dataIndex: 'venue_cost',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '场馆实际费用, 队长折扣后价格',
                        dataIndex: 'venue_actual_cost',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '报名费',
                        dataIndex: 'entry_fee',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '场馆定位经度',
                        dataIndex: 'longitude',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '场馆定位纬度',
                        dataIndex: 'latitude',
                        align: 'center'
                    },
                                                                                                    
                    {
                        title: '活动描述',
                        dataIndex: 'description',
                        align: 'center'
                    },
                                                            
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
                this.$http.post('/activity/delete', {id : row.id}).then(res => {
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
                    content: '确定要删除选中的活动吗?',
                    icon: createVNode(ExclamationCircleOutlined),
                    maskClosable: true,
                    onOk: () => {
                        const hide = this.$message.loading('请求中..', 0);
                        this.$http.post('/activity/delete', {
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
                                                                                                                                                                                                                                                                
            /* 修改是否分队 10 */
                setIsTeamPart(checked, row) {
        let params = Object.assign({}, {
            id : row.id,
        is_team_part : checked ? 1 : 2,
    });
        this.$http.post('/activity/setIsTeamPart', params).then(res => {
            if (res.data.code === 0) {
                row.is_team_part = checked ? 1 : 2;
                this.$message.success(res.data.msg);
            } else {
                this.$message.error(res.data.msg);
            }
        }).catch(e => {
            this.$message.error(e.message);
        });
    },
                                                                                                                                                        
    }
    }
</script>

<style scoped>
</style>