# README

## Installation

### Install VirtualBox, Vagrant and Chef

The easiest way to get this project running is by using Vagrant. Vagrant starts and controls virtual machines for you using VirtualBox. This project has been setup to create two virtual machines in a 2 tier structure. One for the app and another for the database. It will install all the necessary sofware on both. To use this setup you need to install VirtualBox, Vagrant and Chef for your machine.

[Vagrant](https://www.vagrantup.com/downloads.html)

[VirtualBox](https://www.virtualbox.org/wiki/Downloads)

Chef is most easily installed from the command line:

#### Linux and Mac
```bash
curl -L https://www.chef.io/chef/install.sh | sudo bash
```

#### Windows
Please refer to instructions for the windows platform

#### Starting the machines
Clone the repository to your directory:

```bash
git clone git@github.com:spartaglobal/SpartaInventory.git
cd SpartaInventory
```
Now you can start both machines at the same time using vagrant:

```bash
# This command will start both machines
vagrant up

# You can also start the machines individually if necessary
vagrant up app
vagrant up db
```

Starting the machines may take a few minutes the first time as it downloads required files.

#### Accessing the machines

Vagrant will copy the app files on the virtual machine for you. You can access the machine like this:

```bash
# Log in to the app machine
vagrant ssh app

# ( Optional ) log in to the db machine for working directly with the db
vagrant ssh db
```

Assuming you have logged in to the app machine you will find the app files in the ``/home/ubuntu/app`` directory.

You can now run the following commands to create and seed the database and then to run the app as normal:

```bash
cd app
bundle install
rake db:create
rake db:migrate
rails s
```

You can view the app in your browser at http://development.local:3000

> NOTE : You will likely need the http at the start to prevent the browser from thinking it's a google search

#### Synced files

Vagrant will automatically sync the app files between your machine ( the host ) and the app virtual machine ( the guest ). This means you can continue to work on the files on your machine ( the host ) and changes will be automatically updated to the virtual machine. Be careful as this syncing works in both directions!

#### Shutting down

The virtual machines use your machines resources so it is best to shut them down when you are finished.

You can shut them both down or individually as follows:

```bash
vagrant destroy

# individually
vagrant destroy app
vagrant destroy db
```

When you destroy a virtual machine any changes you've made to the system such as installing ruby gems, or adding data to the database will be lost.

If you wish to save those changes you can use:

```bash
vagrant suspend
```

This will dump the contents of the virtual machine memory to a file which can be restored later using ```vagrant up```. This will use considerable hard disk space so only use this option if entirely necessary.


## Using the app

The app requires that you log in. You must have a Sparta Identity account to log in to the system.

Ask an administrator to create a test account for you to use on the IMC

#Testing The App


## Installation Of The App And Database

git clone the SpartaInventory repository into a new folder.

```Git clone git@github.com:spartaglobal/SpartaInventory.git```

Inside this new folder pull down the sdet11 branch

```git pull origin sdet11```

Once this is complete, you need to install the gems with

``` bundle install ```


Run the commands in this order


```rake db:create```

```rake db:migrate```

```rake db:seed```

``` bin/rails db:migrate RAILS_ENV=test ```

This will set up a developement database which the tests will run off and also test the database to a test enviroment.

##Tools Used For Testing

####Cucumber
Tool for running automated GUI tests which can be written in a plain language which makes them easy for even non-technical people to understand what the tests are doing.

#### Capybara
Is a wrapper for Selenium, which gives you access to methods which are easier to read and understand.


###How To Make The Tests Run
In the terminal ensure you are in the app file and the app server is running in a seperate terminal.

In the second terminal run this command

``` bundle exec cucumber ```

This will cause a browser (Chrome) to open and begin running through the user journeys as outlined in the tests.

Aternatively you can run a specific feature using cucumbers tag feature.
For example if you run

``` bundle exec cucumber -t @edit_item ```

Will run the Edit Item feature and its associated scenarios.

Once the tests are completed, you can use cucumbers report feature to get a detailed report on the test that passed and failed which can be generated in a number of formats	. These reports are generated with the command below.

``` cucumber <featurename>.feature --format html --out report.html --format pretty ```

## Useful information

Vagrant sets up two fake urls that point to the various virtual machines.

The app virtual machine can be accessed from the host at development.local
The db virtual machine can be accessed at database.local
