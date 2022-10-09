<!-- 编辑弹窗 -->
<template>
    <a-modal :width="550" :visible="visible" :confirm-loading="loading" :title="isUpdate?'修改用户发布动态':'添加用户发布动态'" :body-style="{paddingBottom: '8px'}" @update:visible="updateVisible" @ok="save">
        <a-form ref="form" :model="form" :rules="rules" :label-col="{md: {span: 4}, sm: {span: 24}}" :wrapper-col="{md: {span: 19}, sm: {span: 24}}">
                                                                                                    
                                <a-form-item label="用户guid:" name="user_guid">
                                    <a-input v-model:value="form.user_guid" placeholder="请输入用户guid" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="动态唯一sn:" name="dynamic_sn">
                                    <a-input v-model:value="form.dynamic_sn" placeholder="请输入动态唯一sn" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="动态标题:" name="title">
                                    <a-input v-model:value="form.title" placeholder="请输入动态标题" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="视频地址:" name="video_url">
                                    <a-input v-model:value="form.video_url" placeholder="请输入视频地址" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="图片:" name="imgs">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入图片" v-model:value="form.imgs" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="评论数:" name="comment_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入评论数" v-model:value="form.comment_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="浏览量:" name="browse_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入浏览量" v-model:value="form.browse_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="分享数:" name="share_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入分享数" v-model:value="form.share_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="点赞数:" name="thumb_num">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入点赞数" v-model:value="form.thumb_num" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="发布动态定位地点:" name="place">
                                    <a-input v-model:value="form.place" placeholder="请输入发布动态定位地点" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="状态" name="status">
                                    <a-radio-group v-model:value="form.status">
                                                                                    <a-radio :value="10">:完全公开</a-radio>
                                                                                    <a-radio :value="20"></a-radio>
                                                                            </a-radio-group>
                                </a-form-item>
                                                                                                    
        </a-form>
    </a-modal>
</template>

<script>
                                                                                                    
                                                                                                    


    export default {
        name: 'UserDynamicEdit',
        emits: [
            'done',
            'update:visible'
        ],
        components: {

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
                                                
            user_guid: [{
                required: true,
                message: '请输入用户guid',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            dynamic_sn: [{
                required: true,
                message: '请输入动态唯一sn',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            title: [{
                required: true,
                message: '请输入动态标题',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            video_url: [{
                required: true,
                message: '请输入视频地址',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            imgs: [{
                required: true,
                message: '请输入图片',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            comment_num: [{
                required: true,
                message: '请输入评论数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            browse_num: [{
                required: true,
                message: '请输入浏览量',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            share_num: [{
                required: true,
                message: '请输入分享数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            thumb_num: [{
                required: true,
                message: '请输入点赞数',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            place: [{
                required: true,
                message: '请输入发布动态定位地点',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            status: [{
                required: true,
                message: '请输入状态',
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
                    this.$http.post('/userdynamic/edit', this.form).then(res => {
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