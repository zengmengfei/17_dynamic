<!-- 编辑弹窗 -->
<template>
    <a-modal :width="550" :visible="visible" :confirm-loading="loading" :title="isUpdate?'修改人员测试':'添加人员测试'" :body-style="{paddingBottom: '8px'}" @update:visible="updateVisible" @ok="save">
        <a-form ref="form" :model="form" :rules="rules" :label-col="{md: {span: 4}, sm: {span: 24}}" :wrapper-col="{md: {span: 19}, sm: {span: 24}}">
                                                                                                    
                                <a-form-item label="人员ID:" name="user_id">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入人员ID" v-model:value="form.user_id" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="角色ID:" name="role_id">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入角色ID" v-model:value="form.role_id" />
                                </a-form-item>
                                                                                                    
        </a-form>
    </a-modal>
</template>

<script>
                            
                            


    export default {
        name: 'UserTestEdit',
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
                                                
            user_id: [{
                required: true,
                message: '请输入人员ID',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            role_id: [{
                required: true,
                message: '请输入角色ID',
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
                    this.$http.post('/usertest/edit', this.form).then(res => {
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