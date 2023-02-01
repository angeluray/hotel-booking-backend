<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [:card_index: Entity Relationship Diagram](#er-diagram)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Hotelator - Booking app 
Hotelator is a web service built with React & Redux, PostgreSQL and Ruby on Rails that allows users to Sign in/up, reserve hotel packages, check for the reservations the have made, create hotels based on cities, store images, delete hotels or just cancel reservations. All users actions/request are made by using JWT authentication in order to have the permissions to retrieve the required data per user.

#### Client-side repository [Hotel-Booking-Frontend](https://github.com/angeluray/hotel-booking-frontend.git)

## 🛠 Built With <a name="built-with"></a>

- Ruby on Rails
- Ruby
- Bubocop
- Gems
  - Rspec
  - Capybara
  - Selenium-webdriver
  - Bcrypt
  - JWT
  - Devise

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li>React</li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li>Ruby on Rails</li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **[Create and run necessary migration files]**
- **[Match table and column names to the ERD diagram.]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ER DIAGRAM-->

## :card_index: Entity Relationship Diagram <a name="er-diagram"></a>

The end result should follow the following data model (this is an Entity Relationship Diagram that you are already familiar with):

![image](https://user-images.githubusercontent.com/85793292/213567829-7e4e52a4-8d2a-4688-94b4-3be67b5b3ca2.png)
  
<!-- LIVE DEMO -->

## 🚀 Live Demos and Importand links <a name="live-demo"></a>

- [Hotelator live site](https://inspiring-kashata-9d9dfc.netlify.app/)

- [Hotelator backend](https://hotelator.onrender.com)
> Note this is for information purpose, however if you go to this link you wont be able to see a content, since it is API only(It will retrieve json responses)

- [Hotelator API documentation](https://documenter.getpostman.com/view/25389109/2s8ZDVZifK)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Visual representation

![image_2023-01-19_19-00-48](https://user-images.githubusercontent.com/97189760/213582355-7102d3bb-4878-4fe2-8207-ddb6ac574844.png)
![image_2023-01-19_19-01-17](https://user-images.githubusercontent.com/97189760/213582378-7a3e0f7f-f044-4f04-a30f-bba6f60cb7ec.png)
![image_2023-01-19_19-01-39](https://user-images.githubusercontent.com/97189760/213582402-44439e5e-4efb-468e-ae6c-84c791fc7bcb.png)
![image_2023-01-19_19-02-40](https://user-images.githubusercontent.com/97189760/213582424-5e6044ab-6a6c-413c-9366-2ad717f7cb4e.png)
![image_2023-01-19_19-03-41](https://user-images.githubusercontent.com/97189760/213582468-966eea6e-e585-467a-aa87-99c861f6b4dd.png)
![image_2023-01-19_19-04-03](https://user-images.githubusercontent.com/97189760/213582560-a72aaa97-70a9-40a1-a751-4165db79099f.png)
![image_2023-01-19_19-06-00](https://user-images.githubusercontent.com/97189760/213582599-cd6585ad-80df-4ac3-8e15-f12a3abe3006.png)

## Roadmap

 - Set up the repository/repositories on GitHub and use Gitflow.
 - Set up Postgres for the database
 - Create controllers, endpoints and models
 - Use Rails to create API.
 - Use React & Redux to create frontend UI.
 - Create README

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

## Frontend repository

- Run the command bellow first in your terminal in a different folder and open the file using cd <the name of the file> if needed.
> git clone https://github.com/angeluray/hotel-booking-frontend.git

### Prerequisites

In order to run this project you need:
`Git` and `Ruby`

```
 gem install rails
```

### Install

Install this project with:

Run the command bellow first and open the file using cd <the name of the file> if needed.

> git clone git@github.com:angeluray/hotel-booking-backend.git

```sh or bash
  bundle install
```

Create and migrate the database
```sh or bash
 rails db:create
 rails db:migrate
 rails db:seed
```

### Usage

To run the project, execute the following command:

```sh or bash
  rails server or rails s
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->
## 👥 Authors <a name="authors"></a>

<div id="badges"align="center">

## 👤 *Tadesse Jemal*

</div>
<div id="badges"align="center">
  <a href="https://www.linkedin.com/in/tadesse-jemal-7b7058204/">
    <img src="https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge"/>
  </a>
  <a href="https://github.com/Tadessejemal1/Tadessejemal1">
    <img src="https://img.shields.io/badge/github-black?style=for-the-badge&logo=github&logoColor=white" alt="Github Badge"/>
  </a>
  <a href="https://twitter.com/TadesseJemal2">
    <img src="https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white" alt="Twitter Badge"/>
  </a>
</div>
<div id="badges"align="center">

## 👤 *Angel uray*

</div>

<div id="badges"align="center">
  <a href="www.linkedin.com/in/angeluray-jobs">
    <img src="https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge"/>
  </a>
  <a href="https://github.com/angeluray">
    <img src="https://img.shields.io/badge/github-black?style=for-the-badge&logo=github&logoColor=white" alt="Github Badge"/>
  </a>
  <a href="https://twitter.com/atangeluray">
    <img src="https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white" alt="Twitter Badge"/>
  </a>
</div>
<div id="badges"align="center">

## 👤 * Kumilachew Getie*

</div>

<div id="badges"align="center">
  <a href="https://www.linkedin.com/in/kumilachew-getie-0356bb157/">
    <img src="https://img.shields.io/badge/LinkedIn-blue?style=for-the-badge&logo=linkedin&logoColor=white" alt="LinkedIn Badge"/>
  </a>
  <a href="https://github.com/Kumilachew-g/">
    <img src="https://img.shields.io/badge/github-black?style=for-the-badge&logo=github&logoColor=white" alt="Github Badge"/>
  </a>
  <a href="https://github.com/Kumilachew-g/">
    <img src="https://img.shields.io/badge/Twitter-blue?style=for-the-badge&logo=twitter&logoColor=white" alt="Twitter Badge"/>
  </a>
</div>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Controllers, and Models specs]**
- [ ] **[Improve overrall style and perfomance of the application]**
- [ ] **[Admin role to allow only admins to Add hotels]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- We want to say thank you to [Murat Korkmaz](https://www.behance.net/muratk) on Behance the creator of this beautiful [design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign) that we used as a guide to build our project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **Can i use this project as mine?**

  - This project is for educational purposes and it belongs to its creators, however you can clone it and use it a guide for creating yours as part of
  an educational project.

- **This project is availabe to do actual reservations?**

  - No, however it works almost the same, and you could use it in the future for creating your own app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
