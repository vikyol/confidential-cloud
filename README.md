# Confidential Cloud
A curated list of resources about confidential computing on public cloud.


## Contents

- [Confidential Cloud](#confidential-cloud)
  - [Contents](#contents)
  - [Confidential Computing Benefits and Use-Cases](#confidential-computing-benefits-and-use-cases)
  - [Attestation](#attestation)
  - [Trusted Execution Environments](#trusted-execution-environments)
    - [Process-based](#process-based)
    - [VM-based](#vm-based)
  - [Azure Confidential Computing](#azure-confidential-computing)
  - [AWS Nitro Enclaves](#aws-nitro-enclaves)
  - [Confidential Containers](#confidential-containers)
  - [Tools / Frameworks / SDKs](#tools--frameworks--sdks)


## Confidential Computing Benefits and Use-Cases
The main benefit of confidential computing on public cloud is that it enables organizations to process sensitive data and run confidential workloads in a secure and confidential environment, without having to worry about the security risks of running these workloads on shared infrastructure.

With confidential computing, sensitive data is processed within a Trusted Execution Environment (TEE), which provides hardware-level isolation and protection for data and applications. This means that sensitive data is never exposed to the host operating system or any other applications running on the same physical hardware, making it much harder for attackers to gain access to the data.

By enabling secure processing of sensitive data on public cloud, confidential computing makes it easier for organizations to take advantage of the scalability and flexibility of cloud computing while still maintaining the privacy and security of their data. This is especially important for organizations that handle sensitive data such as financial institutions, healthcare providers, and government agencies, which need to comply with data protection regulations and maintain the trust of their customers and citizens.

Confidential computing can be used to protect sensitive workloads and data in a variety of use cases, including financial services, healthcare, government, and machine learning. It enables secure processing of sensitive data such as personally identifiable information (PII), intellectual property (IP), and financial data, without exposing it to unauthorized access or tampering. Additionally, it can be used to ensure compliance with data protection regulations and to prevent data breaches.

## Attestation

Attestation is a critical concept of confidential computing. Attestation is the process of verifying the identity and integrity of a device or application.
Attestation process helps to ensure that you are using a trustworthy system before you start processing your data.

- [Project Amber by Intel](https://www.intel.com/content/www/us/en/security/project-amber.html) - Intel's service/SaaS-based implementation of an independent trust authority that provides attestation of workloads in a public/private multi-cloud environment.
- [Microsoft Azure Attestation Service](https://azure.microsoft.com/en-us/products/azure-attestation/) - Helps to verify the identity and security posture of a platform before you interact with it.
- [AWS Attestation](https://docs.aws.amazon.com/enclaves/latest/user/set-up-attestation.html) - A Nitro enclave uses the attestation process to prove its identity and build trust with an external service.
- [Scone CAS](https://sconedocs.github.io/CASOverview/) - Scone Configuration and Attestation Service 
- [AMD SEV-SNP Guest Attestation Examples](https://github.com/AMDESE/sev-guest) - Open source tools to perform remote attestation of SEV-SNP guests.

## Trusted Execution Environments
A Trusted Execution Environment (TEE) is like a secure bubble within a device that protects sensitive information from malicious actors. It is a secure area of a device's hardware that runs trusted code and processes data in a secure and isolated environment. 

### Process-based
- [Intel SGX - Software Guard Extensions](https://www.intel.com/content/www/us/en/developer/tools/software-guard-extensions/overview.html) - offers hardware-based memory encryption that isolates specific application code and data in memory.
 
### VM-based
- [Intel TDX - Trusted Domain Extensions](https://www.intel.com/content/www/us/en/developer/articles/technical/intel-trust-domain-extensions.html) - An architectural technology to deploy hardware-isolated, Virtual Machines (VMs) called Trust Domains (TDs)
- [AMD SEV - Secure Encrypted Virtualization](https://developer.amd.com/sev/) - Enables the memory for a VM to be encrypted with a key unique to the VM. SEV is particularly applicable to cloud computing since it can reduce the amount of trust VMs need to place in the hypervisor and administrator of their host system.
- [AWS Nitro Enclaves](https://aws.amazon.com/ec2/nitro/nitro-enclaves/) - isolated compute environments to further protect and securely process highly sensitive data. 

## Azure Confidential Computing

Azure Confidential Computing enables the secure processing of data and applications in the cloud through the use of hardware-level isolation and protection. This means that sensitive data and applications can be processed without being exposed to the underlying hypervisor. Azure offers two different types of solutions - enclave-based and VM-based - both of which provide a high level of security and confidentiality for sensitive workloads.

- [Application Enclaves](https://learn.microsoft.com/en-us/azure/confidential-computing/application-development) -  Isolated environments that run on Intel SGX to protect specific code and data. DCsv3 VMs offer application isolation using Intel SGX.
- [Confidential VMs](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-vm-overview) -  Provides a secure and isolated environment for running sensitive workloads in the cloud.
    - [AMD SEV-SNP](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-vm-overview) - DCasv5 and ECasv5 series confidential VMs based on AMD processors with SEV-SNP technology.
    - [Intel TDX](https://azure.microsoft.com/en-us/blog/azure-confidential-computing-on-4th-gen-intel-xeon-scalable-processors-with-intel-tdx/) - Confidential computing on 4th Gen Intel Xeon Scalable processors with Intel Trusted Domain Extensions (Intel TDX). 
- [Confidential Containers](https://learn.microsoft.com/en-us/azure/confidential-computing/confidential-containers) - Provides a set of features and capabilities to further secure your standard container workloads to achieve higher data security, data privacy and runtime code integrity goals.  

## AWS Nitro Enclaves

AWS Nitro Enclaves is a service that allows you to securely process and store sensitive data in the cloud using a hardware-based Trusted Execution Environment (TEE) called the Nitro Enclave. A Nitro Enclave is a small, isolated environment within an Amazon Elastic Compute Cloud (EC2) instance that provides hardware-level isolation and protection for your sensitive data and applications. It is completely separate from the host operating system and can only be accessed by authorized applications.

- [AWS Perspective](https://aws.amazon.com/blogs/security/confidential-computing-an-aws-perspective/) - The Nitro approach to confidential computing 
- [Nitro Enclaves](https://aws.amazon.com/ec2/nitro/nitro-enclaves/) - isolated compute environments to further protect and securely process highly sensitive data. 

## Confidential Containers
- [Confidential Containers](https://github.com/confidential-containers) - an open source community working to enable cloud native confidential computing by leveraging Trusted Execution Environments to protect containers and data.


## Tools / Frameworks / SDKs
- [Enarx](https://enarx.dev) - Application deployment system enabling applications to run within Trusted Execution Environments.
- [Scone](https://sconedocs.github.io/) - A confidential computing platform to deploy applications to enclaves.
- [Google Asylo](https://github.com/google/asylo) - An open and flexible framework for developing enclave applications. 
- [Intel SGX SDK](https://www.intel.com/content/www/us/en/developer/tools/software-guard-extensions/linux-overview.html) - Intel® Software Guard Extensions SDK
- [AMD SEV API](https://developer.amd.com/sev/) - AMD SEV API
- [Gramine OS](https://gramineproject.io/) - A Library OS for unmodified confidential applications 
- [Occlum](https://occlum.io/) - A library OS to run every application in secure enclaves.
- [Open Enclave](https://github.com/openenclave/openenclave) - Hardware-agnostic open source library for developing applications that utilize enclaves.
- [EGO](https://www.edgeless.systems/products/ego/) - An open-source SDK to develop confidential apps in golang.
- [Apache TeaClave](https://github.com/apache/incubator-teaclave) - an open source universal secure computing platform
- [Linux Stack for Intel TDX](https://github.com/intel/tdx-tools) - TDX Tools for Linux
