<!-- 编辑弹窗 -->
<template>
    <a-modal :width="550" :visible="visible" :confirm-loading="loading" :title="isUpdate?'修改<?php echo $moduleTitle ?>':'添加<?php echo $moduleTitle ?>'" :body-style="{paddingBottom: '8px'}" @update:visible="updateVisible" @ok="save">
        <a-form ref="form" :model="form" :rules="rules" :label-col="{md: {span: 4}, sm: {span: 24}}" :wrapper-col="{md: {span: 19}, sm: {span: 24}}">
            <?php if ($columnList) { ?>
                <?php foreach ($columnList as $val) { ?>
                    <?php if (isset($val['columnImage'])) { ?>

                        <a-form-item label="<?php echo $val['columnComment'] ?>:" :label-col="{sm: {span: 4}, xs: {span: 6}}" :wrapper-col="{sm: {span: 21}, xs: {span: 18}}">
                            <uploadImage :limit="1" v-model:value="form.<?php echo $val['columnName'] ?>" />
                        </a-form-item>
                    <?php } elseif (isset($val['columnRow'])) { ?>
                        <a-form-item label="<?php echo $val['columnComment'] ?>:" :label-col="{ sm: { span: 3 }, xs: { span: 6 } }" :wrapper-col="{ sm: { span: 21 }, xs: { span: 18 } }">
                            <!-- 编辑器 -->
                            <tinymce-editor v-model:value="form.<?php echo $val['columnName'] ?>" :init="initEditor" />
                        </a-form-item>
                    <?php } else { ?>
                        <?php if (isset($val['columnValue'])) { ?>
                            <?php if (isset($val['columnSwitch']) && $val['columnSwitch']) { ?>

                                <a-form-item label="<?php echo $val['columnComment'] ?>" name="<?php echo $val['columnName'] ?>">
                                    <a-radio-group v-model:value="form.<?php echo $val['columnName'] ?>">
                                        <?php foreach ($val['columnValue'] as $v) { ?>
                                            <a-radio :value="<?php echo $v["value"] ?>"><?php echo $v["name"] ?></a-radio>
                                        <?php } ?>
                                    </a-radio-group>
                                </a-form-item>
                            <?php } elseif ($val['dataType'] == 'bigint' || $val['dataType'] == 'int' || $val['dataType'] == 'smallint' || $val['dataType'] == 'tinyint') { ?>

                                <a-form-item label="<?php echo $val['columnComment'] ?>" name="<?php echo $val['columnName'] ?>">
                                    <a-select v-model:value="form.<?php echo $val['columnName'] ?>" placeholder="请选择<?php echo $val['columnComment'] ?>" allow-clear>
                                        <?php foreach ($val['columnValue'] as $v) { ?>
                                            <a-select-option :value="<?php echo $v["value"] ?>"><?php echo $v["name"] ?></a-select-option>
                                        <?php } ?>
                                    </a-select>
                                </a-form-item>
                            <?php } elseif ($val['dataType'] == 'date' || $val['dataType'] == 'datetime') { ?>

                                <a-form-item label="<?php echo $val['columnComment'] ?>:" name="<?php echo $val['columnName'] ?>">
                                    <a-date-picker format="YYYY-MM-DD HH:mm:ss" show-time :disabled-date="disabledStartDate" v-model:value="form.<?php echo $val['columnName'] ?>" value-format="YYYY-MM-DD HH:mm:ss" placeholder="请选择<?php echo $val['columnComment'] ?>" class="ele-fluid" />
                                </a-form-item>
                            <?php } ?>
                        <?php } else { ?>
                            <?php if ($val['dataType'] == 'varchar') { ?>

                                <a-form-item label="<?php echo $val['columnComment'] ?>:" name="<?php echo $val['columnName'] ?>">
                                    <a-input v-model:value="form.<?php echo $val['columnName'] ?>" placeholder="请输入<?php echo $val['columnComment'] ?>" allow-clear />
                                </a-form-item>
                            <?php } else { ?>

                                <a-form-item label="<?php echo $val['columnComment'] ?>:" name="<?php echo $val['columnName'] ?>">
                                    <a-input-number :min="0" class="ele-fluid" placeholder="请输入<?php echo $val['columnComment'] ?>" v-model:value="form.<?php echo $val['columnName'] ?>" />
                                </a-form-item>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                <?php } ?>
            <?php } ?>

        </a-form>
    </a-modal>
</template>

<script>
    <?php if ($columnList) { ?>
    <?php foreach ($columnList as $val) { ?>
    <?php if (isset($val['columnImage'])) { ?>

    import uploadImage from '@/components/uploadImage'
    <?php } ?>
    <?php } ?>
    <?php } ?>

    <?php if ($columnList) { ?>
    <?php foreach ($columnList as $val) { ?>
    <?php if (isset($val['columnRow'])) { ?>

    import TinymceEditor from "@/components/TinymceEditor";
    <?php } ?>
    <?php } ?>
    <?php } ?>



    export default {
        name: '<?php echo $entityName ?>Edit',
        emits: [
            'done',
            'update:visible'
        ],
        components: {

            <?php if ($columnList) { ?>
            <?php foreach ($columnList as $val) { ?>
            <?php if (isset($val['columnImage'])) { ?>
            uploadImage,
            <?php } ?>
            <?php if (isset($val['columnRow'])) { ?>
            TinymceEditor,
            <?php } ?>
            <?php } ?>
            <?php } ?>
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
            <?php if ($columnList) { ?>
            <?php foreach ($columnList as $val) { ?>
            <?php if (isset($val['columnValue'])) { ?>
            <?php if (isset($val['columnSwitch']) && $val['columnSwitch']) { ?>

            <?php echo $val['columnName'] ?>: [{
                required: true,
                message: '请输入<?php echo $val['columnComment'] ?>',
                type: 'number',
                trigger: 'blur'
            }],
            <?php } elseif ($val['dataType'] == 'bigint' || $val['dataType'] == 'int' || $val['dataType'] == 'smallint' || $val['dataType'] == 'tinyint') { ?>

            <?php echo $val['columnName'] ?>: [{
                required: true,
                message: '请输入<?php echo $val['columnComment'] ?>',
                type: 'number',
                trigger: 'blur'
            }],
            <?php } elseif ($val['dataType'] == 'date' || $val['dataType'] == 'datetime') { ?>

            <?php echo $val['columnName'] ?>: [{
                required: true,
                message: '请输入<?php echo $val['columnComment'] ?>',
                type: 'number',
                trigger: 'blur'
            }

            <?php } ?>
            <?php } else { ?>
            <?php if ($val['dataType'] == 'varchar') { ?>

            <?php echo $val['columnName'] ?>: [{
                required: true,
                message: '请输入<?php echo $val['columnComment'] ?>',
                type: 'string',
                trigger: 'blur'
            }],
            <?php } else { ?>

            <?php echo $val['columnName'] ?>: [{
                required: true,
                message: '请输入<?php echo $val['columnComment'] ?>',
                type: 'number',
                trigger: 'blur'
            }],
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php } ?>
        },
            // 提交状态
            loading: false,
                // 是否是修改
                isUpdate: false,
            <?php foreach ($columnList as $val) { ?>
            <?php if (isset($val['tmpName'])) { ?>
                <?php echo $val['tmpName']; ?>list: [],
            <?php } ?>
            <?php } ?>
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
            <?php foreach ($columnList as $val) { ?>
            <?php if (isset($val['tmpName'])) { ?>
            this.get<?php echo $val['tmpName']; ?>list();
            <?php } ?>
            <?php } ?>
        },
        methods: {
            /* 保存编辑 */
            save() {
                this.$refs.form.validate().then(() => {
                    this.loading = true;
                    this.$http.post('/<?php echo $moduleName ?>/edit', this.form).then(res => {
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

            <?php foreach ($columnList as $val) { ?>
            <?php if (isset($val['tmpName'])) { ?>
            get<?php echo $val['tmpName']; ?>list() {
                this.$http.post('/<?php echo $val['tmpName']; ?>/getListSelect', this.form).then(res => {
                    this.<?php echo $val['tmpName']; ?>list = res.data.data
                })
            }
            <?php } ?>
            <?php } ?>

        }
    }
</script>

<style scoped>
</style>