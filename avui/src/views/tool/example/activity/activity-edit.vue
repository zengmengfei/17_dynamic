<!-- 编辑弹窗 -->
<template>
    <a-modal :width="550" :visible="visible" :confirm-loading="loading" :title="isUpdate?'修改活动':'添加活动'" :body-style="{paddingBottom: '8px'}" @update:visible="updateVisible" @ok="save">
        <a-form ref="form" :model="form" :rules="rules" :label-col="{md: {span: 4}, sm: {span: 24}}" :wrapper-col="{md: {span: 19}, sm: {span: 24}}">
                                                
                        <a-form-item label="封面图:" :label-col="{sm: {span: 4}, xs: {span: 6}}" :wrapper-col="{sm: {span: 21}, xs: {span: 18}}">
                            <uploadImage :limit="1" v-model:value="form.cover_imgs" multiple />
                        </a-form-item>
                                                                                                            
                                <a-form-item label="关联用户guid:" name="guid">
                                    <a-input v-model:value="form.guid" placeholder="请输入关联用户guid" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动唯一sn:" name="activity_sn">
                                    <a-input v-model:value="form.activity_sn" placeholder="请输入活动唯一sn" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="场馆sn:" name="venue_sn">
                                    <a-input v-model:value="form.venue_sn" placeholder="请输入场馆sn" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动标题:" name="title">
                                    <a-input v-model:value="form.title" placeholder="请输入活动标题" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动地址:" name="activity_address">
                                    <a-input v-model:value="form.activity_address" placeholder="请输入活动地址" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动日期:" name="activity_date">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入活动日期" v-model:value="form.activity_date" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动开始时间:" name="activity_starttime">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入活动开始时间" v-model:value="form.activity_starttime" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动结束时间:" name="activity_endtime">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入活动结束时间" v-model:value="form.activity_endtime" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="取消截止时间类型 10:" name="cancel_apply_deadline_type">
                                    <a-date-picker format="YYYY-MM-DD HH:mm:ss" show-time :disabled-date="disabledStartDate" v-model:value="form.cancel_apply_deadline_type" value-format="YYYY-MM-DD HH:mm:ss" placeholder="请选择取消截止时间类型 10" class="ele-fluid" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="取消截止时间:" name="cancel_apply_deadline_time">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入取消截止时间" v-model:value="form.cancel_apply_deadline_time" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="活动标签:" name="tags">
                                    <a-input v-model:value="form.tags" placeholder="请输入活动标签" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="男参与最低级别 0" name="male_min_level">
                                    <a-select v-model:value="form.male_min_level" placeholder="请选择男参与最低级别 0" allow-clear>
                                                                                    <a-select-option :value="">不限</a-select-option>
                                                                            </a-select>
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="男参与最高级别 0" name="male_max_level">
                                    <a-select v-model:value="form.male_max_level" placeholder="请选择男参与最高级别 0" allow-clear>
                                                                                    <a-select-option :value="">不限</a-select-option>
                                                                            </a-select>
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="女参与最低级别 0" name="female_min_level">
                                    <a-select v-model:value="form.female_min_level" placeholder="请选择女参与最低级别 0" allow-clear>
                                                                                    <a-select-option :value="">不限</a-select-option>
                                                                            </a-select>
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="女参与最高级别 0" name="female_max_level">
                                    <a-select v-model:value="form.female_max_level" placeholder="请选择女参与最高级别 0" allow-clear>
                                                                                    <a-select-option :value="">不限</a-select-option>
                                                                            </a-select>
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="组织者类型 10" name="organizer_type">
                                    <a-select v-model:value="form.organizer_type" placeholder="请选择组织者类型 10" allow-clear>
                                                                                    <a-select-option :value="">个人</a-select-option>
                                                                                    <a-select-option :value="20"></a-select-option>
                                                                            </a-select>
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="联系人姓名:" name="contact_name">
                                    <a-input v-model:value="form.contact_name" placeholder="请输入联系人姓名" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="联系人手机号:" name="contact_mobile">
                                    <a-input v-model:value="form.contact_mobile" placeholder="请输入联系人手机号" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="联系人微信号:" name="contact_wxid">
                                    <a-input v-model:value="form.contact_wxid" placeholder="请输入联系人微信号" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="是否分队 10" name="is_team_part">
                                    <a-radio-group v-model:value="form.is_team_part">
                                                                                    <a-radio :value="">否</a-radio>
                                                                                    <a-radio :value="20"></a-radio>
                                                                            </a-radio-group>
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="队伍总人数:" name="total_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入队伍总人数" v-model:value="form.total_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="已报名总人数:" name="current_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入已报名总人数" v-model:value="form.current_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="红队总人数:" name="red_team_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入红队总人数" v-model:value="form.red_team_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="红队已报名人数:" name="red_team_current_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入红队已报名人数" v-model:value="form.red_team_current_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="蓝队总人数:" name="blue_team_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入蓝队总人数" v-model:value="form.blue_team_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="蓝队已报名人数:" name="blue_team_current_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入蓝队已报名人数" v-model:value="form.blue_team_current_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="场馆费用:" name="venue_cost">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入场馆费用" v-model:value="form.venue_cost" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="场馆实际费用, 队长折扣后价格:" name="venue_actual_cost">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入场馆实际费用, 队长折扣后价格" v-model:value="form.venue_actual_cost" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="报名费:" name="entry_fee">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入报名费" v-model:value="form.entry_fee" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="场馆定位经度:" name="longitude">
                                    <a-input v-model:value="form.longitude" placeholder="请输入场馆定位经度" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="场馆定位纬度:" name="latitude">
                                    <a-input v-model:value="form.latitude" placeholder="请输入场馆定位纬度" allow-clear />
                                </a-form-item>
                                                                                                                                    <a-form-item label="活动描述:" :label-col="{ sm: { span: 3 }, xs: { span: 6 } }" :wrapper-col="{ sm: { span: 21 }, xs: { span: 18 } }">
                            <!-- 编辑器 -->
                            <tinymce-editor v-model:value="form.description" :init="initEditor" />
                        </a-form-item>
                                                
        </a-form>
    </a-modal>
</template>

<script>
            
    import uploadImage from '@/components/uploadImage'
                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                            
    import TinymceEditor from "@/components/TinymceEditor";
            


    export default {
        name: 'ActivityEdit',
        emits: [
            'done',
            'update:visible'
        ],
        components: {

                                                uploadImage,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    TinymceEditor,
                                            },

        props: {
            // 弹窗是否打开
            visible: Boolean,
            // 修改回显的数据
            data: Object
        },
        data() {
            return {
                // 表单数据
                form: Object.assign({}, this.data),
                // 表单验证规则
                rules: {
                                                
            cover_imgs: [{
                required: true,
                message: '请输入封面图',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            guid: [{
                required: true,
                message: '请输入关联用户guid',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            activity_sn: [{
                required: true,
                message: '请输入活动唯一sn',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            venue_sn: [{
                required: true,
                message: '请输入场馆sn',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            title: [{
                required: true,
                message: '请输入活动标题',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            activity_address: [{
                required: true,
                message: '请输入活动地址',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            activity_date: [{
                required: true,
                message: '请输入活动日期',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            activity_starttime: [{
                required: true,
                message: '请输入活动开始时间',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            activity_endtime: [{
                required: true,
                message: '请输入活动结束时间',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            cancel_apply_deadline_type: [{
                required: true,
                message: '请输入取消截止时间类型 10',
                type: 'number',
                trigger: 'blur'
            }],

                                                            
            cancel_apply_deadline_time: [{
                required: true,
                message: '请输入取消截止时间',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            tags: [{
                required: true,
                message: '请输入活动标签',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            male_min_level: [{
                required: true,
                message: '请输入男参与最低级别 0',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            male_max_level: [{
                required: true,
                message: '请输入男参与最高级别 0',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            female_min_level: [{
                required: true,
                message: '请输入女参与最低级别 0',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            female_max_level: [{
                required: true,
                message: '请输入女参与最高级别 0',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            organizer_type: [{
                required: true,
                message: '请输入组织者类型 10',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            contact_name: [{
                required: true,
                message: '请输入联系人姓名',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            contact_mobile: [{
                required: true,
                message: '请输入联系人手机号',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            contact_wxid: [{
                required: true,
                message: '请输入联系人微信号',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            is_team_part: [{
                required: true,
                message: '请输入是否分队 10',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            total_num: [{
                required: true,
                message: '请输入队伍总人数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            current_num: [{
                required: true,
                message: '请输入已报名总人数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            red_team_num: [{
                required: true,
                message: '请输入红队总人数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            red_team_current_num: [{
                required: true,
                message: '请输入红队已报名人数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            blue_team_num: [{
                required: true,
                message: '请输入蓝队总人数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            blue_team_current_num: [{
                required: true,
                message: '请输入蓝队已报名人数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            venue_cost: [{
                required: true,
                message: '请输入场馆费用',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            venue_actual_cost: [{
                required: true,
                message: '请输入场馆实际费用, 队长折扣后价格',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            entry_fee: [{
                required: true,
                message: '请输入报名费',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            longitude: [{
                required: true,
                message: '请输入场馆定位经度',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            latitude: [{
                required: true,
                message: '请输入场馆定位纬度',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            description: [{
                required: true,
                message: '请输入活动描述',
                type: 'number',
                trigger: 'blur'
            }],
                                                        },
            // 提交状态
            loading: false,
                // 是否是修改
                isUpdate: false,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            };
        },
        watch: {
            data() {
                if (this.data) {
                    this.form = Object.assign({}, this.data);
                    this.isUpdate = true;
                } else {
                    this.form = {};
                    this.isUpdate = false;
                }
                if (this.$refs.form) {
                    this.$refs.form.clearValidate();
                }
            }
        },
        created() {
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            },
        methods: {
            /* 保存编辑 */
            save() {
                this.$refs.form.validate().then(() => {
                    this.loading = true;
                    this.$http.post('/activity/edit', this.form).then(res => {
                        this.loading = false;
                        if (res.data.code === 0) {
                            this.$message.success(res.data.msg);
                            if (!this.isUpdate) {
                                this.form = {};
                            }
                            this.updateVisible(false);
                            this.$emit('done');
                        } else {
                            this.$message.error(res.data.msg);
                        }
                    }).catch(e => {
                        this.loading = false;
                        this.$message.error(e.message);
                    });
                }).catch(() => {});
            },
            /* 更新visible */
            updateVisible(value) {
                this.$emit('update:visible', value);
            },

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
        }
    }
</script>

<style scoped>
</style>