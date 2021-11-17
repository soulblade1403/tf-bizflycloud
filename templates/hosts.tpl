[${group-hosts}]
%{ for ipv4 in web-ip ~}
${ipv4}
%{ endfor ~}

[${group-hosts}:vars]
ansible_connection=ssh
host_key_checking=False
ansible_ssh_private_key_file=~${key-path}
ansible_python_interpreter=/usr/bin/python3
