import os
import subprocess
import sys
from datetime import date
import mysql.connector
import requests


    
def install_mysql_connector():
    # Install the MySQL Connector/Python library
    subprocess.run(['pip', 'install', 'mysql-connector-python'])
    

def create_database(database_name):
    # Create a new MySQL database
    subprocess.run(['mysql', '-u', 'root', '-p', '-e', f'CREATE DATABASE IF NOT EXISTS {database_name};'])
    
def clean_database_dump(dump_file_path):
    
    with open(dump_file_path, "r") as file:
        lines = file.readlines()
        
    mysql_dump_index = None
    
    for i , line in enumerate(lines):
        
        if "-- MySQL dump" in line:
            mysql_dump_index = i
        
            break
        
    if mysql_dump_index is not None:
        
        clean_dump = lines[mysql_dump_index:]
        
        with open(dump_file_path, "w") as new_file:
            
            new_file.writelines(clean_dump)
    
def import_database_dump(database_name, dump_file_path):
    
    clean_database_dump(dump_file_path)
    
    subprocess.run(['mysql', '-u', 'root', '-p', database_name, '<', dump_file_path], shell=True)


def install_selenium_beautifulsoup():
    # Install Python packages: Selenium and BeautifulSoup4
    subprocess.run(['pip', 'install', 'selenium', 'beautifulsoup4'])

def download_python_files_from_github(repository_url, files_to_download, target_directory):
    # Create the target directory if it doesn't exist
    os.makedirs(target_directory, exist_ok=True)

    # Get the raw content of the file from GitHub and save it locally
    response = requests.get(repository_url)
    
    if response.status_code == 200:
        with open(os.path.join(target_directory, os.path.basename(repository_url)), 'wb') as file:
            file.write(response.content)
    else:
        print(f"Failed to download file from {repository_url}")

    # Download individual files from the GitHub repository
    for file in files_to_download:
        subprocess.run(['curl', '-o', os.path.join(target_directory, os.path.basename(file)), file])

def main():
    print("Setting up your program...")

    
    #Install MySQL Connector
    install_mysql_connector()
    
    print("MySQL Connector Installed")

    # Install Selenium and BeautifulSoup4
    install_selenium_beautifulsoup()
    
    print("Selenium Installed")
    print("BeautifulSoup4 Installed")
    
    current_date = date.today()
    formatted_date = current_date.strftime("%m-%d-%Y")

    # Specify the GitHub repository URL, files to download, and target directory
    github_repository_url = 'https://github.com/HoosierRepoDaddy/Sports_Stats_Retriever'
    files_to_download = [
        'https://github.com/HoosierRepoDaddy/Sports_Stats_Retriever/blob/main/main_Library.py',
        'https://github.com/HoosierRepoDaddy/Sports_Stats_Retriever/blob/main/prediction_Library.py',
        'https://github.com/HoosierRepoDaddy/Sports_Stats_Retriever/blob/main/calculation_Library.py',
        f'https://github.com/HoosierRepoDaddy/Sports_Stats_Retriever/blob/main/{formatted_date}-MLBDump.sql',
        f'https://github.com/HoosierRepoDaddy/Sports_Stats_Retriever/blob/main/{formatted_date}-NFLDump.sql'
        
        # Add more file URLs as needed
    ]
    target_directory = os.path.expanduser("~/Desktop/Sports_Stats_Retrieval_Library")

    # Create multiple MySQL databases
    databases_to_create = ['mlb_stats', 'nfl_stats', 'nba_stats']
    for db_name in databases_to_create:
        create_database(db_name)
        
    # Customize the MySQL database connection
    mysql_config = {
        'user': 'root',
        'password': 'root',
        'host': '127.0.0.1',  # Customize the host IP here
        
    }

    
    # Establish a single MySQL database connection
    connection = mysql.connector.connect(**mysql_config)

    # Use this connection for all databases on the same MySQL server
    mlb = connection.cursor(buffered=True)
    nfl = connection.cursor(buffered=True)
   

    # Perform operations on each database using the respective cursor
    mlb.execute("USE mlb_stats")
    nfl.execute("USE nfl_stats")
    

    # Download Python files from GitHub
    download_python_files_from_github(github_repository_url, files_to_download, target_directory)
    database_CategoryList = ['MLB', 'NFL']
    for db_name in database_CategoryList:
        dump_file_path = os.path.expanduser("~Desktop/Sports_Stats_Retrieval_Library/{formatted_date}-{db_name}Dump.sql")
        import_database_dump(db_name, dump_file_path)

    print("Setup completed successfully!")

if __name__ == "__main__":
    main()
