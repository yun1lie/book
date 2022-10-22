<template>
  <div class="Home">
    <div class="menu-btn">
      <i class="fas fa-bars fa-2x"></i>
    </div>

    <div class="container">
      <TheNav></TheNav>
      <!-- Showcase -->
      <header class="showcase">
        <h2>New Books</h2>
        <p>
          The new book is on the market and is in hot sale. Come and buy it
          quickly!!
        </p>
        <router-link to="/newBook" class="btn">
          Shop Now <i class="fas fa-chevron-right"></i
        ></router-link>
        <router-link to="/newBook"></router-link>
      </header>

      <!-- Home cards 1 -->
      <section class="home-cards">
        <div>
          <img src="@/assets/pic/NewBook.jpeg" alt="" />
          <h3>New Book</h3>
          <p>The new book is on the market and is in hot sale.</p>
          <br />
          <router-link to="/newBook"
            >Learn More <i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
        <div>
          <img src="@/assets/pic/sellBook.jpeg" alt="" />
          <h3>Best selling books</h3>
          <p>The hottest book in October 2022</p>
          <br /><br />
          <router-link to="/newBook"
            >Learn More <i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
        <div>
          <img src="@/assets/pic/reBook.jpeg" alt="" />
          <h3>Recommended Books</h3>
          <p>
            Buy an recommend One X console and double your fun with a free
            select extra controller. Starting at $349.
          </p>
          <router-link to="/newBook"
            >Learn More <i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
        <div>
          <img src="@/assets/pic/lBook.jpeg" alt="" />
          <h3>Book classification</h3>
          <p>
            Expect more. World class performance, with more privacy, more
            productivity, and more value.
          </p>
          <router-link to="/newBook"
            >Learn More <i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
      </section>

      <!-- recommend -->
      <section class="recommend">
        <div class="content">
          <h2 style="color: white">Book recommendations</h2>
          <p style="color: white">
            Reading is to discuss not only firewood, rice, oil, salt, sauce and
            vinegar tea with your lover in the future, but also about any other
            thing you love, such as qinqi, calligraphy, painting, poetry hops,
            etc. Spending time in reading, even if materially poor, is extremely
            rich spiritually.
          </p>
          <br /><br />
          <router-link to="/newBook" class="btn">
            Read Now <i class="fas fa-chevron-right"></i>
          </router-link>
        </div>
      </section>

      <!-- Home cards 2 -->
      <section class="home-cards">
        <div>
          <img src="./pic/2.jpg" alt="" />
          <h3>The Work of UNICEF</h3>
          <p>
            Find out how UNICEF drives change for children and young people
            every day, across the globe.
          </p>
          <br />
          <router-link to="/newBook"
            >Click to view<i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
        <div>
          <img src="./pic/3.jpg" alt="" />
          <h3>Research and reports</h3>
          <p>
            UNICEF’s work is grounded in empirical data, rigorous research and
            thoughtful analysis.
          </p>
          <br />
          <router-link to="/newBook"
            >Click to view<i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
        <div>
          <img src="./pic/4.jpg" alt="" />
          <h3>Stories and features</h3>
          <p>Beyond the headlines, every child has a story.</p>
          <br /><br />
          <router-link to="/newBook"
            >Click to view <i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
        <div>
          <img src="./pic/5.jpg" alt="" />
          <h3>Take action</h3>
          <p>
            Join us to make a direct impact in the lives of the world’s most
            vulnerable children.
          </p>
          <br />
          <router-link to="/newBook"
            >Click to view <i class="fas fa-chevron-right"></i
          ></router-link>
        </div>
      </section>

      <!-- Carbon -->
      <section class="carbon dark">
        <div class="content">
          <h2>Commiting To Carbon Negative</h2>
          <p>
            Microsoft will be carbon negative by 2030 and by 2050 we will remove
            all carbon the company has emitted since it was founded in 1975
          </p>
          <router-link to="/newBook" class="btn">
            Learn More <i class="fas fa-chevron-right"></i>
          </router-link>
        </div>
      </section>

      <!-- Follow -->
      <section class="follow">
        <p>Follow Microsoft</p>
        <router-link to="/newBook">
          <img src="https://i.ibb.co/LrVMXNR/social-fb.png" alt="Facebook" />
        </router-link>
        <router-link to="/newBook">
          <img
            src="https://i.ibb.co/vJvbLwm/social-twitter.png"
            alt="Twitter"
          />
        </router-link>
        <router-link to="/newBook">
          <img
            src="https://i.ibb.co/b30HMhR/social-linkedin.png"
            alt="Linkedin"
          />
        </router-link>
      </section>
    </div>
    <!-- Links -->
    <section class="links">
      <div class="links-inner">
        <ul>
          <li><h3>What's New</h3></li>
          <li><router-link to="/newBook">Surface Pro X</router-link></li>
          <li><router-link to="/newBook">Surface Laptop 3</router-link></li>
          <li><router-link to="/newBook">Surface Pro 7</router-link></li>
          <li><router-link to="/newBook">Windows 10 apps</router-link></li>
          <li><router-link to="/newBook">Office apps</router-link></li>
        </ul>
        <ul>
          <li><h3>Microsoft Store</h3></li>
          <li><router-link to="/newBook">Account Profile</router-link></li>
          <li><router-link to="/newBook">Download Center</router-link></li>
          <li>
            <router-link to="/newBook">Microsoft Store support</router-link>
          </li>
          <li><router-link to="/newBook">Returns</router-link></li>
          <li><router-link to="/newBook">Older tracking</router-link></li>
        </ul>
        <ul>
          <li><h3>Education</h3></li>
          <li>
            <router-link to="/newBook">Microsfot in education</router-link>
          </li>
          <li><router-link to="/newBook">Office for students</router-link></li>
          <li>
            <router-link to="/newBook">Office 365 for schools</router-link>
          </li>
          <li><router-link to="/newBook">Deals for studentss</router-link></li>
          <li><router-link to="/newBook">Microsfot Azure</router-link></li>
        </ul>
        <ul>
          <li><h3>Enterprise</h3></li>
          <li><router-link to="/newBook">Azure</router-link></li>
          <li><router-link to="/newBook">AppSource</router-link></li>
          <li><router-link to="/newBook">Automotive</router-link></li>
          <li><router-link to="/newBook">Government</router-link></li>
          <li><router-link to="/newBook">Healthcare</router-link></li>
        </ul>
        <ul>
          <li><h3>Developer</h3></li>
          <li><router-link to="/newBook">Visual Studio</router-link></li>
          <li><router-link to="/newBook">Windowszs Dev Center</router-link></li>
          <li><router-link to="/newBook">Developer Network</router-link></li>
          <li><router-link to="/newBook">TechNet</router-link></li>
          <li><router-link to="/newBook">Microsoft Developer</router-link></li>
        </ul>
        <ul>
          <li><h3>Company</h3></li>
          <li><router-link to="/newBook">Careers</router-link></li>
          <li><router-link to="/newBook">About Microsoft</router-link></li>
          <li><router-link to="/newBook">Company news</router-link></li>
          <li><router-link to="/newBook">Privacy at Microsoft</router-link></li>
          <li><router-link to="/newBook">Inverstors</router-link></li>
        </ul>
      </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
      <div class="footer-inner">
        <div><i class="fas fa-globe fa-2x"></i> English (United States)</div>
        <ul>
          <li><router-link to="/newBook">Sitemap</router-link></li>
          <li><router-link to="/newBook">Contact Microsoft</router-link></li>
          <li><router-link to="/newBook">Privacy & cookies</router-link></li>
          <li><router-link to="/newBook">Terms of use</router-link></li>
          <li><router-link to="/newBook">Trademarks</router-link></li>
          <li><router-link to="/newBook">Safety & eco</router-link></li>
          <li><router-link to="/newBook">About our ads</router-link></li>
          <li>
            <router-link to="/newBook">&copy; Microsoft 2020</router-link>
          </li>
        </ul>
      </div>
    </footer>
  </div>
</template>

<script>
import TheNav from "./TheNav/TheNav.vue";
window.onload = function () {
  document
    .querySelector(".menu-btn")
    .addEventListener("click", () =>
      document.querySelector(".main-menu").classList.toggle("show")
    );
};

export default { components: { TheNav } };
</script>

<style scoped>
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
  background: #fff;
  color: #000;
  font-size: 15px;
  line-height: 1.5;
}

a {
  color: #262626;
  text-decoration: none;
}

ul {
  list-style: none;
}

.container {
  width: 90%;
  max-width: 1100px;
  margin: auto;
}

.menu-btn {
  cursor: pointer;
  position: absolute;
  top: 20px;
  right: 30px;
  z-index: 2;
  display: none;
}

.btn {
  cursor: pointer;
  display: inline-block;
  border: 0;
  font-weight: bold;
  padding: 10px 20px;
  background: #262626;
  color: #fff;
  font-size: 15px;
}

.btn:hover {
  opacity: 0.9;
}

.dark {
  color: #fff;
}

.dark .btn {
  background: #f4f4f4;
  color: #333;
}

/* Showcase */
.showcase {
  width: 100%;
  height: 400px;
  background: url("@/assets/pic/book.jpeg") no-repeat center
    center/cover;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
  justify-content: flex-end;
  padding-bottom: 50px;
  margin-bottom: 20px;
}

.showcase h2,
.showcase p {
  margin-bottom: 10px;
}

.showcase .btn {
  margin-top: 20px;
}

/* Home cards */
.home-cards {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-gap: 20px;
  margin-bottom: 40px;
}

.home-cards img {
  width: 100%;
  height: 177.5px;

  margin-bottom: 20px;
}

.home-cards h3 {
  margin-bottom: 5px;
}

.home-cards a {
  display: inline-block;
  padding-top: 10px;
  color: #0067b8;
  text-transform: uppercase;
  font-weight: bold;
}

.home-cards a:hover i {
  margin-left: 10px;
}

/* recommend */
.recommend {
  width: 100%;
  height: 350px;
  background: url("./pic/1.jpg") no-repeat center center/cover;
  margin-bottom: 20px;
}

.recommend .content {
  width: 40%;
  padding: 50px 0 0 30px;
}

.recommend p,
.carbon p {
  margin: 10px 0 20px;
}

/* Carbon */
.carbon {
  width: 100%;
  height: 350px;
  background: url("https://i.ibb.co/72cgtsz/carbon.jpg") no-repeat center
    center/cover;
}

.carbon .content {
  width: 55%;
  padding: 100px 0 0 30px;
}

/* Follow */
.follow {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  margin: 30px 0 30px;
}

.follow * {
  margin-right: 10px;
}

/* Links */
.links {
  background: #f2f2f2;
  color: #616161;
  font-size: 12px;
  padding: 35px 0;
}

.links-inner {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 20px;
  display: grid;
  grid-template-columns: repeat(6, 1fr);
  grid-gap: 10px;
  align-items: flex-start;
  justify-content: center;
}

.links li {
  line-height: 2.8;
}

/* Footer */
.footer {
  background: #f2f2f2;
  color: #616161;
  font-size: 12px;
  padding: 20px 0;
}

.footer-inner {
  max-width: 1100px;
  margin: 0 auto;
  padding: 0 20px 0 20px;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.footer div {
  margin-bottom: 20px;
  display: flex;
  align-items: center;
}

.footer div i {
  margin-right: 10px;
}

.footer ul {
  display: flex;
  flex-wrap: wrap;
}

.footer li {
  margin-right: 30px;
  margin-bottom: 20px;
}

@media (max-width: 700px) {
  .menu-btn {
    display: block;
  }

  .menu-btn:hover {
    opacity: 0.5;
  }

  .main-nav ul.right-menu {
    margin-right: 50px;
  }

  .main-nav ul.main-menu {
    display: block;
    position: absolute;
    top: 0;
    left: 0;
    background: #f2f2f2;
    width: 50%;
    height: 100%;
    border-right: #ccc 1px solid;
    opacity: 0.9;
    padding: 30px;
    transform: translateX(-500px);
    transition: transform 0.5s ease-in-out;
  }

  .main-nav ul.main-menu li {
    padding: 10px;
    border-bottom: #ccc solid 1px;
    font-size: 14px;
  }

  .main-nav ul.main-menu li:last-child {
    border-bottom: 0;
  }

  .main-nav ul.main-menu.show {
    transform: translateX(-20px);
  }

  .home-cards {
    grid-template-columns: repeat(2, 1fr);
  }

  .recommend .content p {
    display: none;
  }

  .recommend .content h2 {
    margin-bottom: 20px;
  }

  .carbon .content {
    width: 85%;
  }

  .links .links-inner {
    grid-template-columns: repeat(2, 1fr);
  }
}

@media (max-width: 500px) {
  .home-cards {
    grid-template-columns: 1fr;
  }

  .links .links-inner {
    grid-template-columns: 1fr;
  }

  .links .links-inner ul {
    margin-bottom: 20px;
  }
}
</style>
