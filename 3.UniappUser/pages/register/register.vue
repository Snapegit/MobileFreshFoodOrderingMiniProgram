<template>
<view class="content">
	<view class="box" :style='{"minHeight":"100vh","width":"100%","padding":"440rpx 44rpx 244rpx 44rpx","background":"url(http://chy2.gdnxeco.com/20230914/53bc483ddc244b339a5bd89762602c53.jpg) no-repeat center top / 100%,#ffffff","height":"100%"}'>
		<view :style='{"padding":"48rpx 48rpx 24rpx 48rpx","boxShadow":"0px 0px 0px #dddddd","borderRadius":"0px","background":"none","display":"block","width":"100%","height":"auto"}'>
			<image :style='{"width":"160rpx","margin":"0","borderRadius":"100%","objectFit":"cover","display":"none","height":"160rpx"}' src="http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg" mode="aspectFill"></image>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.yonghuzhanghao" type="text" class="uni-input" name="" placeholder="用户账号" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}' v-model="ruleForm.yonghumima" type="password" class="uni-input" name="" placeholder="用户密码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}' v-model="ruleForm.yonghumima2" type="password" class="uni-input" name="" placeholder="确认用户密码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.yonghuxingming" type="text" class="uni-input" name="" placeholder="用户姓名" />
			</view>
            <view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" @tap="yonghutouxiangTap" class="">
                <view>请上传头像</view>
                <image :style='{"width":"160rpx","borderRadius":"16rpx","objectFit":"contain","display":"block","height":"160rpx"}' v-if="ruleForm.touxiang" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
                <image :style='{"width":"160rpx","borderRadius":"16rpx","objectFit":"contain","display":"block","height":"160rpx"}' v-else class="avator" src="../../static/gen/upload.png" mode=""></image>
            </view>
			<picker :style='{"border":"2rpx solid #dddddd","padding":"0 20rpx 0 0","margin":"0 0 24rpx 0","borderRadius":"60rpx","background":"#ffffff","width":"100%","height":"auto"}' v-if="tableName=='yonghu'"  @change="yonghuxingbieChange" :value="yonghuxingbieIndex" :range="yonghuxingbieOptions">
				<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"#666666"}' class="uni-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
			</picker>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.shoujihaoma" type="text" class="uni-input" name="" placeholder="手机号码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.pquestion" type="text" class="uni-input" name="" placeholder="密保问题" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='yonghu'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.panswer" type="text" class="uni-input" name="" placeholder="密保答案" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.qishouzhanghao" type="text" class="uni-input" name="" placeholder="骑手账号" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}' v-model="ruleForm.mima" type="password" class="uni-input" name="" placeholder="密码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}' v-model="ruleForm.mima2" type="password" class="uni-input" name="" placeholder="确认密码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.qishouxingming" type="text" class="uni-input" name="" placeholder="骑手姓名" />
			</view>
            <view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" @tap="qishoutouxiangTap" class="">
                <view>请上传头像</view>
                <image :style='{"width":"160rpx","borderRadius":"16rpx","objectFit":"contain","display":"block","height":"160rpx"}' v-if="ruleForm.touxiang" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
                <image :style='{"width":"160rpx","borderRadius":"16rpx","objectFit":"contain","display":"block","height":"160rpx"}' v-else class="avator" src="../../static/gen/upload.png" mode=""></image>
            </view>
			<picker :style='{"border":"2rpx solid #dddddd","padding":"0 20rpx 0 0","margin":"0 0 24rpx 0","borderRadius":"60rpx","background":"#ffffff","width":"100%","height":"auto"}' v-if="tableName=='qishou'"  @change="qishouxingbieChange" :value="qishouxingbieIndex" :range="qishouxingbieOptions">
				<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"#666666"}' class="uni-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
			</picker>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.lianxidianhua" type="text" class="uni-input" name="" placeholder="联系电话" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.pquestion" type="text" class="uni-input" name="" placeholder="密保问题" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='qishou'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.panswer" type="text" class="uni-input" name="" placeholder="密保答案" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.shangjiazhanghao" type="text" class="uni-input" name="" placeholder="商家账号" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}' v-model="ruleForm.mima" type="password" class="uni-input" name="" placeholder="密码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}' v-model="ruleForm.mima2" type="password" class="uni-input" name="" placeholder="确认密码" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.shangjiaxingming" type="text" class="uni-input" name="" placeholder="商家姓名" />
			</view>
            <view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" @tap="shangjiatouxiangTap" class="">
                <view>请上传头像</view>
                <image :style='{"width":"160rpx","borderRadius":"16rpx","objectFit":"contain","display":"block","height":"160rpx"}' v-if="ruleForm.touxiang" class="avator" :src="baseUrl+ruleForm.touxiang" mode=""></image>
                <image :style='{"width":"160rpx","borderRadius":"16rpx","objectFit":"contain","display":"block","height":"160rpx"}' v-else class="avator" src="../../static/gen/upload.png" mode=""></image>
            </view>
			<picker :style='{"border":"2rpx solid #dddddd","padding":"0 20rpx 0 0","margin":"0 0 24rpx 0","borderRadius":"60rpx","background":"#ffffff","width":"100%","height":"auto"}' v-if="tableName=='shangjia'"  @change="shangjiaxingbieChange" :value="shangjiaxingbieIndex" :range="shangjiaxingbieOptions">
				<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"#666666"}' class="uni-input">{{ruleForm.xingbie?ruleForm.xingbie:"请选择性别"}}</view>
			</picker>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.shouji" type="text" class="uni-input" name="" placeholder="手机" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.dizhi" type="text" class="uni-input" name="" placeholder="地址" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.pquestion" type="text" class="uni-input" name="" placeholder="密保问题" />
			</view>
			<view :style='{"width":"100%","margin":"0 0 24rpx 0","height":"auto"}' v-if="tableName=='shangjia'" class="uni-form-item uni-column">
				<input :style='{"border":"2rpx solid #dddddd","padding":"0px 24rpx 0 24rpx","margin":"0 0 0px 0","color":"#666666","borderRadius":"60rpx","background":"#ffffff","borderWidth":"0 0 2rpx 0","width":"100%","fontSize":"28rpx","height":"80rpx"}'  v-model="ruleForm.panswer" type="text" class="uni-input" name="" placeholder="密保答案" />
			</view>
			<button :style='{"border":"0","padding":"0 0 0 0","margin":"0 0 24rpx 0","color":"#ffffff","borderRadius":"60rpx","background":"#a1d1ff","width":"100%","lineHeight":"88rpx","fontSize":"32rpx","height":"88rpx"}' class="btn-submit" @tap="register" type="primary">注册</button>
		</view>
	</view>
</view>
</template>

<script>
    import multipleSelect from "@/components/momo-multipleSelect/momo-multipleSelect";
	export default {
		data() {
			return {
                yonghuxingbieOptions: [],
                yonghuxingbieIndex: 0,
                qishouxingbieOptions: [],
                qishouxingbieIndex: 0,
                shangjiaxingbieOptions: [],
                shangjiaxingbieIndex: 0,
				ruleForm: {
                yonghuzhanghao: '',
                yonghumima: '',
                yonghuxingming: '',
                touxiang: '',
                xingbie: '',
                shoujihaoma: '',
                pquestion: '',
                panswer: '',
                money: '',
                qishouzhanghao: '',
                mima: '',
                qishouxingming: '',
                touxiang: '',
                xingbie: '',
                lianxidianhua: '',
                sfsh: '待审核',
                shhf: '',
                pquestion: '',
                panswer: '',
                money: '',
                shangjiazhanghao: '',
                mima: '',
                shangjiaxingming: '',
                touxiang: '',
                xingbie: '',
                shouji: '',
                dizhi: '',
                sfsh: '待审核',
                shhf: '',
                pquestion: '',
                panswer: '',
				},
				tableName:""
			}
		},
        components: {
            multipleSelect
        },
        computed: {
            baseUrl() {
                return this.$base.url;
            },
        },
		async onLoad() {
			let res = [];
			let table = uni.getStorageSync("loginTable");
            this.tableName = table;

			// 自定义下拉框值
			if(this.tableName=='yonghu'){
                this.yonghuxingbieOptions = "男,女".split(',');
				this.ruleForm.xingbie=this.yonghuxingbieOptions[0]
			}
			// 自定义下拉框值
			if(this.tableName=='qishou'){
                this.qishouxingbieOptions = "男,女".split(',');
				this.ruleForm.xingbie=this.qishouxingbieOptions[0]
			}
            if(`qishou` == this.tableName){
                this.ruleForm.sfsh='待审核'
            }
			// 自定义下拉框值
			if(this.tableName=='shangjia'){
                this.shangjiaxingbieOptions = "男,女".split(',');
				this.ruleForm.xingbie=this.shangjiaxingbieOptions[0]
			}
            if(`shangjia` == this.tableName){
                this.ruleForm.sfsh='待审核'
            }
			
			this.styleChange()
		},
		methods: {

            yonghutouxiangTap() {
                let _this = this;
                this.$api.upload(function(res) {
                    _this.ruleForm.touxiang = 'file/' + res.file;
                    _this.$forceUpdate();
                });
            },
            // 下拉变化
            yonghuxingbieChange(e) {
                    this.yonghuxingbieIndex = e.target.value
                    this.ruleForm.xingbie = this.yonghuxingbieOptions[this.yonghuxingbieIndex]
            },
            qishoutouxiangTap() {
                let _this = this;
                this.$api.upload(function(res) {
                    _this.ruleForm.touxiang = 'file/' + res.file;
                    _this.$forceUpdate();
                });
            },
            // 下拉变化
            qishouxingbieChange(e) {
                    this.qishouxingbieIndex = e.target.value
                    this.ruleForm.xingbie = this.qishouxingbieOptions[this.qishouxingbieIndex]
            },
            shangjiatouxiangTap() {
                let _this = this;
                this.$api.upload(function(res) {
                    _this.ruleForm.touxiang = 'file/' + res.file;
                    _this.$forceUpdate();
                });
            },
            // 下拉变化
            shangjiaxingbieChange(e) {
                    this.shangjiaxingbieIndex = e.target.value
                    this.ruleForm.xingbie = this.shangjiaxingbieOptions[this.shangjiaxingbieIndex]
            },
            toggleTab(str) {
                this.$refs[str].show();
            },

			styleChange() {
				this.$nextTick(()=>{
					document.querySelectorAll('.radioText').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"color":"#666666","display":"inline-block"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.radioTextActive').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"color":"#666666","display":"inline-block"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.checkText').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"color":"#666666"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.checkTextActive').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"color":"#666666"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-radio-input').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #eeeeee","outlineColor":"#666666","background":"#ffffff","display":"inline-block"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-radio-input-checked').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #C6EBF1","textAlign":"center","background":"#C6EBF1","display":"inline-block"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-checkbox-input').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #eeeeee","borderColor":"#666666","borderRadius":"40rpx","background":"#ffffff"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-checkbox-input-checked').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"borderColor":"#C6EBF1","color":"#ffffff","borderRadius":"40rpx","background":"#C6EBF1"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
				})
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			// 注册
			async register() {
				if((!this.ruleForm.yonghuzhanghao) && `yonghu` == this.tableName){
					this.$utils.msg(`用户账号不能为空`);
					return
				}
				if((!this.ruleForm.yonghumima) && `yonghu` == this.tableName){
					this.$utils.msg(`用户密码不能为空`);
					return
				}
                if(`yonghu` == this.tableName && (this.ruleForm.yonghumima!=this.ruleForm.yonghumima2)){
                    this.$utils.msg(`两次密码输入不一致`);
                    return
                }
				if((!this.ruleForm.yonghuxingming) && `yonghu` == this.tableName){
					this.$utils.msg(`用户姓名不能为空`);
					return
				}
				if(`yonghu` == this.tableName && this.ruleForm.shoujihaoma&&(!this.$validate.isMobile(this.ruleForm.shoujihaoma))){
					this.$utils.msg(`手机号码应输入手机格式`);
					return
				}
				if(`yonghu` == this.tableName && this.ruleForm.money&&(!this.$validate.isNumber(this.ruleForm.money))){
					this.$utils.msg(`余额应输入数字`);
					return
				}
				if((!this.ruleForm.qishouzhanghao) && `qishou` == this.tableName){
					this.$utils.msg(`骑手账号不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `qishou` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
                if(`qishou` == this.tableName && (this.ruleForm.mima!=this.ruleForm.mima2)){
                    this.$utils.msg(`两次密码输入不一致`);
                    return
                }
				if((!this.ruleForm.qishouxingming) && `qishou` == this.tableName){
					this.$utils.msg(`骑手姓名不能为空`);
					return
				}
				if(`qishou` == this.tableName && this.ruleForm.lianxidianhua&&(!this.$validate.isMobile(this.ruleForm.lianxidianhua))){
					this.$utils.msg(`联系电话应输入手机格式`);
					return
				}
				if(`qishou` == this.tableName && this.ruleForm.money&&(!this.$validate.isNumber(this.ruleForm.money))){
					this.$utils.msg(`余额应输入数字`);
					return
				}
				if((!this.ruleForm.shangjiazhanghao) && `shangjia` == this.tableName){
					this.$utils.msg(`商家账号不能为空`);
					return
				}
				if((!this.ruleForm.mima) && `shangjia` == this.tableName){
					this.$utils.msg(`密码不能为空`);
					return
				}
                if(`shangjia` == this.tableName && (this.ruleForm.mima!=this.ruleForm.mima2)){
                    this.$utils.msg(`两次密码输入不一致`);
                    return
                }
				if((!this.ruleForm.shangjiaxingming) && `shangjia` == this.tableName){
					this.$utils.msg(`商家姓名不能为空`);
					return
				}
				if(`shangjia` == this.tableName && this.ruleForm.shouji&&(!this.$validate.isMobile(this.ruleForm.shouji))){
					this.$utils.msg(`手机应输入手机格式`);
					return
				}
				await this.$api.register(`${this.tableName}`, this.ruleForm);
				this.$utils.msgBack('注册成功');;
			}
		}
	}
</script>

<style lang="scss" scoped>
	.content {
		min-height: calc(100vh - 44px);
		box-sizing: border-box;
	}
</style>
