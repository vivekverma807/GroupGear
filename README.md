# GroupGear

> **Collaborate better. Manage group projects smarter.**

**GroupGear** is a collaborative project management and teamwork platform designed to help student teams and small groups efficiently plan, organize, and execute group projects. It centralizes communication, task management, and progress tracking in one simple and intuitive system.

---

## 📌 About the Project

GroupGear was created to solve common problems faced during group projects such as poor coordination, unclear task ownership, missed deadlines, and scattered communication across multiple platforms. The platform acts as a single workspace where team members can collaborate transparently and stay aligned.

It is especially useful for:

* College and university group projects
* Hackathon teams
* Small development or startup teams

---

## 📝 Project Description

GroupGear enables users to create or join groups, assign tasks, track progress, and collaborate effectively. Each group has its own dashboard where members can view assigned tasks, deadlines, and project status. The system promotes accountability and improves productivity by keeping everyone on the same page.

The application is built with a focus on simplicity, usability, and scalability, making it easy for beginners as well as experienced developers to understand and extend.

---

## ✨ Key Features

* User authentication (login & registration)
* Create and manage groups
* Add, assign, update, and delete tasks
* Track task status (Pending / In Progress / Completed)
* Group-based dashboards
* Simple and responsive UI
* Secure data handling

---

## 🛠 Tech Stack

* **Frontend:** HTML, CSS, JavaScript
* **Backend:** PHP
* **Database:** MySQL
* **Server:** Apache (XAMPP / WAMP)

---

## 📁 Project Structure

```
GroupGear/
├─ assets/
│  ├─ css/          # Stylesheets
│  ├─ js/           # JavaScript files
│  └─ images/       # Images and icons
├─ config/          # Database configuration
├─ auth/            # Login & registration logic
├─ dashboard/       # Group & task dashboards
├─ includes/        # Reusable PHP components
├─ database/        # SQL files
├─ index.php        # Entry point
├─ README.md
└─ LICENSE
```

---

## 🚀 How to Run Locally

1. Clone the repository

```bash
git clone https://github.com/vivekverma807/GroupGear.git
```

2. Move the project folder to your server directory

```text
htdocs/GroupGear   (XAMPP)
www/GroupGear      (WAMP)
```

3. Create a MySQL database

* Open phpMyAdmin
* Create a database named `groupgear`
* Import the SQL file from the `database/` folder

4. Configure database connection

Update database credentials in:

```php
config/db.php
```

5. Start Apache & MySQL and open in browser

```text
http://localhost/GroupGear
```

---

## 🔐 User Roles

* **Admin / Group Creator:** Create groups, assign tasks, manage members
* **Group Member:** View assigned tasks, update status, collaborate

---

## 📈 Future Enhancements

* Real-time chat for groups
* Notifications and reminders
* File sharing within groups
* Role-based access control
* Mobile app version

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a new branch: `git checkout -b feature-name`
3. Commit changes: `git commit -m "Add new feature"`
4. Push and open a Pull Request

---

## 📄 License

This project is licensed under the MIT License.

---

## 📬 Contact

Developed by **Vivek Kumar Verma**
GitHub: [https://github.com/vivekverma807](https://github.com/vivekverma807)

---
