<!-- 编辑弹窗 -->
<template>
    <a-modal :width="550" :visible="visible" :confirm-loading="loading" :title="isUpdate?'修改小程序用户':'添加小程序用户'" :body-style="{paddingBottom: '8px'}" @update:visible="updateVisible" @ok="save">
        <a-form ref="form" :model="form" :rules="rules" :label-col="{md: {span: 4}, sm: {span: 24}}" :wrapper-col="{md: {span: 19}, sm: {span: 24}}">
                                                
                        <a-form-item label="头像地址:" :label-col="{sm: {span: 4}, xs: {span: 6}}" :wrapper-col="{sm: {span: 21}, xs: {span: 18}}">
                            <uploadImage :limit="1" v-model:value="form.avatar" />
                        </a-form-item>
                                                                                                            
                                <a-form-item label=":" name="guid">
                                    <a-input v-model:value="form.guid" placeholder="请输入" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="小程序openid:" name="openid">
                                    <a-input v-model:value="form.openid" placeholder="请输入小程序openid" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="开发平台unionid:" name="unionid">
                                    <a-input v-model:value="form.unionid" placeholder="请输入开发平台unionid" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="昵称:" name="nickname">
                                    <a-input v-model:value="form.nickname" placeholder="请输入昵称" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="性别 :" name="gender">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入性别 " v-model:value="form.gender" />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="城市:" name="city">
                                    <a-input v-model:value="form.city" placeholder="请输入城市" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="省:" name="province">
                                    <a-input v-model:value="form.province" placeholder="请输入省" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="国家:" name="country">
                                    <a-input v-model:value="form.country" placeholder="请输入国家" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="用户当前定位经度:" name="longitude">
                                    <a-input v-model:value="form.longitude" placeholder="请输入用户当前定位经度" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="用户当前定位纬度:" name="latitude">
                                    <a-input v-model:value="form.latitude" placeholder="请输入用户当前定位纬度" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label=":" name="session_key">
                                    <a-input v-model:value="form.session_key" placeholder="请输入" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="临时验证token:" name="token">
                                    <a-input v-model:value="form.token" placeholder="请输入临时验证token" allow-clear />
                                </a-form-item>
                                                                                                                                                                
                                <a-form-item label="最后一次授权时间:" name="last_auth_time">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入最后一次授权时间" v-model:value="form.last_auth_time" />
                                </a-form-item>
                                                                                                    
        </a-form>
    </a-modal>
</template>

<script>
            
    import uploadImage from '@/components/uploadImage'
                                                                                                                    
                                                                                                                            


    export default {
        name: 'WxUserEdit',
        emits: [
            'done',
            'update:visible'
        ],
        components: {

                                                uploadImage,
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
                                                
            avatar: [{
                required: true,
                message: '请输入头像地址',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            guid: [{
                required: true,
                message: '请输入',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            openid: [{
                required: true,
                message: '请输入小程序openid',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            unionid: [{
                required: true,
                message: '请输入开发平台unionid',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            nickname: [{
                required: true,
                message: '请输入昵称',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            gender: [{
                required: true,
                message: '请输入性别 ',
                type: 'number',
                trigger: 'blur'
            }],
                                                            
            city: [{
                required: true,
                message: '请输入城市',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            province: [{
                required: true,
                message: '请输入省',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            country: [{
                required: true,
                message: '请输入国家',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            longitude: [{
                required: true,
                message: '请输入用户当前定位经度',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            latitude: [{
                required: true,
                message: '请输入用户当前定位纬度',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            session_key: [{
                required: true,
                message: '请输入',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            token: [{
                required: true,
                message: '请输入临时验证token',
                type: 'string',
                trigger: 'blur'
            }],
                                                            
            last_auth_time: [{
                required: true,
                message: '请输入最后一次授权时间',
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
                    this.$http.post('/wxuser/edit', this.form).then(res => {
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