<template>
<view class="content">
	<view :style='{"width":"100%","padding":"0 0 0 0","position":"relative","background":"#ffffff","height":"100%"}'>
		<form :style='{"width":"100%","padding":"24rpx 24rpx 24rpx 24rpx","background":"#ffffff","display":"block","height":"auto"}' class="app-update-pv">
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">商品名称</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.shangpinmingcheng" v-model="ruleForm.shangpinmingcheng" placeholder="商品名称"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="" @tap="shangpintupianTap">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">商品图片</view>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' class="avator" v-if="ruleForm.shangpintupian" :src="baseUrl+ruleForm.shangpintupian.split(',')[0]" mode="aspectFill"></image>
				<image :style='{"width":"80rpx","borderRadius":"100%","objectFit":"cover","display":"block","height":"80rpx"}' class="avator" v-else src="../../static/gen/upload.png" mode="aspectFill"></image>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="select">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">商品分类</view>
				<picker :style='{"width":"100%","flex":"1","height":"auto"}' @change="shangpinfenleiChange" :value="shangpinfenleiIndex"  :range="shangpinfenleiOptions">
					<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"#666666"}' class="uni-input">{{ruleForm.shangpinfenlei?ruleForm.shangpinfenlei:"请选择商品分类"}}</view>
				</picker>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">规格</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.guige" v-model="ruleForm.guige" placeholder="规格"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">保质期</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.baozhiqi" v-model="ruleForm.baozhiqi" placeholder="保质期"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">单限</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.onelimittimes" v-model="ruleForm.onelimittimes" placeholder="单限"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">库存</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.alllimittimes" v-model="ruleForm.alllimittimes" placeholder="库存"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">收藏数量</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.storeupnum" v-model="ruleForm.storeupnum" placeholder="收藏数量"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">价格</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.price" v-model="ruleForm.price" placeholder="价格"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">商家账号</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.shangjiazhanghao" v-model="ruleForm.shangjiazhanghao" placeholder="商家账号"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">商家姓名</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.shangjiaxingming" v-model="ruleForm.shangjiaxingming" placeholder="商家姓名"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">地址</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' :disabled="ro.dizhi" v-model="ruleForm.dizhi" placeholder="地址"></input>
			</view>
			<view :style='{"padding":"4rpx 0 4rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","alignItems":"center","borderRadius":"8rpx 0 0 8rpx","borderWidth":"0px","background":"#C6EBF130","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"160rpx","padding":"0 20rpx 0 0","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","textAlign":"right"}' class="title">发布时间</view>
				<input :style='{"border":"0px solid #eeeeee","padding":"0px 24rpx 0px 24rpx","margin":"0 0 0 0","color":"#666666","borderRadius":"8rpx","flex":"1","background":"#ffffff00","fontSize":"28rpx","lineHeight":"80rpx","height":"80rpx"}' v-model="ruleForm.fabushijian" placeholder="发布时间" @tap="toggleTab('fabushijian')"></input>
			</view>
			
			<!-- 否 -->
 

			
			<view :style='{"padding":"12rpx 0 12rpx 0","margin":"0 0 24rpx 0","borderColor":"#cccccc","borderWidth":"0 0 0px 0","width":"100%","borderStyle":"solid","height":"auto"}' class="">
				<view :style='{"width":"100%","lineHeight":"80rpx","fontSize":"28rpx","color":"#333333","fontWeight":"500"}' class="title">商品详情</view>
                <xia-editor ref="editor" :style='{"minHeight":"300rpx","border":"0px solid #efefef","padding":"20rpx","color":"#666666","borderRadius":"8rpx 0 0 8rpx","background":"#C6EBF130","width":"100%","height":"auto"}' v-model="ruleForm.shangpinxiangqing" placeholder="商品详情" @editorChange="shangpinxiangqingChange"></xia-editor>
			</view>
			
			<view :style='{"width":"100%","justifyContent":"center","display":"flex","height":"auto"}' class="btn" >
				<button :style='{"border":"0px solid #eeeeee","padding":"0 0 0 0","margin":"0 4% 0 0","color":"#333","borderRadius":"8rpx","background":"#C6EBF1","width":"30%","lineHeight":"80rpx","fontSize":"28rpx","height":"80rpx"}' @tap="onSubmitTap" class="bg-red">提交</button>
			</view>
		</form>

		<w-picker mode="dateTime" step="1" :current="false" :hasSecond="false" @confirm="fabushijianConfirm" ref="fabushijian" themeColor="#333333"></w-picker>
		<w-picker mode="dateTime" step="1" :current="false" :hasSecond="false" @confirm="clicktimeConfirm" ref="clicktime" themeColor="#333333"></w-picker>
	</view>
</view>
</template>

<script>
	import wPicker from "@/components/w-picker/w-picker.vue";
    import xiaEditor from '@/components/xia-editor/xia-editor';
    import multipleSelect from "@/components/momo-multipleSelect/momo-multipleSelect";
	export default {
		data() {
			return {
				cross:'',
				ruleForm: {
				shangpinmingcheng: '',
				shangpintupian: '',
				shangpinfenlei: '',
				guige: '',
				baozhiqi: '',
				shangpinxiangqing: '',
			        onelimittimes: '-1',
			        alllimittimes: '-1',
			        storeupnum: '0',
			        price: '0',
				shangjiazhanghao: '',
				shangjiaxingming: '',
				dizhi: '',
				fabushijian: '',
			        clicknum: '0',
				},
				shangpinfenleiOptions: [],
				shangpinfenleiIndex: 0,
				// 登录用户信息
				user: {},
                ro:{
                   shangpinmingcheng : false,
                   shangpintupian : false,
                   shangpinfenlei : false,
                   guige : false,
                   baozhiqi : false,
                   shangpinxiangqing : false,
                   onelimittimes : false,
                   alllimittimes : false,
                   storeupnum : false,
                   price : false,
                   shangjiazhanghao : false,
                   shangjiaxingming : false,
                   dizhi : false,
                   fabushijian : false,
                   clicktime : false,
                   clicknum : false,
                },
			}
		},
		components: {
			wPicker,
            xiaEditor,
            multipleSelect
		},
		watch:{
		},
		async onLoad(options) {
            this.ruleForm.fabushijian = this.$utils.getCurDateTime();

			let table = uni.getStorageSync("nowTable");
			// 获取用户信息
			let res = await this.$api.session(table);
			this.user = res.data;
			
			// ss读取
			this.ruleForm.shangjiazhanghao = this.user.shangjiazhanghao
			this.ro.shangjiazhanghao = true;
			this.ruleForm.shangjiaxingming = this.user.shangjiaxingming
			this.ro.shangjiaxingming = true;
			this.ruleForm.dizhi = this.user.dizhi
			this.ro.dizhi = true;


			// 下拉框
			res = await this.$api.option(`shangpinfenlei`,`shangpinfenlei`,{});
			this.shangpinfenleiOptions = res.data;
            this.shangpinfenleiOptions.unshift("请选择商品分类");

			// 如果有登录，获取登录后保存的userid
			this.ruleForm.userid = uni.getStorageSync("userid")
			if (options.refid) {
				// 如果上一级页面传递了refid，获取改refid数据信息
				this.ruleForm.refid = options.refid;
				this.ruleForm.nickname = uni.getStorageSync("nickname");
			}
			// 如果是更新操作
			if (options.id) {
				this.ruleForm.id = options.id;
				// 获取信息
				res = await this.$api.info(`shangpinxinxi`, this.ruleForm.id);
				this.ruleForm = res.data;
			}
			// 跨表
			this.cross = options.cross;
			if(options.cross){
				var obj = uni.getStorageSync('crossObj');
				for (var o in obj){
					if(o=='shangpinmingcheng'){
					this.ruleForm.shangpinmingcheng = obj[o];
					this.ro.shangpinmingcheng = true;
					continue;
					}
					if(o=='shangpintupian'){
					this.ruleForm.shangpintupian = obj[o].split(",")[0];
					this.ro.shangpintupian = true;
					continue;
					}
					if(o=='shangpinfenlei'){
					this.ruleForm.shangpinfenlei = obj[o];
					this.ro.shangpinfenlei = true;
					continue;
					}
					if(o=='guige'){
					this.ruleForm.guige = obj[o];
					this.ro.guige = true;
					continue;
					}
					if(o=='baozhiqi'){
					this.ruleForm.baozhiqi = obj[o];
					this.ro.baozhiqi = true;
					continue;
					}
					if(o=='shangpinxiangqing'){
					this.ruleForm.shangpinxiangqing = obj[o];
					this.ro.shangpinxiangqing = true;
					continue;
					}
					if(o=='onelimittimes'){
					this.ruleForm.onelimittimes = obj[o];
					this.ro.onelimittimes = true;
					continue;
					}
					if(o=='alllimittimes'){
					this.ruleForm.alllimittimes = obj[o];
					this.ro.alllimittimes = true;
					continue;
					}
					if(o=='storeupnum'){
					this.ruleForm.storeupnum = obj[o];
					this.ro.storeupnum = true;
					continue;
					}
					if(o=='price'){
					this.ruleForm.price = obj[o];
					this.ro.price = true;
					continue;
					}
					if(o=='shangjiazhanghao'){
					this.ruleForm.shangjiazhanghao = obj[o];
					this.ro.shangjiazhanghao = true;
					continue;
					}
					if(o=='shangjiaxingming'){
					this.ruleForm.shangjiaxingming = obj[o];
					this.ro.shangjiaxingming = true;
					continue;
					}
					if(o=='dizhi'){
					this.ruleForm.dizhi = obj[o];
					this.ro.dizhi = true;
					continue;
					}
					if(o=='fabushijian'){
					this.ruleForm.fabushijian = obj[o];
					this.ro.fabushijian = true;
					continue;
					}
					if(o=='clicktime'){
					this.ruleForm.clicktime = obj[o];
					this.ro.clicktime = true;
					continue;
					}
					if(o=='clicknum'){
					this.ruleForm.clicknum = obj[o];
					this.ro.clicknum = true;
					continue;
					}
				}
			}
			this.styleChange()
            this.$forceUpdate()
		},
		methods: {
            shangpinxiangqingChange(e) {
                this.ruleForm.shangpinxiangqing = e
            },
			styleChange() {
				this.$nextTick(()=>{
					document.querySelectorAll('.radioText').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"color":"#666666"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.radioTextActive').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"color":"#00babd"}
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
					  const icon = {"color":"#00babd"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-radio-input').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #999999","borderRadius":"100%","background":"#ffffff"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-radio-input-checked').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #00babd","borderRadius":"100%","background":"#19d2d5"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-checkbox-input').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #999999","borderRadius":"100%","background":"#ffffff"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
					document.querySelectorAll('.uni-checkbox-input-checked').forEach(el => {
					  el.removeAttribute('style')
					  const icon = {"border":"2rpx solid #00babd","color":"#ffffff","borderRadius":"100%","background":"#19d2d5"}
					  Object.keys(icon).forEach((key) => {
						el.style[key] = icon[key]
					  })
					})
				})
			},

			// 多级联动参数

			// 日长控件选择日期时间
			fabushijianConfirm(val) {
				console.log(val)
				this.ruleForm.fabushijian = val.result;
				this.$forceUpdate();
			},
			// 日长控件选择日期时间
			clicktimeConfirm(val) {
				console.log(val)
				this.ruleForm.clicktime = val.result;
				this.$forceUpdate();
			},

			// 下拉变化
			shangpinfenleiChange(e) {
				this.shangpinfenleiIndex = e.target.value
				this.ruleForm.shangpinfenlei = this.shangpinfenleiOptions[this.shangpinfenleiIndex]
			},

			shangpintupianTap() {
				let _this = this;
				this.$api.upload(function(res) {
					_this.ruleForm.shangpintupian = 'file/' + res.file;
					_this.$forceUpdate();
					_this.$nextTick(()=>{
						_this.styleChange()
					})
				});
			},

			getUUID () {
				return new Date().getTime();
			},
			async onSubmitTap() {

































//跨表计算判断
				var obj;
				if((!this.ruleForm.shangpinmingcheng)){
					this.$utils.msg(`商品名称不能为空`);
					return
				}
				if((!this.ruleForm.shangpinfenlei)){
					this.$utils.msg(`商品分类不能为空`);
					return
				}
				if(this.ruleForm.onelimittimes&&(!this.$validate.isIntNumer(this.ruleForm.onelimittimes))){
					this.$utils.msg(`单限应输入整数`);
					return
				}
				if(this.ruleForm.alllimittimes&&(!this.$validate.isIntNumer(this.ruleForm.alllimittimes))){
					this.$utils.msg(`库存应输入整数`);
					return
				}
				if(this.ruleForm.storeupnum&&(!this.$validate.isIntNumer(this.ruleForm.storeupnum))){
					this.$utils.msg(`收藏数量应输入整数`);
					return
				}
				if(this.ruleForm.price&&(!this.$validate.isNumber(this.ruleForm.price))){
					this.$utils.msg(`价格应输入数字`);
					return
				}
				if(this.ruleForm.clicknum&&(!this.$validate.isIntNumer(this.ruleForm.clicknum))){
					this.$utils.msg(`点击次数应输入整数`);
					return
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(this.cross){
                    uni.setStorageSync('crossCleanType',true);
					var statusColumnName = uni.getStorageSync('statusColumnName');
					var statusColumnValue = uni.getStorageSync('statusColumnValue');
					if(statusColumnName!='') {
                        if(!obj) {
						    obj = uni.getStorageSync('crossObj');
                        }
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}

							}
							var table = uni.getStorageSync('crossTable');
							await this.$api.update(`${table}`, obj);
						} else {
						       crossuserid=Number(uni.getStorageSync('userid'));
						       crossrefid=obj['id'];
						       crossoptnum=uni.getStorageSync('statusColumnName');
						       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					this.ruleForm.crossuserid=crossuserid;
					this.ruleForm.crossrefid=crossrefid;
					let params = {
						page: 1,
						limit:10,
						crossuserid:crossuserid,
						crossrefid:crossrefid,
					}
					let res = await this.$api.list(`shangpinxinxi`, params);
					if (res.data.total >= crossoptnum) {
						this.$utils.msg(uni.getStorageSync('tips'));
                        uni.removeStorageSync('crossCleanType');
						return false;
					} else {
                //跨表计算
						if(this.ruleForm.id){
							await this.$api.update(`shangpinxinxi`, this.ruleForm);
						}else{
							await this.$api.add(`shangpinxinxi`, this.ruleForm);
						}
						this.$utils.msgBack('提交成功');
					}
				} else {
                //跨表计算
					if(this.ruleForm.id){
						await this.$api.update(`shangpinxinxi`, this.ruleForm);
					}else{
						await this.$api.add(`shangpinxinxi`, this.ruleForm);
					}
					this.$utils.msgBack('提交成功');
				}
			},
			optionsChange(e) {
				this.index = e.target.value
			},
			bindDateChange(e) {
				this.date = e.target.value
			},
			getDate(type) {
				const date = new Date();
				let year = date.getFullYear();
				let month = date.getMonth() + 1;
				let day = date.getDate();
				if (type === 'start') {
					year = year - 60;
				} else if (type === 'end') {
					year = year + 2;
				}
				month = month > 9 ? month : '0' + month;;
				day = day > 9 ? day : '0' + day;
				return `${year}-${month}-${day}`;
			},
			toggleTab(str) {
				this.$refs[str].show();
			},
		}
	}
</script>

<style lang="scss" scoped>
	.content {
		min-height: calc(100vh - 44px);
		box-sizing: border-box;
	}
</style>
