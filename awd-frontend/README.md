# Advanced Web Task - Frontend

Dear Mr. Holger, welcome to the frontend repository of my Advanced Web Task project!

This project has been prepared specifically to run effortlessly on an Ubuntu Virtual Machine. I have left some comments in the source code (specifically in `dashboard.ts`, `analytics.ts`, and `profile.ts`) highlighting key architectural decisions, such as the use of modern Angular Signals and dynamic API polling.

## Instructions for the Ubuntu VM

I have provided three helpful bash scripts to make evaluating this project as seamless as possible. You may need to make them executable first by running:
`chmod +x *.sh`

### 1. Setup the Environment
Run the setup script to install Node.js, Angular CLI, Google Chrome (for headless testing), and all npm packages:
```bash
bash setup-vm.sh
```

### 2. Run the Application
To serve the application on `http://localhost:4200`:
```bash
bash start-app.sh
```

### 3. Run Tests and View Coverage
To execute the Karma/Jasmine test suite and generate a detailed coverage report:
```bash
bash run-tests.sh
```