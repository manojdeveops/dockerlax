---
- name: Install Nginx web Server
  hosts: 192.168.136.143
  become: true
  tasks:

  - name: Insert Epel_release repo

    yum:
     name: epel-release
     state: present

  - name: install nginx web server
    yum:
      name: nginx
      state: present

  - name: copy index file to webserver

    template:
      src: /root/Desktop/nginx/index.html
      dest: /usr/share/nginx/html/index.html

  - name: Start service
    service:
     name: nginx
     state: started
---
