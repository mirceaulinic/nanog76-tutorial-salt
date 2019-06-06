Configure {{ pillar.username }} user:
  user.present:
    - name: {{ pillar.username }}
    - password: {{ pillar.password }}
    - fullname: Salt
    - roomnumber: Renaissance Ballroom
    - other: NANOG76 tutorial

Allow pass auth:
  file.managed:
    - name: /etc/ssh/sshd_config
    - template: jinja
    - source: salt://templates/sshd_config.jinja

Restart SSHD:
  cmd.run:
    - name: service sshd restart

sudo:
  pkg.installed:
    - name: sudo

Add {{ pillar.username }} to sudoers:
  file.managed:
    - name: /etc/sudoers
    - user: root
    - group: root
    - mode: 440
    - template: jinja
    - source: salt://templates/sudoers.jinja
    - check_cmd: /usr/sbin/visudo -c -f
    - require:
      - pkg: sudo

Clone NANOG76 repo:
  git.cloned:
    - name: https://github.com/mirceaulinic/nanog76-tutorial.git
    - target: /home/{{ pillar.username }}/nanog76-tutorial

Set ownership:
  file.directory:
    - name: /home/{{ pillar.username }}/nanog76-tutorial
    - user: {{ pillar.username }}
    - dir_mode: 755

Create /srv/salt symlink:
  file.symlink:
    - name: /srv/salt
    - target: /home/{{ pillar.username }}/nanog76-tutorial
    - makedirs: true
    - force: true

Symlink Master config:
  file.symlink:
    - name: /etc/salt/master
    - target: /home/{{ pillar.username }}/nanog76-tutorial/master
    - force: true

Restart Master service:
  cmd.run:
    - name: service salt-master restart
