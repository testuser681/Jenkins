MongoDB installer (work in progress...)
=========

A role installing MongoDB using the package manager.

Requirements
------------

Docker installed on the host.

Role Variables
--------------

- dbPath
- engine
- inMemorySizeGB

Example Playbook
----------------

    hosts: containers
    gather_facts: true
    become: true
    become_user: root
    become_method: sudo
    roles:
        - mongo

License
-------

BSD

Author Information
------------------

PD
