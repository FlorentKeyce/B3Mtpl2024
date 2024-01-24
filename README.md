# B3Mtpl2024

Avant la première exécution, déployer la clé publique :
ansible -m authorized_key -a "user=openit state=present key={{ lookup('file', '~/.ssh/id_ed25519.pub') }}" --ask-pass all

Le playbook s'exécute ainsi :
ansible-playbook playbook.yml