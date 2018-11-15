<%--
  Created by IntelliJ IDEA.
  User: Alex
  Date: 07/11/2018
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Add a student</title>
    <!-- Special version of Bootstrap that only affects content wrapped in .bootstrap-iso -->
    <link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css"/>

    <!-- Inline CSS based on choices in "Settings" tab -->
    <style>.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p, .bootstrap-iso form {
        font-family: Arial, Helvetica, sans-serif;
        color: black
    }

    .bootstrap-iso form button, .bootstrap-iso form button:hover {
        color: white !important;
    }

    .asteriskField {
        color: red;
    }</style>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-width-pics.css" rel="stylesheet">
    <%--jQuery date picker--%>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#dateTime").datepicker();
        });
    </script>

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Course App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="http://localhost:8080/">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/add">Add students</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/list">Current students</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- Header - set the background image for the header in the line below -->
<header class="py-5 bg-image-full"
        style="background-image: url('https://fustelcommonwealthexchangehome.files.wordpress.com/2018/10/img_0342.jpg');">
    <img class="img-fluid d-block mx-auto"
         src="data:image/jpeg;base64,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"
         alt="">
</header>

<!-- Content section -->
<section class="py-5">
    <div class="container">
        <h1>Register a new student</h1>
        <p class="lead">Use the form below.</p>

        <div class="bootstrap-iso">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="formden_header">

                            <p>
                                (JDBC) database connected
                            </p>
                        </div>
                        <form method="post">
                            <%--<div class="form-group ">--%>
                            <%--<label class="control-label requiredField" for="studentID">--%>
                            <%--Student ID--%>
                            <%--<span class="asteriskField">--%>
                            <%--*--%>
                            <%--</span>--%>
                            <%--</label>--%>
                            <%--<input class="form-control" id="studentID" name="studentID" type="text"/>--%>
                            <%--<span class="help-block" id="hint_studentID">--%>
                            <%--the student ID should be unique--%>
                            <%--</span>--%>
                            <%--</div>--%>
                            <div class="form-group ">
                                <label class="control-label requiredField" for="userName">
                                    Name
                                    <span class="asteriskField">
        *
       </span>
                                </label>
                                <input class="form-control" id="userName" name="userName" type="text"/>
                                <span class="help-block" id="hint_userName">
       first name
      </span>
                            </div>
                            <div class="form-group ">
                                <label class="control-label requiredField" for="surname">
                                    Surname
                                    <span class="asteriskField">
        *
       </span>
                                </label>
                                <input class="form-control" id="surname" name="surname" type="text"/>
                                <span class="help-block" id="hint_surname">
       the student's class form
      </span>
                            </div>

                            <div class="form-group ">
                                <label class="control-label requiredField" for="dateTime">
                                    Date of birth
                                    <span class="asteriskField">
        *
       </span>
                                </label>
                                <input class="form-control" id="dateTime" name="dateOfBirth" placeholder="MM/DD/YYYY"
                                       type="text"/>
                            </div>
                            <div class="form-group ">
                                <label class="control-label requiredField" for="country">
                                    Nationality
                                    <span class="asteriskField">*</span>
                                </label>
                                <select class="select form-control" id="country" name="nationality">
                                    <%--Replace when form validation is included--%>
                                    <%--<option selected="selected" value=""></option>--%>
                                    <option value="Estonia">Estonia</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                    <option value="Afghanistan">Afghanistan</option>
                                    <option value="Albania">Albania</option>
                                    <option value="Algeria">Algeria</option>
                                    <option value="American Samoa">American Samoa</option>
                                    <option value="Andorra">Andorra</option>
                                    <option value="Angola">Angola</option>
                                    <option value="Anguilla">Anguilla</option>
                                    <option value="Antarctica">Antarctica</option>
                                    <option value="Antigua and Barbuda">Antigua and Barbuda</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Armenia">Armenia</option>
                                    <option value="Aruba">Aruba</option>
                                    <option value="Australia">Australia</option>
                                    <option value="Austria">Austria</option>
                                    <option value="Azerbaijan">Azerbaijan</option>
                                    <option value="Bahamas">Bahamas</option>
                                    <option value="Bahrain">Bahrain</option>
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Barbados">Barbados</option>
                                    <option value="Belarus">Belarus</option>
                                    <option value="Belgium">Belgium</option>
                                    <option value="Belize">Belize</option>
                                    <option value="Benin">Benin</option>
                                    <option value="Bermuda">Bermuda</option>
                                    <option value="Bhutan">Bhutan</option>
                                    <option value="Bolivia">Bolivia</option>
                                    <option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                    <option value="Botswana">Botswana</option>
                                    <option value="Bouvet Island">Bouvet Island</option>
                                    <option value="Brazil">Brazil</option>
                                    <option value="British Indian Ocean Territory">British Indian Ocean Territory
                                    </option>
                                    <option value="Brunei Darussalam">Brunei Darussalam</option>
                                    <option value="Bulgaria">Bulgaria</option>
                                    <option value="Burkina Faso">Burkina Faso</option>
                                    <option value="Burundi">Burundi</option>
                                    <option value="Cambodia">Cambodia</option>
                                    <option value="Cameroon">Cameroon</option>
                                    <option value="Canada">Canada</option>
                                    <option value="Cape Verde">Cape Verde</option>
                                    <option value="Cayman Islands">Cayman Islands</option>
                                    <option value="Central African Republic">Central African Republic</option>
                                    <option value="Chad">Chad</option>
                                    <option value="Chile">Chile</option>
                                    <option value="China">China</option>
                                    <option value="Christmas Island">Christmas Island</option>
                                    <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
                                    <option value="Colombia">Colombia</option>
                                    <option value="Comoros">Comoros</option>
                                    <option value="Congo">Congo</option>
                                    <option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic
                                        of The
                                    </option>
                                    <option value="Cook Islands">Cook Islands</option>
                                    <option value="Costa Rica">Costa Rica</option>
                                    <option value="Cote D'ivoire">Cote D'ivoire</option>
                                    <option value="Croatia">Croatia</option>
                                    <option value="Cuba">Cuba</option>
                                    <option value="Cyprus">Cyprus</option>
                                    <option value="Czech Republic">Czech Republic</option>
                                    <option value="Denmark">Denmark</option>
                                    <option value="Djibouti">Djibouti</option>
                                    <option value="Dominica">Dominica</option>
                                    <option value="Dominican Republic">Dominican Republic</option>
                                    <option value="Ecuador">Ecuador</option>
                                    <option value="Egypt">Egypt</option>
                                    <option value="El Salvador">El Salvador</option>
                                    <option value="Equatorial Guinea">Equatorial Guinea</option>
                                    <option value="Eritrea">Eritrea</option>
                                    <option value="Estonia">Estonia</option>
                                    <option value="Ethiopia">Ethiopia</option>
                                    <option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
                                    <option value="Faroe Islands">Faroe Islands</option>
                                    <option value="Fiji">Fiji</option>
                                    <option value="Finland">Finland</option>
                                    <option value="France">France</option>
                                    <option value="French Guiana">French Guiana</option>
                                    <option value="French Polynesia">French Polynesia</option>
                                    <option value="French Southern Territories">French Southern Territories</option>
                                    <option value="Gabon">Gabon</option>
                                    <option value="Gambia">Gambia</option>
                                    <option value="Georgia">Georgia</option>
                                    <option value="Germany">Germany</option>
                                    <option value="Ghana">Ghana</option>
                                    <option value="Gibraltar">Gibraltar</option>
                                    <option value="Greece">Greece</option>
                                    <option value="Greenland">Greenland</option>
                                    <option value="Grenada">Grenada</option>
                                    <option value="Guadeloupe">Guadeloupe</option>
                                    <option value="Guam">Guam</option>
                                    <option value="Guatemala">Guatemala</option>
                                    <option value="Guinea">Guinea</option>
                                    <option value="Guinea-bissau">Guinea-bissau</option>
                                    <option value="Guyana">Guyana</option>
                                    <option value="Haiti">Haiti</option>
                                    <option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald
                                        Islands
                                    </option>
                                    <option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
                                    <option value="Honduras">Honduras</option>
                                    <option value="Hong Kong">Hong Kong</option>
                                    <option value="Hungary">Hungary</option>
                                    <option value="Iceland">Iceland</option>
                                    <option value="India">India</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
                                    <option value="Iraq">Iraq</option>
                                    <option value="Ireland">Ireland</option>
                                    <option value="Israel">Israel</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Jamaica">Jamaica</option>
                                    <option value="Japan">Japan</option>
                                    <option value="Jordan">Jordan</option>
                                    <option value="Kazakhstan">Kazakhstan</option>
                                    <option value="Kenya">Kenya</option>
                                    <option value="Kiribati">Kiribati</option>
                                    <option value="Korea, Democratic People's Republic of">Korea, Democratic People's
                                        Republic of
                                    </option>
                                    <option value="Korea, Republic of">Korea, Republic of</option>
                                    <option value="Kuwait">Kuwait</option>
                                    <option value="Kyrgyzstan">Kyrgyzstan</option>
                                    <option value="Lao People's Democratic Republic">Lao People's Democratic Republic
                                    </option>
                                    <option value="Latvia">Latvia</option>
                                    <option value="Lebanon">Lebanon</option>
                                    <option value="Lesotho">Lesotho</option>
                                    <option value="Liberia">Liberia</option>
                                    <option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
                                    <option value="Liechtenstein">Liechtenstein</option>
                                    <option value="Lithuania">Lithuania</option>
                                    <option value="Luxembourg">Luxembourg</option>
                                    <option value="Macao">Macao</option>
                                    <option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former
                                        Yugoslav
                                        Republic of
                                    </option>
                                    <option value="Madagascar">Madagascar</option>
                                    <option value="Malawi">Malawi</option>
                                    <option value="Malaysia">Malaysia</option>
                                    <option value="Maldives">Maldives</option>
                                    <option value="Mali">Mali</option>
                                    <option value="Malta">Malta</option>
                                    <option value="Marshall Islands">Marshall Islands</option>
                                    <option value="Martinique">Martinique</option>
                                    <option value="Mauritania">Mauritania</option>
                                    <option value="Mauritius">Mauritius</option>
                                    <option value="Mayotte">Mayotte</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Micronesia, Federated States of">Micronesia, Federated States of
                                    </option>
                                    <option value="Moldova, Republic of">Moldova, Republic of</option>
                                    <option value="Monaco">Monaco</option>
                                    <option value="Mongolia">Mongolia</option>
                                    <option value="Montserrat">Montserrat</option>
                                    <option value="Morocco">Morocco</option>
                                    <option value="Mozambique">Mozambique</option>
                                    <option value="Myanmar">Myanmar</option>
                                    <option value="Namibia">Namibia</option>
                                    <option value="Nauru">Nauru</option>
                                    <option value="Nepal">Nepal</option>
                                    <option value="Netherlands">Netherlands</option>
                                    <option value="Netherlands Antilles">Netherlands Antilles</option>
                                    <option value="New Caledonia">New Caledonia</option>
                                    <option value="New Zealand">New Zealand</option>
                                    <option value="Nicaragua">Nicaragua</option>
                                    <option value="Niger">Niger</option>
                                    <option value="Nigeria">Nigeria</option>
                                    <option value="Niue">Niue</option>
                                    <option value="Norfolk Island">Norfolk Island</option>
                                    <option value="Northern Mariana Islands">Northern Mariana Islands</option>
                                    <option value="Norway">Norway</option>
                                    <option value="Oman">Oman</option>
                                    <option value="Pakistan">Pakistan</option>
                                    <option value="Palau">Palau</option>
                                    <option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied
                                    </option>
                                    <option value="Panama">Panama</option>
                                    <option value="Papua New Guinea">Papua New Guinea</option>
                                    <option value="Paraguay">Paraguay</option>
                                    <option value="Peru">Peru</option>
                                    <option value="Philippines">Philippines</option>
                                    <option value="Pitcairn">Pitcairn</option>
                                    <option value="Poland">Poland</option>
                                    <option value="Portugal">Portugal</option>
                                    <option value="Puerto Rico">Puerto Rico</option>
                                    <option value="Qatar">Qatar</option>
                                    <option value="Reunion">Reunion</option>
                                    <option value="Romania">Romania</option>
                                    <option value="Russian Federation">Russian Federation</option>
                                    <option value="Rwanda">Rwanda</option>
                                    <option value="Saint Helena">Saint Helena</option>
                                    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                    <option value="Saint Lucia">Saint Lucia</option>
                                    <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                    <option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines
                                    </option>
                                    <option value="Samoa">Samoa</option>
                                    <option value="San Marino">San Marino</option>
                                    <option value="Sao Tome and Principe">Sao Tome and Principe</option>
                                    <option value="Saudi Arabia">Saudi Arabia</option>
                                    <option value="Senegal">Senegal</option>
                                    <option value="Serbia and Montenegro">Serbia and Montenegro</option>
                                    <option value="Seychelles">Seychelles</option>
                                    <option value="Sierra Leone">Sierra Leone</option>
                                    <option value="Singapore">Singapore</option>
                                    <option value="Slovakia">Slovakia</option>
                                    <option value="Slovenia">Slovenia</option>
                                    <option value="Solomon Islands">Solomon Islands</option>
                                    <option value="Somalia">Somalia</option>
                                    <option value="South Africa">South Africa</option>
                                    <option value="South Georgia and The South Sandwich Islands">South Georgia and The
                                        South
                                        Sandwich Islands
                                    </option>
                                    <option value="Spain">Spain</option>
                                    <option value="Sri Lanka">Sri Lanka</option>
                                    <option value="Sudan">Sudan</option>
                                    <option value="Suriname">Suriname</option>
                                    <option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                    <option value="Swaziland">Swaziland</option>
                                    <option value="Sweden">Sweden</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="Syrian Arab Republic">Syrian Arab Republic</option>
                                    <option value="Taiwan, Province of China">Taiwan, Province of China</option>
                                    <option value="Tajikistan">Tajikistan</option>
                                    <option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
                                    <option value="Thailand">Thailand</option>
                                    <option value="Timor-leste">Timor-leste</option>
                                    <option value="Togo">Togo</option>
                                    <option value="Tokelau">Tokelau</option>
                                    <option value="Tonga">Tonga</option>
                                    <option value="Trinidad and Tobago">Trinidad and Tobago</option>
                                    <option value="Tunisia">Tunisia</option>
                                    <option value="Turkey">Turkey</option>
                                    <option value="Turkmenistan">Turkmenistan</option>
                                    <option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                    <option value="Tuvalu">Tuvalu</option>
                                    <option value="Uganda">Uganda</option>
                                    <option value="Ukraine">Ukraine</option>
                                    <option value="United Arab Emirates">United Arab Emirates</option>
                                    <option value="United Kingdom">United Kingdom</option>
                                    <option value="United States">United States</option>
                                    <option value="United States Minor Outlying Islands">United States Minor Outlying
                                        Islands
                                    </option>
                                    <option value="Uruguay">Uruguay</option>
                                    <option value="Uzbekistan">Uzbekistan</option>
                                    <option value="Vanuatu">Vanuatu</option>
                                    <option value="Venezuela">Venezuela</option>
                                    <option value="Viet Nam">Viet Nam</option>
                                    <option value="Virgin Islands, British">Virgin Islands, British</option>
                                    <option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
                                    <option value="Wallis and Futuna">Wallis and Futuna</option>
                                    <option value="Western Sahara">Western Sahara</option>
                                    <option value="Yemen">Yemen</option>
                                    <option value="Zambia">Zambia</option>
                                    <option value="Zimbabwe">Zimbabwe</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <div>
                                    <button class="btn btn-primary " name="submit" type="submit">
                                        Submit
                                    </button>

                                    <button class="btn btn-secondary " name="reset" type="reset">
                                        Reset
                                    </button>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


</section>

<!-- Image Section - set the background image for the header in the line below -->
<section class="py-5 bg-image-full"
         style="background-image: url('https://static1.squarespace.com/static/529e3f47e4b0437241215504/529f7bf4e4b0736bd37b8838/53c04acde4b02b0c97836360/1405120211643.jpeg');">
    <!-- Put anything you want here! There is just a spacer below for demo purposes! -->
    <div style="height: 200px;"></div>
</section>

<!-- Content section -->
<section class="py-5">
    <div class="container">
        <h1>Library Java coding study group</h1>
        <p class="lead">Google+ Events organise the meetups.</p>
        <p><a href="https://plus.google.com/events/c5rvl8c0qcanpmt1emj8ninj0b8" target="_blank">Latest meetup.</a></p>
    </div>
</section>

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Web Course App 2018</p>
    </div>
    <!-- /.container -->
</footer>

<%--<!-- Bootstrap core JavaScript -->--%>
<%--<script src="vendor/jquery/jquery.min.js"></script>--%>
<%--<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>--%>

</body>

</html>

