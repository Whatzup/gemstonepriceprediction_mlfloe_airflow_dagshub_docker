echo [$(date)]: "START"
set -e
PROJECT_DIR=$(pwd)

echo [$(date)]: "creating env with python 3.8 version" 
python3 -m venv venv

echo [$(date)]: "activating the environment" 
source venv/Scripts/activate

echo "Upgrade pip"
python.exe -m pip install --upgrade pip

pip install -r requirements_dev.txt

# echo [$(date)]: "installing dependencies" 
# if [ -f requirements_dev.txt ]; then
#     echo ""installing the dev requirements" 
#     pip install -r requirements_dev.txt
# else
#     echo "No requirements.txt file found"
# fi

echo "Installing development tools"
pip install black pylint mypy

echo [$(date)]: "END" 