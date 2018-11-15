<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ryan Alexander's Course WebApp</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/full-width-pics.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Course App</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
<header class="py-5 bg-image-full" style="background-image: url('https://fustelcommonwealthexchangehome.files.wordpress.com/2018/10/img_0342.jpg');">
    <img class="img-fluid d-block mx-auto" src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAHEhEODxAQDw4XEBAPDxUQEBgVEBATFRUXIhUSFxMYHSgsGBolGxMTITEtJSktLjouGiA3ODMsNygtLisBCgoKDg0OGxAQGy0fHiUrLSs3Ni0tLS0tMC0tKy0tLTIuLS0tKy0rKy0tLS0tLTctLS0tKy0tLS8tLS0tLS0rNf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAABwIDBQYIBAH/xAA+EAACAQICBgYGCAYDAQAAAAAAAQIDBAYRBQcSITFBEzJRcXKxIiNCYWKBFDWRobKzwcIVJDNSc6JTY6ND/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAIDBAEF/8QAJBEBAQADAAEFAAEFAAAAAAAAAAECAxEEEiEiMUFxEyMyUWH/2gAMAwEAAhEDEQA/AJxAAAAAAAAAAAAAAAAAMHp/Ftjh6dKjdV406lR5QjxaWaW1JLqxzfFnZLfoZwHxPPeuB9OAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAajrBxxRwhS3bNS8mn0FLP8A3nlwivv5HZLbyD5rEx1RwfSy3VLycfUUs/8A0n2RW/vyyObrvSVbS9z9JuJupWnVg5SfiWSS5JckUaW0hW0tVncXE3UrTec5P7klyS7Cxa9en/kh+JG7XrmETkdjUOrHwryLhbodWPhXkXDAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABq+O8YUsK0XLdO5kvU08+b3KUuyInu7Jb9LWP8bUsJUsls1LucX0NLP8A3nlwin9vI5x0tpCtparO4uJupWm85Sf3JLklyRe0rpCtparO4rzdSrN5yk/JLklyR4ZI2a8JiRYkhbL1lP8AyQ/EiuSFuvTp/wCSH4kXRJ2HQ6sfCvIuFFDqx8K8is81AAAAAAAAAAAAAAAAAAAAAAAAAAAAA1zGOK6eHKfKdzJPoqef+8uyPmEscbleQxjiunhunyncyT6Kn++WXCJAGJ9I1NIT6StNzqSblJv3cFlyRkdIX1TSNSVatNzqSecm/JdiRgNLv014V5snq98m3ZqmrVf914SmSKz4zYwrMkSRqs1cy01KF/eRlC0jKM6MHudw0802uVNNLv7uNzVjq6em3G9vYONopZ06clk7lrm/+vP7cuwnanBUkoxSjFJKKSySS4JLkinZt57Q6+pZbj6AZnAAAAAAAAAAAAAAAAAAAAAAAAAAxWJdMx0HQlWazlnsU0+EptPLP3bmwljjcryPLi3EsMP093p3El6uH7pdkSEtJXNXSNSVatNzqSbcm/JLkjJXt3Uvpyq1ZOdSTzbfkuxHknSUu8j17Onxprn/AFjGsjD6XWU0/hXmzY50sjDacoZKM+xtP5lmq/JX5eFuusOSPqy1ePTjje3kcrNPOnB5p3DT4v8A693z7jx6qcHRxLWlXuE3aUZQzXKtU4qm/ckk33rtOgYQVNKMUlFJJJbkkuCSLtmzntHkEIKmlGKSilkklkklySKgDOI9xHrH/gGkHaVKOdtFQ6Scd9ROcU9pLmlnw4m+WlzC8hGrSkp05JShKLzTT5kBa2PrO48NH8qJVq9xvPDM1RqtzspSznHjKk37cPuzX6m7LxplrmWP3xLjoEFmzuqd7CNWlJTpyipQlHg0+ZeMKIAAAAAAAAAAAAAAAAAAAAAEf61Zv+Wj7OdR+5vcSAa5jrQstMW/q1nVpy6SC5yWXpRXfu+w5V/jZTHbLUQgHxvIi958lvPJe2yuYSh2rd38meiUi3KRPGK8uWcqUdTdBUdGw3ZSdatt9u0pZb/kkbyRhqs05C3lUs6jy25dJRz4OeXpR+eSf2knksvt4W3XcMuAAIq3Pmtj6zuPDR/KiaglmbfrY+s7jw0fyompxie1qv8Abx/iLMZ1uWr7GtTDU1SquVSzlJbUc83Rb9uC80TvaXMLyEatKSnTklKEovNNHLkIm54CxlPDk+iquU7OT9KK3um2+vH9UY/I1TL5T7WZauzsTsC1bXELuEalOSnCSUoyXBp8y6YWcAAAAAAAAAAAAAAAAAAAAAaRjfCP0zauraPruNSC4VO2S+LzIwm8tz3M6GNEx3g76YpXdrHKtvlVpxX9X4o/Hx7/ADSN/jeVz4ZowlItSkJvLc9z558UW5Muxxbrk+qbg002mmmmuKa4NErYDxwtJ7NrdNRuMsoT4Kr7n2S8yI5SKNtxeabTW9NPJp9qZZ6PVGbbjM5yumwR9q+x0tJbNpdySuOFKbe6ssuD+Pj3kgmfLG43lebljcbyoB1s0ZQ0nWk4tKUKLi2t0kqcU2vmmjUoxOj8W4Yo4mpdFUSjUW+lUS9KnL9V2ogTTOhq2g6srevHZmuD9mceUovmjfp3TLGT9i7Vy+zxQiXoRKYRL8IjLJrxxbVgfF88OSVKpnOzlL01xdNv24/qiarW5hdwjVpyU6coqUZLg0+ZzdOO42nA2Lp4fn0VTanaSa2o576T/vivNGTZjL7xXu8f1e+P2m0Fq2uIXcI1KclOEkpRlF5ppl0pYAAAAAAAAAAAAAAAAAAAAABoOPsFfTtq7tI+v41aa/8AqsutFf3+ZEspHTBHusPBH0/avLSPr8s6tNcKvbKPx+feXa8/ytenfz45Ilky3Jiby3Pc+D93uLcma8cV9r6puDTTaaeaaeTTXPMl/VzjxaT2bO7llcpKNKbyyrLsfx7vmQ1Jn23llODXFTg17mpLJkstUznKo2cydUGExVhujiSk6dRbNRb6VRL0oS/VdqMxR6se5eRWebLZfZll5exzlpfRFXQtWVCtHKa4NdWceUovmmWIxJ8xNh6jiGl0dT0ZrN0prrQf6rtRCumNE1NCVZUKyykt8X7M48pJl/8AU7HpaNkz9v14XDNMohE9UI5lpRyKrk1+ltGC8WT0BLo6mc7Vv0orjTb9uP6omK3rxuYxqU5KUJJSi1waZzubJg/GDw7Lo6r2rWTzkuMqbftRXmiDL5PjTKerH7TQC1a3MLyEatOSnTlFShKLzTT4Muh5YAAAAAAAAAAAAAAAAAAAAAjnWNgT6cpXtnHKuk5VqcV/W+KKXt8e/v4w7N5bnufB58UdUEbaycA/xDavbKH8x1q1NcKyS60V/f595r0bufHJdhs/KhtsUH6cPHHzRbkyq268PHHzR6Mhlk6so9WPhXkVlFHqx8K8is8NSGsawtCR0vaVJKOdaknVpNL0t3Whn2NZ/cbOePTFaNvQrTm0oqlUcm+CWyxEscrjexznTnmlKL3NJpp8Uy3UqST6z+0x+HLh1KfRvjHLLwsyVZZ7yWUuOXK9jDL14zKLLk5cW38ynIryGRz1JcSJqg05KjVlYTbdOcXUpJ+xOPWS9zXkS2QRq1oSraQobPs7c5dyRO4t68zysZM/YABxmAAAAAAAAAAAAAAAAAAAAAEZ6zNX/wDEdq+so/zGWdalHLKslxnH48vty7eMO0FszinuaqRTT4pqW9HVxomKtWtHTdxC6pVFbS21K4Sp7Sq5Nb1vWzPjv39xt0eTyenN2VvFHqx8K8is+RjspLsWR9MTgQ5rkx5CcZ6KtJbUm0rua4JLf0MXzb3Z/NceHr1p6xvoino+wmnValC4rQl/S7acGvb45vl3kJy373vfF58WaNWv9rsejQ1Toqsex5xf2bvvSNlkszVLX0Zwfxx8zbCPkT5SvS8O/Gx58iqEHUajFNybSSSzbb5JFTpubSim23kklm2+xIl7V/ghaJSurqKlctZwi1uopr8fkZ123bNc7Xo1cYUegacq9dZXNSMU4/8AFDjs9759yN0AJPIzzueXqoAAiAAAAAAAAAAAAAAAAAAAAAAAAEU60tYn0Pb0fYz9dls160cmqfbTi/7u18s+0u62Mez0U5aOtHs13FdPUy304yW6MPiaa38kyEi/Xr/aKZb973vi+1+8paLjRS0aHX21jtTgvij5m1Ri5tRSbbaSS4tvgkYDQ1u69WKScmt6SWbbe5L7ye8A4LWilG6uY53LScIvhRT/AHeRl33uXG3RsmvXcqYCwUtFqN1cxTuWs4Re9UU/3eRvIBUyZ53O9oAAgAAAAAAAAAAAAAAAAAAAAAAAAAADnTW99a3PhoflRNNNy1vfWtz4aH5UTTTbj/jHQQg6jUYpyk3klFZtvsSXFn2EHUajFNybUYpb22+CS7SdNWWrxaFUb28ipXbWdOD3xoJ+c8vsOZZTGCrVfgD+BRV3dxTu5ZOEWv6EcuHvnx7iRgDJb29LegAOOAAAAAAAAAAAAAAAAAAAAAAAAAAAAADnTW99a3PhoflRNOpwdVqMU5SbSiks22+CSNy1tQdTS1xGKcpNUElFZtt0o5JJcWSFqy1eLQqjeXkVK7e+nBrNW6a++fHuNXqmOMdNWOr1aFUb28jndtJ04PJq3T/f5EkAGbLK29rgADgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxlXQFpVuFeyoU3dKOyqjXpJcvn7+JkwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA//2Q==" alt="">
</header>

<!-- Content section -->
<section class="py-5">
    <div class="container">
        <h1>Welcome to the Administrator Page</h1>
        <p class="lead">Wake. Code. Eat. Sleep. Repeat.</p>
        <p>Use the links within the navigation menu.</p>
    </div>
</section>

<!-- Image Section - set the background image for the header in the line below -->
<section class="py-5 bg-image-full" style="background-image: url('https://angelchung.files.wordpress.com/2009/01/gossip-girl-promo-2.jpg');">
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

<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
