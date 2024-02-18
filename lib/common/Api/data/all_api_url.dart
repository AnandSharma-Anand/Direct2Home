import 'package:get/get.dart';

final RxBool _showhide = false.obs;
bool get showhide => _showhide.value;
set showhide (bool v) => _showhide.value = v;
final RxBool _showhidesearch = false.obs;
bool get showhidesearch => _showhidesearch.value;
set showhidesearch (bool v) => _showhidesearch.value = v;



String KSignUp = "auth/signup";
String KSupportboat = "https://alts.aasoka.com/supportboard/include/api.php";
String KLogin = "auth/login";
String Kcategoriesfeatured = "categories/featured";
String Kcategories = "categories";
String Ksubcategories = "sub-categories";
String Kproductbycategories = "products/category";
String KproductbyID = "products";
String Kbanners = "banners";
String Ksliders = "sliders";
String Kbrand = "brands";
String KbrandProduct = "products/brand";
String KrelatedProduct = "products/related";
String KtopSellerProduct = "products/top-from-seller";
String KAttendance = "getattendancenew";
String KForgotPassword = "forgotpassword";
String KResetOtpVerified = "reset_otp_verified";
String KResetPassword = "reset_password";
String KOtpVerified = "otp_verified";
String KLogout = "Account/LogOut";
String KGetProfile = "get_profile";
String KUpdateProfile = "updateprofile";
String KGetStateList = "getstatelist";
String KGetCityList = "getcitylistbystateid";
String KGetClassRoutineList = "gettimetable";
String KGetClassListofTeacher = "getclasslistofteacher";
String KGetSectionByClassId = "getsectionbyclassid";
String KGetStudentList = "getstudentlist";
String KGetStudentListNew = "getstudentlistnew";
String KStudentAttendanceMark = "studentattendancemark";
String KNoticeBoard= "getnoticeboard";
String KHomeWorkCreatedListForStudent= "gethomeworkcreatedlistforstudent";
String KGetClassesByTeacher= "getclassesbyteacher";
String KGetSectionsByClass= "getsectionsbyclass";
String KGetSubjectBySections= "getsubjectsbysectionclass";
String KHomeWorkCreatedByTeacher= "homeworkcreatedbyteacher";
String KHomeWorkListFromTeacherSide= "gethomeworklistfromteachersideBySubjectId";
String KHomeWorkSubmitUpdateByStudent= "homeworksubmitupdatebystudent";
String KHomeWorkListSubmittedByStudent= "gethomeworklistsubmittedbystudent";
String KHomeWorkStatusUpdateByTeacher= "statusupdatebyteacher";
String KHomeWorkSaveMultipleFiles= "savemultiplefiles";
String KGetVehiclelList= "getvehiclelist";
String KGetApiSubjectList= "getapisubjectList";
String KGetConentVideoList= "getconentvideolist";
String KGetSingleContentVideo= "getsinglecontentvideo";
String KGetTeacherSubjectAssignList= "getteachersubjectassignlist";
String KGetApiTopicListTeacher= "getapitopicListTeacher";
String KGetExamReport= "getexamreport_beta";
String KGetFeeCollectionByStudentId= "getfeecollectionbystudentid";
String KGetEventList= "geteventList";
String KCreateEvents= "createevents";
String KGetEventForlist= "geteventforlist";
String KGetChildrenList= "getchildrenlist";
String KGetIssueBooklist= "getissuebooklist";
String KGetLiveClasslist= "getliveclasslist";
String KGetLiveClassSchedulelist= "getliveclassschedulelist";
String KGetSaveLiveClassScheduling= "saveliveclassscheduling";
String KGetAlertNotificationList= "getalertnotificationlist";
String KGetReadAlertMessage= "markreadalertmessage";
String KGetChapterList= "getchapterlist";
String KGetTeacherChapterList= "getteacherchapterlist";
String KGetprofile= "getuserprofiledetails";
String KDynamicModule= "dynamicmodule";
String KCreateTicket="creattickets";
String KGetAllTickets="getticketreplylist";
String KGetReplyListByTicketID="getReplyListByTicketID";
String KGetReplyOfReplyAndTickets="replyofreplyandtickets";
String KStartAssessment="startassessmenttest";
String KTeacherClasses="getebookclasslist";
String KEbookList="getebooklistbygradeid";

/*=======Assessment Module=======*/
String KGetAssessmentStudentList= "getassessmentstudentlist";
String KGetAssessmentList= "getassessmentlist";
String KGetAssessmentAttempt="getassessmentattemptlist";
String KGetAssessmentStudentClassSectionList="getstudentlistbyclasssection";
String KGetChapterListForAssessmentList="getchapterlistforassessment";
String KGetSubjectListByClass="getsubjectlistbyclass";
String KSubmitAssessment="assessmentsubmittedbystudent";
String KGetTeacherManualList="getteachermanuallist";
String KAssessmentSchedule="assessmentschedule";
String KAssessmentResult="getassessmentresult";
String KGetAssessmentSolution="getassessmentsolution";
String KGetAssessmentincorrect="getassessmentcorrectincorrect";
String KGetchapterlistforall="getchapterlistforall";
String KGetcontenttypelist="getcontenttypelist";
String KGetContentList="getcontentlist";
String KTeacherContentCreateUpdate="teachercontentcreateupdate";
String KTeacherContentDelete="teachercontentdelete";
String ChatBotApi="chatbot";
String KUserListForIM="getuserlistforinternalmeeting";
String KScheleIM="scheduleinternalmeeting";
String KIMList="getinternalmeetinglist";
String KIMCancel="cancelinternalmeeting";
String KTopicListByChapterId="gettopiclistbychapterid";
String KSingleLectureVideo="getsinglelecturevideo";
String KNcertListByGradeId="getncertlistbygradeid";
String KProgressSubjectList="assessmentsubjectlistperstudent";
String KAssessmentProgressReport="assessmentprogressreport";
String KStudentListParentProgress="studentlistforteacher";
String KPracticetestSchedule="practicetestschedule";
String Kgetstudentpracticetestlist="getstudentpracticetestlist";
String KSubmitpracticeTest="practicetestsubmit";
String KGetPracticeTestResult="getpracticetestresult";
String KGetSolveSolutionListByGradeId="getsolvesolutionlistbygradeid";
String KPracticeTestProgressReport="practicetestprogressreport";
String KDeleteHomework="deletehomework";
String KAskQuestion="askquestion";
String KGetAskQuestionList="getaskquestionlist";
String KAskReplyByStudentTeacher="askreplybystudentteacher";
String KGetAskConversationList="getaskconversationlist";
String KAssessmentDelete="assessmentdelete";
String KAskConversation="getaskconversationlist";
String KAskReply="askreplybystudentteacher";
String KDeleteConversation="conversationdelete";
String KUpdateConversation="conversationupdate";
String KDeleteAskQuestion="askquestiondelete";
String KAssessmentQuestionPaper="assessmentquestionpaper";
String KGetattendanceListbyteacher="getattendancelistbyteachernew";
String KGetCardList="get-cards-subject-name";
String KGetSubjectCards="getCardsSubjectNameNew";
String KGetCards="getCardsLisNew";
String KAddRemoveBookmark="bookmark-video";
String KBookmarkList="bookmark-list";
String KChekBookmark="check-bookmarked";

/*----------leave Module------------*/
String kLeaveApply="NewLeaveApply";
String kLeaveAproved="leaveaproved";
String kLeaveDelete="leavedelete";
String kLeaveRejected="leaverejected";
String kLeaveListForTeacher="leavelistforteachernew";
String kLeaveListForStudent="leavelistforstudentnew";
String kLeaveClassesList="getClassTeacherClasses";
String kLeaveCount="getleavecount";


/*-----------------assignmentModule-----------------------*/
String kassignmentSubmissionUpdateByStudent="assignment-submission-update-by-student";
String kgetAssignmentCreatedListForStudent="get-assignment-created-list-for-student";
String kAssignmentCreatedByTeacher="assignment-created-by-teacher";
String kAssignmentListFromTeacherSide="get-assignment-list-from-teachersideBySubjectId";
String kAssignmentListFromStudentSide="get-assignment-created-list-for-student";
String kAssignmentSubmissionUpdateFromStudent="assignment-submission-update-by-student";
String KSaveMultipleFilesForAssignment= "savemultiplefilesforassignment";
String kAssignmentListSubmittedByStudent="get-assignment-list-submitted-by-student";
String kDeleteAssignment="delete-assignment";
String kAssignmentStatusUpdateByTeacher="assignment-status-update-by-teacher";

/*----------------Lesson Plan Module-------------------*/
String kLessonPlan="lessonplan";
String kAddTimeTable="lessonPlan/add-time-table";
String kGetLessonDataForEdit="lessonPlan/GetLessonDataForEdit";
String kUpdateTimeTable="lessonPlan/update-time-table";
String kDeleteLessonPlan="lessonPlan/deleteLessonPlan";
String kGetLessonChapterList="lessonPlan/getlessonChapterList";
String kCalendarIndex="lessonPlan/calendarIndex";
String kTopicByChapter="getTopicByChapter";
String kLessonPlanBySubjectAndDate="getLessonPlanBySubjectAndDate";

/*------------------NCERT Solve Solution-------------------*/

String kNcertSolveSolutionClassList="get-ncert-solve-solution-class-list";
String kNcertSolveSolutionSubjectList="get-ncert-subject-name-by-class";
String kNcertSolveSolution="get-data-by-class-auth-subject-ncert-solve-solution";

/*------------------Board Solve Solution-------------------*/

String kBoardSolveSolutionClassList="get-board-solve-solution-class-list";
String kBoardSolveSolutionSubjectList="get-board-subject-name-by-class";
String kBoardSolveSolution="get-data-by-class-auth-subject-board-solve-solution";

/*🕵️‍♂️🕵️‍♂️🕵️‍♂️🕵️‍♂️Parent School Communication  */
String kCreateSchoolParentTicket="create-school-parent-ticket";
String kSchoolParentTicketList="school-parent-ticket-list";
String kSchoolParentReplyTicket="school-parent-reply-ticket";
String kReplies="parentschool/replies";
String kDeleteParentSchoolTicket="delete-parent-school-ticket";

/*------------------ReportAnIssue-------------------*/
String kReportAnIssue="reportAnIssue";

/*------------------NCERT Video Solve Solution-------------------*/
String kNCERTVideoListByChapterID="getNCERTVideoListByChapterID";
String kNCERTVideoChapterList="getchapterlistfornvs";
String kNewNCERTVideoSubjectList="getSubjectListByClassAndSection";
String kNewNCERTVideoChapterList="getchapterlistfornvsNew";
String kNCERTVideoClassList="get-ncert-video-lecture-classes";

/*------------------Video Lecture-------------------*/
String kVideoLectureChapterList="getChapterListForVL";
String kVideoLectureByChapterID="getVideoLectureByChapterID";
String KGetSubjectListVideoLecture="getVideoLectureSubjectListByGradeId";

/*------------------E Learning-------------------*/
String kELearningSubjectList="get-subject-list-by-grade-id";
String kELearningActivityList="getActivityByGradeAndSubjectIdBySchoolID";
String kELearningList="getElearningByActivityGradeAndSubjectIdBySchoolID";

/*------------------Test generator-------------------*/
String kGetTestGeneratorClassList="get-testgenerator-class-list";
String kGetTestGeneratorList="get-testgenerator-list-by-gradeid";
/*-------------------School Gallery -----------------*/
String kGetSectionsByClassess="getSectionsByClassess";
String kCreategallery="createGallery";
String kGetAlbum="getAlbum";
String kGetGallery="getGallery";
/*-------------------Class Notice -----------------*/
String kGetStudentAndParentlist="getStudentAndParentlist";
String kGetUserTypeForNotification="getUserTypeForNotification";
String kSendBulkNotification="classnoticecreate";
String kGetBulkNotificationList="getBulkNotificationList";
String kgetMultiSectionByclass="getMultiSectionByclass";
String kgetclassnoticedelete="classnoticedelete";
/*-----------------mode wise class api--------------------------*/
String kgetModeWiseClasses="getModeWiseClasses";

/*-----------------KidsSection------------*/
String kGetKidsData="getKidsData";



/*-----------------Version api ---------------*/
String kGetVersion="getVersion";
/*-----------------Book Exercises api ---------------*/
String kGetBookExercise="getBookExersice";
String kGetBookExerciseSubjectListByGradeandBoard="getBookExerciseSubjectListByGradeandBoard";
String kGetBookExerciseChapterListBySubjectId="getBookExerciseChapterListBySubjectId";

/*-----------------Academic Plan api ---------------*/
String kGetAcademicPlan="getAcademicPlan";
String kGetAcademicPlanByGrade="get-AcademicPlan-By-Grade-and-Board";
String kGetAcademicPlanChapterListBySubjectId="getAcademicPlanChapterListBySubjectId";
/*-----------------offline teacher content----------------*/
String kgetAllContentLibraryData="getAllContentLibraryData";

/*-------------------E-VOX API----------------------*/
String eVox="service.php";
/*-------------------ASK_QUESTION API----------------------*/
String Kaskquestion= "form";
/*--------------------------dashboard task list---------------*/
String kTaskCalender="getliveclassdynamiccalendar";
String kTaskStudentAssessmentHomeworkCount="getStudentAssessmentHomeworkCount";
String kTaskAssessmentHomeworkCountTeacherSide="getassessmenthomeworkcountTeacherSide";


/*-------------ExamReportByTermID--------------*/
String kGetExamReportByTermId='getExamReportByTermId';
/*-------------ParentLoginAPI--------------*/
String kGetParentSwitchLogin='ParentSwitchLogin';

/*-------------HomeworkSubmittedPendingListTeacherSide--------------*/
String kGetSubmittedPendingList='gethomeworkStudentListfromteacherside';

/*-------------HomeworkSubmissionByStudentIdTeacherSide--------------*/
String KHomeWorkSubmittedByStudent='gethomeworklistsubmittedbystudentByIds';

/*-------------AssignmrntSubmittedPendingListTeacherSide--------------*/
String kGetAssignmentSubmittedPendingList='getassignmentStudentListfromteacherside';

/*-------------HomeworkSubmissionByStudentIdTeacherSide--------------*/
String KAssignmentSubmittedByStudent='getassignmentlistsubmittedbystudentByIds';

/*-------------SubjectList for Homework and Assignment Filter--------------*/
String KSubjectListFilter='getsubjectsbysectionclassforteachers';

/*--------------------------Common variables-----------------*/

RxBool _shimmerStatus  = true.obs;
bool get shimmerStatus => _shimmerStatus.value;
set shimmerStatus(bool v) => _shimmerStatus.value = v;

RxBool _dynamicModuleShimmerStatus  = true.obs;
bool get dynamicModuleShimmerStatus => _dynamicModuleShimmerStatus.value;
set dynamicModuleShimmerStatus(bool v) => _dynamicModuleShimmerStatus.value = v;
/*-------------------teacher attendance API----------------------*/
String kteacherAttendance="getteacherattendance";

/*---------------------------------------------*/
String kGetApiSubjectListForBookmark="getapisubjectListforbookmark";
String kGetTeacherSubjectListForBookmark="getteachersubjectassignlistbookmark";

/*-------------------Worksheet API----------------------*/
String kgetworksheetchapterlist="getworksheetchapterlist";
String kgetworksheetsubjectlist="getworksheetsubjectlist";
String kgetworksheetbychapter="getworksheetbychapter";

/*-------------------ChapterTest API----------------------*/
String getChapterTestSubjectList="getchaptertestsubjectlist";
String getChapterTestChapterList="getchaptertestchapterlist";
String getChapterTestByChapter="getchaptertestbychapter";

/*-------------------Question Paper API----------------------*/
String getSubjectListByGradeIdQBank="GetSubjectListByGradeIdQbank";
String getQBankActivityByGradeAndSubjectIdBySchoolID="GetQbankActivityByGradeAndSubjectIdBySchoolID";// Created by Balvinder Kaur
String getQBankByGradeAndSubjectIdBySchoolID="GetQbankByGradeAndSubjectIdBySchoolID";//Created by balvinder kaur

/*-------------------How To Use API--------------------------*/
String KgetRightNameByUserId="getRightNameByUserId";
String KgetModulesById="getModulesById";
