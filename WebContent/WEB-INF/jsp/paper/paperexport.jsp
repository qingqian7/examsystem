<%@ page language="java" contentType="application/msword"
    pageEncoding="gb2312"%>
<%
response.setHeader("Content-Disposition", "attachment;filename=filename.doc");
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    <title>试卷预览</title>

    <script src="js/d3.js"></script>

    <style type="text/css">

        #paper-right {
            right: 0;
            position: fixed;
        }

        .score-right {
            position: absolute;
            right: 0;
        }

        .body-middle {
            width: 400px;
            left: 50%;
            margin-left: -200px;
            position: relative;
            float: left;
        }

        .subject-head {
            margin-top: 20px;
        }

        .subject .subject-title {
            line-height: 40px;
            font-size: 15px;
        }

        .choice-content {
            margin-top: -20px;
            margin-left: 18px;
        }

    </style>
</head>
<body>
<div class="editingarea">

    <div class="c_flex"><span class="c_flexible"></span></div>

    <div class="c_editview">

        <%--height: 100px = 69+31 --%>
        <div class="PaperPreview">
            <div class="PaperPreviewtop">
                <div style="text-align: center;font-weight: bold;font-size: 40px;line-height: inherit;">
                    ${paper.title} <%--line-height: inherit 继承父div的高度--%>
                </div>
            </div>
            <div class="PaperPreviewtitle">
                <a>考试说明：${paper.description}</a>&nbsp;&nbsp;
                <a>所属方向：${paper.department.name}</a>&nbsp;&nbsp;
                <a>考试时间：${paper.answerQuestionTime} 小时</a>&nbsp;&nbsp;
                <a>总分：${paper.totalPoints}</a>
            </div>
        </div>

        <%--题目列表--%>
        <div class="body-middle">
            <h2 class="subject-head">一、单选题 <span class="">(${radioPoints})</span></h2>

            <c:forEach items="${radioPSList}" var="ps" varStatus="s">
                <div class="subject">
                    <p class="subject-title">${s.count}. ${ps.subject.stem}
                        <span class="score-right">(${ps.score})</span>
                    </p><br>
                    <ul class="choice-content">

                        <c:set var="choiceArray" value="A,B,C,D,E,F,G"/>
                        <c:set var="separator" value=","/>
                        <c:set var="choiceLogo" value="${fn:split(choiceArray,separator)}"/>

                        <c:forEach items="${ps.subject.choices}" var="choice" varStatus="s">
                            <li>
                                    ${choiceLogo[s.index]}、${choice.content}  <!--题目选项-->
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </c:forEach>


            <h2 class="subject-head">二、复选题 <span class="">(${checkPoints})</span></h2>
            <c:forEach items="${checkPSList}" var="ps" varStatus="s">
                <div class="subject">
                    <p class="subject-title">${s.count}. ${ps.subject.stem}
                        <span class="score-right">(${ps.score})</span>
                    </p><br>
                    <ul class="choice-content">
                        <c:set var="choiceArray" value="A,B,C,D,E,F,G"/>
                        <c:set var="separator" value=","/>
                        <c:set var="choiceLogo" value="${fn:split(choiceArray,separator)}"/>

                        <c:forEach items="${ps.subject.choices}" var="choice" varStatus="s">
                            <li>
                                    ${choiceLogo[s.index]}、${choice.content}  <!--题目选项-->
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </c:forEach>


            <h2 class="subject-head">三、简答题 <span class="">(${questionPoints})</span></h2>
            <c:forEach items="${questionPSList}" var="ps" varStatus="s">
                <div class="subject">
                    <p class="subject-title">${s.count}. ${ps.subject.stem}
                        <span class="score-right">(${ps.score})</span>
                    </p><br>
                </div>
            </c:forEach>
        </div>

        <div id="paper-right">
            <a id="easy-points" style="visibility: hidden" name="${easyPoints}"></a>
            <a id="middle-points" style="visibility: hidden" name="${middlePoints}"></a>
            <a id="hard-points" style="visibility: hidden" name="${hardPoints}"></a>
        </div>

    </div>

</div>
</body>
</html>