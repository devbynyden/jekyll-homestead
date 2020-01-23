# Update instructions

1. Download latest version of Homestead

   ```bash
   cd ~/homestead
   vagrant box update
   ```

2. Backup playground data

3. Update Homestead box

   ```bash
   vagrant destroy
   git pull origin master
   ```

4. Copy ruby.sh & jekyll.sh into homestead/scripts/features folder

5. Configure Homestead

   ###### Homestead.yaml

   ```yaml
   ip: "192.168.15.15"
   
   folders:
       - map: ~\homestead\playground
         to: /home/vagrant/playground
   
   sites:
       - map: homestead.bn
         to: /home/vagrant/playground/public_html
       - map: homestead.test
         to: /home/vagrant/playground/test_html
         
   features:
       - mariadb: false
       - ohmyzsh: false
       - webdriver: false
       - python: true
       - ruby: true
       - jekyll: true
       
   ports:
       - send: 4000
         to: 4000
       - send: 8080
         to: 8080
   ```

6. Rebuild machine, list versions and purge old versions

   ```bash
   vagrant up
   vagrant box list
   vagrant box remove laravel/homestead --box-version=0.4.0
   ```

   

## Troubleshooting

#### /HostsUpdater.rb:98:in `initialize': Permission denied @ rb_sysopen

Check if all entries are added/updated inside the C:\windows\system32\drivers\etc\hosts file