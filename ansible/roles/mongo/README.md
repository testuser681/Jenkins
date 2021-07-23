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

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

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
