
NOVA_CONF=/etc/nova/nova.conf
CINDER_CONF=/etc/cinder/cinder.conf
GLANCE_API_CONF=/etc/glance/glance-api.conf
GLANCE_REGISTRY_CONF=/etc/glance/glance-registry.conf
EC2_CONF=/etc/ec2api/ec2api.conf
mv "${NOVA_CONF}.bak" $NOVA_CONF
mv "${CINDER_CONF}.bak" $CINDER_CONF
mv "${GLANCE_API_CONF}.bak" $GLANCE_API_CONF
mv "${GLANCE_REGISTRY_CONF}.bak" $GLANCE_REGISTRY_CONF
mv "${EC2_CONF}.bak" $EC2_CONF

sed -i 's/paste.filter_factory\ =\ keystoneclient\.middleware\.auth_token:filter_factory/paste.filter_factory = keystonemiddleware.auth_token:filter_factory/g' /etc/nova/api-paste.ini
sed -i 's/paste.filter_factory\ =\ keystoneclient\.middleware\.auth_token:filter_factory/paste.filter_factory = keystonemiddleware.auth_token:filter_factory/g' /etc/cinder/api-paste.ini
sed -i 's/paste.filter_factory\ =\ keystoneclient\.middleware\.auth_token:filter_factory/paste.filter_factory = keystonemiddleware.auth_token:filter_factory/g' /etc/glance/glance-api-paste.ini
sed -i 's/paste.filter_factory\ =\ keystoneclient\.middleware\.auth_token:filter_factory/paste.filter_factory = keystonemiddleware.auth_token:filter_factory/g' /etc/glance/glance-registry-paste.ini

source screen-restart.sh

