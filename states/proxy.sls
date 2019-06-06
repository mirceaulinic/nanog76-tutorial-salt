Update Pillar top.sls:
  file.managed:
    - name: /home/{{ pillar.username }}/nanog76-tutorial/pillar/top.sls
    - template: jinja
    - source: salt://templates/top.sls.jinja
    - user: {{ pillar.username }}

{%- for driver in pillar.drivers %}
Update {{ driver }} connection details:
  file.managed:
    - name: /home/{{ pillar.username }}/nanog76-tutorial/pillar/{{ driver }}_pillar.sls
    - template: jinja
    - source: salt://templates/proxy_pillar.sls.jinja
    - context:
        napalm_driver: {{ driver }}
    - user: {{ pillar.username }}

{%- set proxyid = driver ~ pillar.srv_id %}

Start {{ proxyid }} Proxy service:
  cmd.run:
    - name: salt-proxy -l debug --proxyid {{ proxyid }} -d
{%- endfor %}
