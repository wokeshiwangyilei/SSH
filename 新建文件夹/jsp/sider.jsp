<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>

	<div style="width: 135px;min-width:102px;float:left;">
		<div class="sidebar-nav">
			<!-- 一格 -->
			<div class="nav-header">
				<a href="/lms/?s=Admin%2FIndex%2Fwelcome" target="mainFx">后台首页</a>
			</div>
			<!--  end 一格 -->
			
			<!-- 二格 -->
			<div data-target="#default-menu" data-toggle="collapse" class="nav-header collapsed">我的教学 </div>
			<ul class="nav nav-list collapse" id="default-menu" style="height: 0px;">
				<li><a href="/lms/?s=Admin%2FMgrCenter%2Fmy_courses_mgr" target="mainFx">线上课程管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Training%2FMyTrainings%2Fmy_training_mgr" target="mainFx">面授培训管理</a></li>
				<li><a href="/lms/?s=Training%2FMyTrainings%2Fmy_training_enrollment" target="mainFx">面授培训代报名</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Admin%2FMgrCenter%2Fmy_corrected_exam" target="mainFx">在线考试评卷</a></li>
				<li><a href="/lms/?s=Exam%2FEnroll%2Fenroll_admin" target="mainFx">在线考试代报名</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Course%2FCourseApproval%2Faudit_subscribe_course_user" target="mainFx">线上课程报名学习审批</a></li>
				<li><a href="/lms/?s=Course%2FCourseApproval%2Faudit_unsubscribe_course_user" target="mainFx">线上课程取消学习审批</a></li>
				<li><a href="/lms/?s=Course%2FCourseApproval%2Faudit_delay_course_user" target="mainFx">线上课程延期学习审批</a></li>
				<li><a href="/lms/?s=Training%2FMyTrainings%2Fmy_training_list" target="mainFx">面授培训项目报名审批</a></li>
				<li><a href="/lms/?s=Admin%2FUserAudit%2Fuser_audit_list" target="mainFx">注册用户审核</a></li>
			</ul>
			<!-- end 二格-->
			
			<!-- 三格 -->
			<div data-target="#learning-menu" data-toggle="collapse" class="nav-header collapsed">学习管理 </div>
			<ul class="nav nav-list collapse" id="learning-menu" style="height: 0px;">
				<li><a href="/lms/?s=Course%2FCourse%2Fcourse_list_iframe" target="mainFx">线上课程管理</a></li>
				<li><a href="/lms/?s=Course%2FCourseUser%2Fcourse_list_arranged_iframe" target="mainFx">线上课程学员管理</a></li>
				<li><a href="/lms/?s=Course%2FCourseUser%2Fuser_plan_iframe" target="mainFx">学员线上课程安排</a></li>
				<li><a href="/lms/?s=Course%2FCourseUser%2Fbatch_assign_user_course" target="mainFx">批量安排必修课程</a></li>
				<li><a href="/lms/?s=Course%2FCourseUser%2Fcourse_user_manage" target="mainFx">线上课程学习过程管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=LearningPath%2FClass%2Fclass_list" target="mainFx">在线学习计划管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Training%2FTraining%2Ftraining_list" target="mainFx">面授培训项目管理</a></li>
				<li><a href="/lms/?s=Course%2FCourseOffline%2Fcourse_list" target="mainFx">面授课程管理</a></li>
				<li><a href="/lms/?s=Course%2FTutor%2Ftutor_list" target="mainFx">讲师管理</a></li>
				<li><a href="/lms/?s=Training%2FPlace%2Ftraining_place_list" target="mainFx">培训场地管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Admin%2FCertificate%2Fcert_list" target="mainFx">证书管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Course%2FLearningTarget%2Findex" target="mainFx">学员年度学习目标设置</a></li>
				<li><a href="/lms/?s=Training%2FTrainingTarget%2Findex" target="mainFx">部门年度培训目标设置</a></li>
				<li><a href="/lms/?s=Course%2FCoursePackage%2Fcourse_pkg_list" target="mainFx">线上课程包管理</a></li>
			</ul>
			<!-- end 三格-->
		
			<!-- 四格 -->
			<div data-target="#exam-menu" data-toggle="collapse" class="nav-header collapsed">考试管理 </div>
			<ul class="nav nav-list collapse" id="exam-menu" style="height: 0px;">
				<li><a href="/lms/?s=Exam%2FPool%2Fpool_iframe" target="mainFx">综合题库管理</a></li>
				<li><a href="/lms/?s=Exam%2FPaper%2Fpaper_list" target="mainFx">综合试卷管理</a></li>
				<li><a href="/lms/?s=Exam%2FQuiz%2Fquiz_list&amp;type=1" target="mainFx">综合考试管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Exam%2FPool%2Fcourse_pool_list" target="mainFx">课程题库管理</a></li>
				<li><a href="/lms/?s=Exam%2FPaper%2Fcourse_paper_list" target="mainFx">课程试卷管理</a></li>
				<li><a href="/lms/?s=Exam%2FCourseExam%2Fcourse_exam_list_all" target="mainFx">课程考试管理</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Exam%2FCompetition%2Fcompetition_list"  target="mainFx">过关竞赛管理</a></li>
				<li><a href="/lms/?s=Exam%2FQuiz%2Fquiz_list&amp;type=3" target="mainFx">模拟测验管理</a></li>
			</ul>
			<!-- end 四格-->
		
			<!-- 五格 -->
			<div data-target="#res-menu" data-toggle="collapse" class="nav-header collapsed">资源管理
			</div>
			<ul class="nav nav-list collapse" id="res-menu" style="height: 0px;">
				<li><a href="/lms/?s=Survey%2FSurvey%2Fsurvey_list" target="mainFx">调查问卷</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=KnowledgeBase%2FKBContent%2Fkb_iframe" target="mainFx">知识管理</a></li>
				<li><a href="/lms/?s=KnowledgeBase%2FKBContent%2Fkb_shared_iframe" target="mainFx">知识分享审核</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Eva360%2FEva360Template%2Ftemplate_list" target="mainFx">360评估模板管理</a></li>
				<li><a href="/lms/?s=Eva360%2FEva360%2Feva360_list" target="mainFx">360评估问卷管理</a></li>
			</ul>
			<!-- end 五格-->
		
			<!-- 六格 -->
			<div data-target="#info-menu" data-toggle="collapse" class="nav-header">资讯管理
			</div>
			<ul class="nav nav-list collapse" id="info-menu">
				<li><a href="/lms/?s=Admin%2FCms%2Fannouncement_list" target="mainFx">系统公告</a></li>
				<li><a href="/lms/?s=Admin%2FCms%2Fcms_list&amp;type=sys" target="mainFx">公司信息</a></li>
				<li><a href="/lms/?s=Admin%2FCms%2Fcms_list&amp;type=slide_news" target="mainFx">图片资讯</a></li>
				<li><a href="/lms/?s=Admin%2FCms%2Fcms_list&amp;type=dept" target="mainFx">部门信息</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Commons%2FEmail%2Fmail_send" target="mainFx">群发邮件</a></li>
			</ul>
			<!-- end 六格-->
		
			<!-- 七格 -->
			<div data-target="#reporting-menu" data-toggle="collapse"  class="nav-header">报表管理
			</div>
			<ul class="nav nav-list collapse" id="reporting-menu">
				<li><a href="/lms/?s=Reporting%2FLearningSummary%2Findex" target="mainFx">在线课程学习综合查询</a></li>
				<li><a href="/lms/?s=Reporting%2FCourseReporting%2Findex" target="mainFx">在线课程学习档案查询</a></li>
				<li><a href="/lms/?s=Reporting%2FTrainingReporting%2Ftraining_query" target="mainFx">面授培训项目综合查询</a></li>
				<li><a href="/lms/?s=Reporting%2FTrainingReporting%2Ftraining_query2" target="mainFx">面授培训项目汇总查询</a></li>
				<li><a 	href="/lms/?s=Reporting%2FTrainingReporting%2Ftraining_tutor_query" target="mainFx">讲师授课查询</a></li>
				<li><a href="/lms/?s=Reporting%2FUserReporting%2Findex" target="mainFx">个人学习档案查询</a></li>
				<li><a href="/lms/?s=Reporting%2FExamReporting%2Fcourse_exam" target="mainFx">在线课程考试成绩查询</a></li>
				<li><a href="/lms/?s=Reporting%2FExamReporting%2Fgeneral_exam" target="mainFx">综合考试成绩查询</a></li>
				<li><a href="/lms/?s=Reporting%2FCreditReporting%2Fcredit_query" target="mainFx">学分明细查询</a></li>
				<li><a href="/lms/?s=Reporting%2FLearningTimeReporting%2Flearning_time_query"  target="mainFx">学习时间明细查询</a></li>
				<li><a href="/lms/?s=Reporting%2FEnrollmentReporting%2Fenrollment_query" target="mainFx">报名申请查询</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Reporting%2FCreditReporting%2Fcredit_top" target="mainFx">个人获得学分排行榜</a></li>
				<li><a href="/lms/?s=Reporting%2FLearningTimeReporting%2Flearning_time_ranking" target="mainFx">个人学习时间排行榜</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Reporting%2FCreditReporting%2Fdept_learning_credit_stat" target="mainFx">部门获得学分统计</a></li>
				<li><a href="/lms/?s=Reporting%2FLearningSummary%2Fdept_learning_time_stat" target="mainFx">部门学习时间统计</a></li>
				<li><a href="/lms/?s=Reporting%2FTrainingReporting%2Ftraining_stat" target="mainFx">面授培训个人统计</a></li>
				<li><a href="/lms/?s=Reporting%2FTrainingReporting%2Ftraining_stat_dept" target="mainFx">面授培训部门统计</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Reporting%2FLoginStatReporting%2Findex" target="mainFx">访问统计</a></li>
				<li><a href="/lms/?s=Reporting%2FUserReporting%2Fuser_online" target="mainFx">在线用户</a></li>
			</ul>
			<!-- end 七格-->
		
			<!-- 八格 -->
			<div data-target="#system-menu" data-toggle="collapse" class="nav-header">系统管理
			</div>
			<ul class="nav nav-list collapse" id="system-menu">
				<li><a href="/lms/?s=Admin%2FDept%2Fdept_iframe" target="mainFx">部门管理</a></li>
				<li><a href="/lms/?s=Admin%2FUser%2Fuser_iframe" target="mainFx">人员管理</a></li>
				<li><a href="/lms/?s=Admin%2FGroup%2Fgroup_list" target="mainFx">群组管理</a></li>
				<li><a href="/lms/?s=Admin%2FPosition%2Fposition_list" target="mainFx">岗位设置</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Admin%2FAuthority%2Frole_list" target="mainFx">角色管理</a></li>
				<li><a href="/lms/?s=Admin%2FDomain%2Fdomain_iframe" target="mainFx">管理域设置</a></li>
				<li><a href="/lms/?s=Admin%2FDomain%2Fdomain_admin_list" target="mainFx">域管理员设置</a></li>
				<li><a href="/lms/?s=Admin%2FAuthority%2Fquestion_pool_category_list" target="mainFx">题库分类授权</a></li>
				<li><a href="/lms/?s=Admin%2FAuthority%2Fkb_category_iframe" target="mainFx">知识库分类授权</a></li>
				<li class="divider"></li>
				<li><a href="/lms/?s=Admin%2FCategory%2Findex" target="mainFx">分类管理</a></li>
				<li><a href="/lms/?s=Admin%2FTag%2Ftag_list" target="mainFx">标签管理</a></li>
				<li><a href="/lms/?s=Admin%2FTask%2Findex" target="mainFx">能力素质模型管理</a></li>
				<li><a href="/lms/?s=Admin%2FCreditLevel%2Findex" target="mainFx">学习等级设置</a></li>
				<li><a href="/lms/?s=Admin%2FAccount%2Faccount_pool_list" target="mainFx">帐号池管理</a></li>
				<li class="divider"></li>
			</ul>
			<!-- end 八格-->
		
		</div>
	</div>