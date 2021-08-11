<%--

&lt;%&ndash;
  Created by IntelliJ IDEA.
  User: t
  Date: 09/08/2021
  Time: 7:17 AM
  To change this template use File | Settings | File Templates.
&ndash;%&gt;
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Facebook</title>
    <link rel="stylesheet" type="text/css" href="sign-up.css">
        <script
                src="https://code.jquery.com/jquery-3.4.1.min.js"
                integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
                crossorigin="anonymous"></script>
        <script type="text/javascript"
                src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
</head>

<body>
<header class="fb-header">
    <div class="inner-header">
        <h1 class="fb-header-logo" style="font-size: xx-large">Facebook</h1>
        <form class="login-grid" method="POST" action="<%=request.getContextPath()%>/login">
            <label class="email-label" for="email-phone">Email or Phone</label>
            <input class="email-input" type="text" name="login_username" id="email-phone">
            <label class="pass-label" for="password">Password</label>
            <input class="pass-input" type="password" name="login_password" id="password">
            <span class="Forgotten-item"><a href="#">Forgotten account?</a></span>
            <button type="submit">Log In</button>
        </form>
    </div>
</header>
<main id="fb-main">
    <div class="fb-container">
        <section class="fb-connect">
            <span>Facebook helps you connect and share with the people in your life.</span>
        </section>
        <section class="fb-form">
            <span class="frm-header">Create an account</span><br>
            <span class="frm-spn1">It's free and always will be.</span>

            <form class="sign-up" method="post" action="<%=request.getContextPath()%>/sign-up">
                <input class="frm-textbox textbox-width" type="text" name="first_name" placeholder="First name">
                <input class="frm-textbox textbox-width" type="text" name="last_name" placeholder="Surname">
                <input class="frm-textbox" type="text" name="phone_email" placeholder="Mobile number or email address"><br>
                <input class="frm-textbox" type="password" name="password" placeholder="New password"><br>
                <div class="form-div">
                    <span class="birthday">Birthday</span><br>
                    <select aria-label="Day" name="birthday_day" id="day" title="Day" class="_5dba">
                        <option value="0" selected disabled>Day</option>
                        <option value="1">01</option>
                        <option value="2">02</option>
                        <option value="3">03</option>
                        <option value="4">04</option>
                        <option value="5">05</option>
                        <option value="6">06</option>
                        <option value="7">07</option>
                        <option value="8">08</option>
                        <option value="9">09</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select>
                    <select aria-label="Month" name="birthday_month" id="month" title="Month" class="_5dba">
                        <option value="0">Month</option>
                        <option value="01">Jan</option>
                        <option value="02">Feb</option>
                        <option value="03">Mar</option>
                        <option value="04">Apr</option>
                        <option value="05">May</option>
                        <option value="06">Jun</option>
                        <option value="07">Jul</option>
                        <option value="08" selected="1">Aug</option>
                        <option value="09">Sept</option>
                        <option value="10">Oct</option>
                        <option value="11">Nov</option>
                        <option value="12">Dec</option>
                    </select>
                    <select aria-label="Year" name="birthday_year" id="year" title="Year" class="select-last-child">
                        <option value="0">Year</option>
                        <option value="2018">2018</option>
                        <option value="2017">2017</option>
                        <option value="2016">2016</option>
                        <option value="2015">2015</option>
                        <option value="2014">2014</option>
                        <option value="2013">2013</option>
                        <option value="2012">2012</option>
                        <option value="2011">2011</option>
                        <option value="2010">2010</option>
                        <option value="2009">2009</option>
                        <option value="2008">2008</option>
                        <option value="2007">2007</option>
                        <option value="2006">2006</option>
                        <option value="2005">2005</option>
                        <option value="2004">2004</option>
                        <option value="2003">2003</option>
                        <option value="2002">2002</option>
                        <option value="2001">2001</option>
                        <option value="2000">2000</option>
                        <option value="1999">1999</option>
                        <option value="1998">1998</option>
                        <option value="1997">1997</option>
                        <option value="1996">1996</option>
                        <option value="1995">1995</option>
                        <option value="1994">1994</option>
                        <option value="1993" selected="1">1993</option>
                        <option value="1992">1992</option>
                        <option value="1991">1991</option>
                        <option value="1990">1990</option>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                        <option value="1959">1959</option>
                        <option value="1958">1958</option>
                        <option value="1957">1957</option>
                        <option value="1956">1956</option>
                        <option value="1955">1955</option>
                        <option value="1954">1954</option>
                        <option value="1953">1953</option>
                        <option value="1952">1952</option>
                        <option value="1951">1951</option>
                        <option value="1950">1950</option>
                        <option value="1949">1949</option>
                        <option value="1948">1948</option>
                        <option value="1947">1947</option>
                        <option value="1946">1946</option>
                        <option value="1945">1945</option>
                        <option value="1944">1944</option>
                        <option value="1943">1943</option>
                        <option value="1942">1942</option>
                        <option value="1941">1941</option>
                        <option value="1940">1940</option>
                        <option value="1939">1939</option>
                        <option value="1938">1938</option>
                        <option value="1937">1937</option>
                        <option value="1936">1936</option>
                        <option value="1935">1935</option>
                        <option value="1934">1934</option>
                        <option value="1933">1933</option>
                        <option value="1932">1932</option>
                        <option value="1931">1931</option>
                        <option value="1930">1930</option>
                        <option value="1929">1929</option>
                        <option value="1928">1928</option>
                        <option value="1927">1927</option>
                        <option value="1926">1926</option>
                        <option value="1925">1925</option>
                        <option value="1924">1924</option>
                        <option value="1923">1923</option>
                        <option value="1922">1922</option>
                        <option value="1921">1921</option>
                        <option value="1920">1920</option>
                        <option value="1919">1919</option>
                        <option value="1918">1918</option>
                        <option value="1917">1917</option>
                        <option value="1916">1916</option>
                        <option value="1915">1915</option>
                        <option value="1914">1914</option>
                        <option value="1913">1913</option>
                        <option value="1912">1912</option>
                        <option value="1911">1911</option>
                        <option value="1910">1910</option>
                        <option value="1909">1909</option>
                        <option value="1908">1908</option>
                        <option value="1907">1907</option>
                        <option value="1906">1906</option>
                        <option value="1905">1905</option>
                    </select>
                    <a class="why-link" href="#">Why do I need to provide my date of birth?</a><br>
                    <div class="frm-radio">
                        <input type="radio" name="male_gender" value="Male">
                        <label>Female</label>
                        <input type="radio" name="female_gender" value="Female">
                        <label>Male</label>
                    </div>
                    <p>By clicking Sign Up, you agree to our <a href="#">Terms, Data Policy</a> and <a href="#">Cookie Policy</a>. You may receive SMS notifications from us and can opt out at any time.</p>
                    <button type="submit">Sign Up</button><br>
                    <span class="form-last-child"><a href="#">Create a Page</a> for a celebrity, band or business.</span>
                </div>
            </form>
        </section>
    </div>
</main>
<footer class="fb-footer">
    <div class="div-footer">
        <ul class="ul1">
            <li>English (UK)</li>
            <li><a href="#">العربية</a></li>
            <li><a href="#">Français (France)</a></li>
            <li><a href="#">Italiano</a></li>
            <li><a href="#">Deutsch</a></li>
            <li><a href="#">Русский</a></li>
            <li><a href="#">Español</a></li>
            <li><a href="#">Bahasa Indonesia</a></li>
            <li><a href="#">Türkçe</a></li>
            <li><a href="#">Português (Brasil)</a></li>
            <li><a href="#">हिन्दी</a></li>
        </ul>
        <div class="ho-rule"></div>
        <ul class="ul2">
            <li><a href="#">Sign Up</a></li>
            <li><a href="#">Log In</a></li>
            <li><a href="#">Messenger</a></li>
            <li><a href="#">Facebook Lite</a></li>
            <li><a href="#">Mobile</a></li>
            <li><a href="#">Find Friends</a></li>
            <li><a href="#">People</a></li>
            <li><a href="#">Pages</a></li>
            <li><a href="#">Video interests</a></li>
            <li><a href="#">Places</a></li>
            <li><a href="#">Games</a></li>
            <li><a href="#">Locations</a></li>
            <li><a href="#">Marketplace</a></li>
            <li><a href="#">Groups</a></li>
            <li><a href="#">Instagram</a></li>
            <li><a href="#">Local</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Create ad</a></li>
            <li><a href="#">Create Page</a></li>
            <li><a href="#">Developers</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="#">Privacy</a></li>
            <li><a href="#">Cookies</a></li>
            <li><a href="#">AdChoices</a></li>
            <li><a href="#">Terms</a></li>
            <li><a href="#">Help</a></li>
            <li><a href="#">Settings</a></li>
            <li><a href="#">Activity log</a></li>
        </ul>
        <p>Facebook © 2018</p>
    </div>
</footer>
<script type="text/javascript">

    $(document).ready(function() {
        $("#loginForm").validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },

                password: "required",
            },

            messages: {
                email: {
                    required: "Please enter email",
                    email: "Please enter a valid email address"
                },

                password: "Please enter password"
            }
        });

    });
</script>
</body>

</html>

--%>
