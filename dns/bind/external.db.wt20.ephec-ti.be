$ORIGIN wt20.ephec-ti.be.
$TTL    604800
@       IN      SOA     ns1.wt20.ephec-ti.be admin.wt20.ephec-ti.be (
                              1         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
; name servers - NS records
        IN      NS      ns1.wt20.ephec-ti.be.
	IN	MX	10	 mail

; name servers - A records
ns1     IN      A       79.137.38.250

; services web

serverWeb       IN      A       151.80.119.124
www             IN      CNAME   serverWeb
b2b             IN      CNAME   serverWeb

;service mail
mail		IN	A	79.137.38.238
smtp		IN	CNAME	mail
pop3		IN	CNAME	mail
imap		IN	CNAME	mail
mail._domainkey IN      TXT     ( "v=DKIM1;"
	"k=rsa;"
	"p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDIXcqED3HHUr6zlusYiWiyp9tsRf4"
	"tygH7VtnhwCtGLzHlyIa3F/Nm8oTdUnCrj0m2BmstEtakKxbWh4ythtrHvWm3/m4OiDptObxo+yxFET5bQx"
	"PKlfQv7o/+Uo/gxH/J8URPGLZd9KepWD5MjN6JjXiEUiuha79AVKzpOUzjhwIDAQAB" ) 
; ----- DKIM key mail for wt20.ephec-ti.be

;service voip
_sip._udp	SRV 0 0 6201 sip 
_sip._tcp 	SRV 0 0 6201 sip
sip 		IN	A	79.137.38.250	
