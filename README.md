🏢 WorkWave - Employee Management System
🎯 Description
WorkWave is a comprehensive PHP Laravel web application that serves as a complete employee record administration portal featuring:
Multi-Role Access Control: Secure login system with Employee and Administrator roles
Department Hierarchy: Unlimited-level tree structure for organizational management
Employee Management: Complete CRUD operations with advanced DataTables integration
Real-Time Communication: Live chat system with message history and pagination
Performance Optimized: Redis caching, server-side pagination, and AJAX-powered interactions
Security First: Role-based access control (RBAC) and SQL injection prevention
🏗️ Architecture
The application follows MVC architecture pattern with Laravel framework:
workwave/
├── app/
│   ├── Controllers/
│   │   ├── AuthController/       # Authentication logic
│   │   ├── DepartmentController/ # Department CRUD operations
│   │   ├── EmployeeController/   # Employee management
│   │   └── ChatController/       # Real-time messaging
│   ├── Models/
│   │   ├── User.php             # User model (Employee/Admin)
│   │   ├── Department.php       # Department hierarchy model
│   │   └── Message.php          # Chat message model
│   └── Middleware/
│       └── RoleMiddleware.php   # Role-based access control
├── resources/
│   ├── views/
│   │   ├── auth/               # Login/logout pages
│   │   ├── admin/              # Administrator dashboard
│   │   ├── employee/           # Employee profile pages
│   │   └── chat/               # Real-time chat interface
│   └── assets/
│       ├── js/                 # jQuery, AJAX, DataTables
│       └── css/                # Bootstrap, custom styling
├── database/
│   ├── migrations/             # Database schema
│   └── seeders/                # Default data (admin user)
└── routes/
    ├── web.php                 # Web routes
    └── api.php                 # API endpoints
Key Components:

AuthController: Handles login/logout and session management
DepartmentController: Tree structure management with AJAX filtering
EmployeeController: DataTables with server-side pagination and batch operations
ChatController: WebSocket/AJAX-powered real-time messaging
Role Middleware: Ensures proper access control

Database Structure:

Users table with role-based permissions
Departments with parent-child relationships (unlimited levels)
Messages table with pagination support
Soft delete implementation for data integrity

🔌 API Endpoints
Authentication:

POST /login - User authentication
POST /logout - Session termination
GET /dashboard - Role-based dashboard redirect

Department Management (Admin Only):

GET /api/departments - Fetch department tree structure
POST /api/departments - Create new department
PUT /api/departments/{id} - Update department
DELETE /api/departments/{id} - Delete department
GET /api/departments/{id}/employees - Get employees by department (AJAX)

Employee Management (Admin Only):

GET /api/employees - Server-side paginated employee list
POST /api/employees - Create new employee
PUT /api/employees/{id} - Update employee
DELETE /api/employees/{id} - Delete employee
POST /api/employees/batch - Batch operations (insert/update/delete)

Employee Profile:

GET /profile - View employee profile
PUT /profile - Update profile data
POST /profile/picture - Upload profile picture

Real-Time Chat:

GET /api/chat/messages - Fetch chat history (paginated)
POST /api/chat/send - Send new message
WebSocket /chat - Real-time message updates

🛠️ Local Setup
Prerequisites:

PHP 8.0 or higher
Composer
MySQL/MariaDB
XAMPP (recommended)
Node.js (for asset compilation)

Installation:

Clone the repository:

bashgit clone <repository-url>
cd workwave

Install PHP dependencies:

bashcomposer install

Environment setup:

bashcp .env.example .env
php artisan key:generate

Database configuration:
Edit .env file:

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=workwave
DB_USERNAME=root
DB_PASSWORD=

Run migrations and seeders:

bashphp artisan migrate
php artisan db:seed

Install frontend dependencies:

bashnpm install
npm run dev

Start the development server:

bashphp artisan serve

Access the application:
Navigate to http://localhost:8000

Default Login Credentials:

Admin: Username: admin | Password: admin1234
Employee: Username: nevin.guni | Password: Welcome123

❓ FAQ
Q: How do I add new employee roles?
A: Modify the roles table and update the Role middleware in app/Middleware/RoleMiddleware.php. Add corresponding permissions in the controllers.
Q: Can I extend the department hierarchy levels?
A: Yes, the system supports unlimited hierarchy levels. The tree structure is handled recursively in the Department model.
Q: How do I customize the DataTables pagination?
A: Edit the pagination settings in resources/js/datatables-config.js. You can modify records per page, sorting options, and filtering behavior.
Q: Is the chat system scalable for large teams?
A: The current implementation uses AJAX polling. For better scalability, consider integrating Laravel WebSockets or Pusher for real-time communication.
Q: How do I backup employee data?
A: Use Laravel's built-in database backup commands or MySQL dump. Ensure you include the users, departments, and messages tables.
Q: Can I integrate with Active Directory?
A: Yes, you can extend the authentication system to work with LDAP/Active Directory by modifying the AuthController and adding appropriate packages.
Q: How do I enable Redis caching?
A: Install Redis server, update .env with Redis configuration, and uncomment caching logic in the DepartmentController and EmployeeController.
Q: What's the recommended server setup for production?
A: Use nginx/Apache with PHP-FPM, MySQL 8.0+, Redis for caching, and SSL certificates. Enable Laravel's built-in security features and rate limiting.
Q: How do I customize the UI theme?
A: Modify the Bootstrap variables in resources/scss/variables.scss and compile with npm run production. Custom CSS can be added to resources/css/custom.css.
Q: Can I export employee reports?
A: The system supports batch operations. You can extend the EmployeeController to add CSV/PDF export functionality using Laravel Excel or DomPDF packages.
Built with 💼 using Laravel, MySQL, Bootstrap, jQuery, and AJAX
