## Automatization the creation of directories, servers from JS and Python Projects

### About the tool:
This is a shell script that create full working servers such as [Django](https://www.djangoproject.com), [React](https://github.com/facebook/react), [React Native](https://github.com/facebook/react-native/), Python microservices ready to deploy with Virtual Environment, Docker, Makefile, and more.


## Type of Projects:
- `py`
- `py-django`
- `js-react`
- `js-react-native`
- `c`

### Usage
```bash
  ./main.sh
```
It will ask the name of the Project directory:
```bash
$Enter the name of Project directory: my_project
```
Then it'll create a new directory inside of the currently directory and ask the type of project
```
Creating my_project ...
Type of the project: js-react
```

Eventually, when finished it will open VSCode or PyCharm with the correspondent shortcut and start the server.

## Samples:
### Python Microservice
|  `py` project: | result |
| ------------------------------  | ------ |
| ![Executing the script](/images/python_microservice/script_execution.png) | ![Python Microservice Project](/images/python_microservice/python_microservice_project.png) |


### Django
|  `py-django` project: | result |
| ------------------------------  | ------ |
| ![Executing the script](/images/django_project/script_execution.png) | ![Django Project](/images/django_project/Django_project.png)

### JS React 
|  `js-react` project: | result |
| ------------------------------  | ------ |
| ![Executing the script](/images/react_project/script_execution_pt1.png) | ![React Project](/images/react_project/React_project.png) |
![Server Running](/images/react_project/running_server_react.png)

### JS React Native
|  `js-react-native` project: | result |
| ------------------------------  | ------ |
| ![Executing the script](/images/react_native_project/script_execution.png) | ![React Native Project](/images/react_native_project/React_Native_app.png)

## Future Improvements
- Customize the tool to create project in the selected directory such as a `my-projects` inside a person's machine
- Catch erros, such as `npx` not found, or `python` not installed
- Ask the user which is it's prefered code editor to open with it
