Install deps:
  pkg.installed:
    - pkgs:
        - python-dev
        - python-cffi
        - libxslt1-dev
        - libssl-dev
        - libffi-dev
        - python-pip

Install pip deps:
  pip.installed:
    - pkgs:
        - cffi
        - cryptography
        - jxmlease
    - upgrade: true

Install NAPALM:
  pip.installed:
    - name: napalm
