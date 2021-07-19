<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
    <title>Awem Sign Generator</title>
    <script type="text/javascript">
        function copyElementToClipboard(element) {
            window.getSelection().removeAllRanges();
            let range = document.createRange();
            range.selectNode(typeof element === 'string' ? document.getElementById(element) : element);
            window.getSelection().addRange(range);
            document.execCommand('copy');
            window.getSelection().removeAllRanges();
        }
    </script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/styles.css">
    <!-- Yandex.Metrika counter -->
    <script type="text/javascript" >
        (function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
            m[i].l=1*new Date();k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
        (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

        ym(83115793, "init", {
            clickmap:true,
            trackLinks:true,
            accurateTrackBounce:true,
            webvisor:true
        });
    </script>
    <noscript><div><img src="https://mc.yandex.ru/watch/83115793" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
    <!-- /Yandex.Metrika counter -->
</head>
<body>
<div dir="ltr" id="awem_sign">
    <div dir="ltr">
        <div><br></div>
        <div>
            <table border="0" cellspacing="0" cellpadding="0" width="470"
                   style="color:rgb(136,136,136);font-family:sans-serif;width:470px">
                <tbody>
                <tr valign="top">
                    <td style="font-family:sans-serif;font-stretch:normal;font-size:12px;line-height:normal;text-align:initial;color:rgb(100,100,100);padding:0px 10px">
                        <div style="margin-top:10px">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tbody>
                                <tr style="padding-top:10px">
                                    <td style="width:10px;padding-right:10px"><br><a href="http://awem.com/"
                                                                                     rel="noopener noreferrer"
                                                                                     style="color:rgb(17,85,204)"
                                                                                     target="_blank"><img
                                            src="${pageContext.request.contextPath}/resources/awem_logo.png"
                                            width="94" height="55" alt="photo"
                                            style="border-radius:0px;margin-right:0px" class="CToWUd"></a>&nbsp;
                                    </td>
                                    <td style="border-right:1px solid rgb(69,102,142)"></td>
                                    <td style="font-stretch:normal;line-height:normal;text-align:initial;padding:0px 10px">
                                        <div style="margin-bottom:5px;margin-top:0px">
                                            <span style="font-family: sans-serif; ">
                                                <b><%= request.getParameter("fullname") == null ? "Ivan Ivanov" : request.getParameter("fullname").trim() %></b>
                                            </span>
                                            <br><span
                                                style="font-family: sans-serif; "><%= request.getParameter("position") == null ? "Manager" : request.getParameter("position").trim() %></span><br>
                                        </div>
                                        <table width="470" border="0" cellspacing="0" cellpadding="0"
                                               style="font-family:sans-serif;width:470px;margin-top:5px">
                                            <tbody>
                                            <tr>
                                                <td><p style="margin:0px">
                                                    <span style="display:inline-block">
                                                        <span style="text-align:initial"><span style="color: #8d8d8d; ">
                                                            <%= (request.getParameter("phone") == null) ? "+79012345678" : request.getParameter("phone").trim() %>
                                                            <c:if test="${param.phone == null || fn:length(fn:trim(param.phone)) > 0}">
                                                                <br/>
                                                            </c:if>
                                                        </span></span>
                                                        <a href="mailto:<%= request.getParameter("email") == null ? "ivan.ivanov@awem.com" : request.getParameter("email").trim() %>"
                                                           style="color:rgb(141,141,141);font-family:sans-serif"
                                                           target="_blank"><%= request.getParameter("email") == null ? "ivan.ivanov@awem.com" : request.getParameter("email").trim() %></a>
                                                    </span>
                                                </p></td>
                                            </tr>
                                            <tr>
                                                <td style="color:rgb(141,141,141)"><p style="margin:0px"><span
                                                        style="white-space:nowrap;display:inline-block"><a
                                                        href="http://awem.com/" rel="noopener noreferrer"
                                                        style="color:rgb(141,141,141);font-family:sans-serif"
                                                        target="_blank">http://awem.com/</a></span></p></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                        <c:if test="${(param.linkedin == null || fn:length(fn:trim(param.linkedin)) > 0) || (param.skype == null || fn:length(fn:trim(param.skype)) > 0)}">
                                            <div style="font-family:sans-serif;margin-top:10px">
                                                <table border="0" cellpadding="0" cellspacing="0">
                                                    <tbody>
                                                    <tr style="padding-top:10px">
                                                        <td align="left"
                                                            style="padding-right:5px;text-align:center;padding-top:0px">
                                                            <c:if test="${param.linkedin == null || fn:length(fn:trim(param.linkedin)) > 0}">
                                                                <a href="<%= (request.getParameter("linkedin") != null && request.getParameter("linkedin").trim().length() > 0) ? request.getParameter("linkedin").trim() : "https://www.linkedin.com/in/ivanivanov/" %>"
                                                                   style="color:rgb(0,0,0)" target="_blank">
                                                                    <img alt="" width="23"
                                                                         src="${pageContext.request.contextPath}/resources/linkedin_logo.png"
                                                                         style="width:23px" class="CToWUd"></a>
                                                            </c:if>
                                                            <c:if test="${param.skype == null || fn:length(fn:trim(param.skype)) > 0}">
                                                                <a href="<%= (request.getParameter("skype") != null && request.getParameter("skype").trim().length() > 0) ? request.getParameter("skype").trim() : "https://join.skype.com/invite/pM4YLu3LjCcK" %>"
                                                                   style="color:rgb(0,0,0)" target="_blank">
                                                                    <img alt=""
                                                                         width="23"
                                                                         src="${pageContext.request.contextPath}/resources/skype_logo.png"
                                                                         style="width:23px"
                                                                         class="CToWUd"></a>&nbsp;
                                                            </c:if>
                                                            <br>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </c:if>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
    <br/>
</div>
<br/>
<form action="" method="post" class="contact_form" name="signForm">
    <ul>
        <li>
            <h2>Fill this form to generate your personal e-mail sign</h2>
            <span class="required_notification">* Denotes Required Field</span>
        </li>
        <li>
            <label for="fullname">First Name and Last Name:</label>
            <input type="text" id="fullname" name="fullname" placeholder="Ivan Ivanov" required
                   value="<%= (request.getParameter("fullname") != null && request.getParameter("fullname").length() > 0) ? request.getParameter("fullname").trim() : "" %>"/>
        </li>
        <li>
            <label for="position">Job Title from <a href="https://awem.bamboohr.com/employees/" target="_blank"
                                                    class="awemlink"
                                                    rel="noopener noreferrer">Bamboo HR</a>:</label>
            <input id="position" name="position" placeholder="Manager" required
                   value="<%= (request.getParameter("position") != null && request.getParameter("position").length() > 0) ? request.getParameter("position").trim() : ""  %>"/>
        </li>
        <li>
            <label for="phone">Phone Number:</label>
            <input id="phone" name="phone" placeholder="+12345678900"
                   value="<%= (request.getParameter("phone") != null && request.getParameter("phone").length() > 0) ? request.getParameter("phone").trim() : "" %>"/>
        </li>
        <li>
            <label for="email">E-mail:</label>
            <input id="email" name="email" type="email" placeholder="ivan.ivanov@awem.com" required
                   value="<%= (request.getParameter("email") != null && request.getParameter("email").length() > 0) ? request.getParameter("email").trim() : "" %>"/>
        </li>
        <li>
            <label for="linkedin"><a href="https://www.linkedin.com/in/" target="_blank" class="awemlink"
                                     rel="noopener noreferrer">LinkedIn
                Profile</a> Link:</label>
            <input
                    id="linkedin" name="linkedin" type="url" placeholder="https://www.linkedin.com/in/ivan.ivanov"
                    pattern="(http|https)://.+"
                    value="<%= (request.getParameter("linkedin") != null && request.getParameter("linkedin").length() > 0) ? request.getParameter("linkedin").trim() : "" %>"/>
        </li>
        <li>
            <label for="skype">Skype <a
                    href="https://support.skype.com/en/faq/FA34802/how-do-i-invite-someone-to-chat-in-skype-on-desktop?q=profile+link"
                    target="_blank" class="awemlink" rel="noopener noreferrer">invitation link</a>:</label>
            <input id="skype" name="skype" placeholder="https://join.skype.com/invite/pM4YLu3LjCcK"
                   pattern="(http|https)://join.skype.com/invite/.+"
                   value="<%= (request.getParameter("skype") != null && request.getParameter("skype").length() > 0) ? request.getParameter("skype").trim() : "" %>"/>
        </li>
        <li>
            <button type="submit" class="submit">Generate Awemsome Sign</button>
            <c:if test="${not empty param.fullname && not empty param.position && not empty param.email}">
            &nbsp;<button class="submit" onclick="copyElementToClipboard('awem_sign')">Copy to Clipboard</button>
            </c:if>
</form>
</li>
<li>
    <form action="" method="post" name="clearForm">
        <input type="hidden" name="clearAll" value="yes">
        <button type="submit" class="submit">Clear all</button>
    </form>
</li>
</ul>

</body>
</html>
