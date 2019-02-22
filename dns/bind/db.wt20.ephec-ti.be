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
        IN      NS      ns2.wt20.ephec-ti.be.

; name servers - A records
ns2     IN      A       79.137.38.238

; services web

serverWeb       IN      A       151.80.119.124
intranet        IN      CNAME   serverWeb

