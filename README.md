# Publish Notification App 

This app makes it simple to add custom notifications to report errors to users from any Apex process event @future or batch. Notifications are deliovered to users on Salesforce ORG via Lightning Component. The app is built with SalesforceDX using Lightning Components for API version 45.00 and above.

## Installation Instructions

There are two ways to install Notification App:

-   [Using Salesforce DX](#installing-notification-app-using-salesforce-dx): This is the recommended installation option. Use this option if you are a developer who may want to customize the app or components and may want to contribute to this project code. *To contribute a feature or fix and issue please submit a pull request for review.
-   [Using an Unlocked Package](#installing-notification-app-using-an-unlocked-package): This option allows anybody to install and use the Loan Calculator App or components without installing a local development environment.

## Installing Notification App using Salesforce DX

1. Set up your environment. Follow the steps in the [Quick Start: Lightning Web Components](https://trailhead.salesforce.com/content/learn/projects/quick-start-lightning-web-components/) Trailhead project. The steps include:

    - Sign up for DEV org and enable Dev Hub
    - Install the Salesforce CLI
    - Install Visual Studio Code
    - Install the Visual Studio Code Salesforce extensions, including the Lightning Web Components extension

1. If you haven't already done so, authenticate with your DEV hub org and provide it with an alias, example (spring19hub):

    ```
    sfdx force:auth:web:login -d -a spring19hub
    ```

1. Clone the sfdx-notification-app repository:

    ```
    git clone https://github.com/iandrosov/sfdx-notification-app
    
    cd sfdx-notification-app
    ```

1. Create a scratch org and provide it with an alias (**notification-app** in the command below):

    ```
    sfdx force:org:create -s -f config/project-scratch-def.json -a notification-app
    ```

1. Push the app to your scratch org:

    ```
    sfdx force:source:push
    ```

1. Open the scratch org:

    ```
    sfdx force:org:open
    ```

1. In App Launcher, select the **Sales** app and edit page add new notification component to Utility Bar.

## Installing Notification App using an Unlocked Package

TBD
