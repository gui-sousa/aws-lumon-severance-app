# The Macrodata Refinement Division Software in AWS - From Severance TV Show



<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project involves the deployment of an AWS infrastructure using Terraform, leveraging the App Runner. 
The infrastructure is tailored to support the work software used in the TV series "Severance" from Apple TV

This project is based on [Robin Spielmann](https://github.com/iam-robin/severance-interface), which developed the web application. It simulates a DevOps routine where we take the developer's project and structure the deployment for production delivery. Thanks Rob!

<p align="right">(<a href="#readme-top">back to top</a>)</p>



### Built With

* [![AWS][AWS]][AWS-url]
* [![Terraform][Terraform]][Terraform-url]
* [![Docker][Docker]][Docker-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
### Prerequisites

* Having a account in AWS with permissions to create IAM rules, App Runner and ECR;
* Terraform with Docker and AWS installed;
* Docker installed;

### Usage

1. Clone the repo
   ```sh
   git clone https://github.com/gui-sousa/aws-lumon-severance-app.git
   ```
2. Run Terraform Deploy
   ```sh
   terraform init && terraform apply 
   ```
3. (Optional) Or run deploy it correctly form :-)
   ```sh
   terraform init && \
   terraform plan -out lumon-app.tfplan && \
   terraform apply "lumon-app.tfplan"
   ```
4. Click and access the URL displayed on the LUMON-URL output in terminal
   
    https://github.com/user-attachments/assets/0c0efe09-1383-4d03-a3ac-d01e3667ed12







<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- USAGE EXAMPLES -->
## Setup

Put your AWS account keys in _variable.tf_
```hcl
  variable "aws-access_key" {
      default = "<YOUR_ACCESS_KEY>"
      description = "Access Key to auth in AWS"
      sensitive = true
  }
  
  variable "aws-secret_key" {
      default = "<YOUR_SECRET_KEY>"
      description = "Access Key to auth in AWS"
      sensitive = true
  }
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact

Gui Sousa - https://www.linkedin.com/in/guilherme-sousa-rodrigues/

Project Link: https://github.com/gui-sousa/aws-lumon-severance-app

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- ACKNOWLEDGMENTS -->



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/github_username/repo_name.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/repo_name/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/repo_name.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/repo_name/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/repo_name.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/repo_name/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/repo_name.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/repo_name/issues
[license-shield]: https://img.shields.io/github/license/github_username/repo_name.svg?style=for-the-badge
[license-url]: https://github.com/github_username/repo_name/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/linkedin_username
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[Terraform]: https://img.shields.io/badge/Terraform-20232A?style=for-the-badge&logo=terraform&logoColor=7B42BC
[Packer]: https://img.shields.io/badge/packer-20232A?style=for-the-badge&logo=packer&logoColor=02A8EF
[Ansible]: https://img.shields.io/badge/Ansible-20232A?style=for-the-badge&logo=ansible&logoColor=EE0000
[Nginx]: https://img.shields.io/badge/NGNIX-20232A?style=for-the-badge&logo=nginx&logoColor=%23009639
[Powershell]: https://img.shields.io/badge/Powershell-20232A?style=for-the-badge&logo=powershell&logoColor=5391FE
[K3S]: https://img.shields.io/badge/K3s-20232A?style=for-the-badge&logo=k3s&logoColor=%23FFC61C
[Docker]: https://img.shields.io/badge/DOCKER-20232A?style=for-the-badge&logo=docker&logoColor=%232496ED
[AWS]: https://img.shields.io/badge/AWS-20232A?style=for-the-badge&logo=amazonwebservices&logoColor=%23ff9900
[AWS-url]: https://docs.aws.amazon.com/apprunner/
[Terraform-url]: https://developer.hashicorp.com/terraform/docs
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
[Nginx-url]: https://nginx.org/en/docs/
[K3S-url]: https://docs.k3s.io/
[Docker-url]: https://docs.docker.com/
[Linkedin-url]: https://www.linkedin.com/in/guilherme-sousa-rodrigues/


