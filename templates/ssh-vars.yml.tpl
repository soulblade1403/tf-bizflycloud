---
user: ${user}
copy_pub_key: "{{ lookup('file', lookup('env','HOME') + '${pub-key-path}') }}"