FROM debian

ADD install.sh install.sh
RUN chmod +x install.sh && sh ./install.sh && rm install.sh

VOLUME ["/var/lib/varnish", "/etc/varnish"]
EXPOSE 80

ENV VARNISH_START /usr/sbin/varnishd -j unix,user=varnish -F -f /etc/varnish/default.vcl -a 0.0.0.0:80 -s malloc,1g -p http_resp_hdr_len=65536 -p http_resp_size=98304 -p workspace_backend=98304
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/start.sh"]