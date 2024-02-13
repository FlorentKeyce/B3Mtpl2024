# B3Mtpl2024

Avant la première exécution, déployer la clé publique :
ansible -m authorized_key -a "user=openit state=present key={{ lookup('file', '~/.ssh/id_ed25519.pub') }}" --ask-pass all

Les playbooks s'éxécutent ainsi :

ansible-playbook -k playbook-init.yml

ansible-playbook playbook-web.yml

ansible-playbook playbook-php.yml

ansible-playbook playbook-db.yml

TODO mardi 13/02 :

- debugger démarrage de php fpm (non local address binding) : résolu par configuration statique du réseau (temps de démarrage des cartes réseau acceleré)

- vérifier les permissions /var/www/html/wordpress

- nfs qui ne monte pas tout seul : résolu en le montant appr-s le démarrage de php-fpm

- handlers

- roles

