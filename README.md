# Solos

## Deploy on Cloud 9 - AWS

## First, setup the environment on Cloud 9 (Ubuntu Image)

Setup Cloud 9 Instance:

### 1. Update RVM to the latest stable release

```
rvm get head
```

```
rvm reload
```

```
rvm get stable
```

### 2. Install Ruby 3.0.0

```
rvm install ruby-3.0.0
```

### 3. Make Ruby 3.0.0 the default ruby version

```
rvm use 3.0.0 --default
```

### 4. Install Rails 6.1.3

```
gem install rails -v 6.1.3
```

### 5. Install postgresql and various libraries

```
sudo apt install postgresql libpq-dev redis-server redis-tools yarn
```

Use this command in the Cloud 9 terminal to start the postgresql server

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install postgresql libpq-dev redis-server redis-tools yarn
```

Check the postgresql version

```
pg_config --version
```

### 6. Setup Github on Cloud 9

```
sudo apt-get install xclip
```

Use your email and press Enter.

```
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Start SSH Agent

```
eval "$(ssh-agent -s)"
```

Add Key to SSH Agent

```
ssh-add ~/.ssh/id_ed25519
```

Copy the key to your clipboard from the terminal and paste it in the ssh keys in your github profile.

```
cat ~/.ssh/id_ed25519.pub
```


### 7. Setup postgresql on cloud 9 

```
sudo su postgres
creatuser --interactive
```

Enter the name of the user: ubuntu


### 8. Install Webpacker

```
rails webpacker:install
```

### 9. Start rails server

```
rails s
```
