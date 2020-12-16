function FindProxyForURL(url, host) {
    if (
        isPlainHostName(host)
        || dnsDomainIs(host, ".duckdns.org")
        || dnsDomainIs(host, ".tsinghua.edu.cn")
    ) {
        return "DIRECT";
    } else {
        return "PROXY bryango.duckdns.org:8123; DIRECT";
    }
}
