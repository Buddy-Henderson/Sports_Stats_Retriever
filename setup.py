import os
import subprocess
import sys

def install_mysql():
    # Install MySQL server and client
    subprocess.run(['sudo', 'apt', 'update'])
    subprocess.run(['sudo', 'apt', 'install', 'mysql-server', 'mysql-client'])

    # Start the MySQL service
    subprocess.run(['sudo', 'service', 'mysql', 'start'])

    # Secure MySQL installation (optional, but recommended)
    subprocess.run(['sudo', 'mysql_secure_installation'])

def install_selenium_beautifulsoup():
    # Install Python packages: Selenium and BeautifulSoup4
    subprocess.run(['pip', 'install', 'selenium', 'beautifulsoup4'])

def main():
    print("Setting up your program...")
    
    # Install MySQL if desired
    install_mysql()

    # Install Selenium and BeautifulSoup4
    install_selenium_beautifulsoup()

    print("Setup completed successfully!")

if __name__ == "__main__":
    main()