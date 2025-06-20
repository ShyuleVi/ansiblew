- hosts: webservers
  tasks:
    - name: install git
      ansible.builtin.apt:
        name: git
        state: present
        update_cache: yes
      become: yes
      tags: git

    - name: update cache
      ansible.builtin.apt:
        update_cache: yes
      become: yes
      tags: cache

    - name: install make
      ansible.builtin.apt:
        name: make
        state: present
        update_cache: yes
      become: yes
      tags: make

    - name: install nodejs
      ansible.builtin.apt:
        name: nodejs
        state: present
        update_cache: yes
      become: yes
      tags: nodejs

    - name: install npm
      ansible.builtin.apt:
        name: npm
        state: present
        update_cache: yes
      become: yes
      tags: nodejs

    - name: create user
      ansible.builtin.user:
        name: arya
        shell: /bin/bash
        state: present
      become: yes
      tags: [user, createarya]

    - name: create user
      ansible.builtin.user:
        name: sansa
        shell: /bin/bash
        state: present
      become: yes
      tags: [user, createsansa]

    - name: create user
      ansible.builtin.user:
        name: tirion
        shell: /bin/bash
        state: present
      become: yes
      tags: [user, createtirion]

