/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xml.resolver.helpers;

import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Hashtable;
import javax.xml.transform.Source;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.sax.SAXSource;
import org.apache.xml.resolver.helpers.FileURL;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

public class BootstrapResolver
implements EntityResolver,
URIResolver {
    public static final String xmlCatalogXSD = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.xsd";
    public static final String xmlCatalogRNG = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.rng";
    public static final String xmlCatalogPubId = "-//OASIS//DTD XML Catalogs V1.0//EN";
    public static final String xmlCatalogSysId = "http://www.oasis-open.org/committees/entity/release/1.0/catalog.dtd";
    public static final String xCatalogPubId = "-//DTD XCatalog//EN";
    private Hashtable publicMap = new Hashtable();
    private Hashtable systemMap = new Hashtable();
    private Hashtable uriMap = new Hashtable();

    public BootstrapResolver() {
        URL url = this.getClass().getResource("/org/apache/xml/resolver/etc/catalog.dtd");
        if (url != null) {
            this.publicMap.put(xmlCatalogPubId, url.toString());
            this.systemMap.put(xmlCatalogSysId, url.toString());
        }
        if ((url = this.getClass().getResource("/org/apache/xml/resolver/etc/catalog.rng")) != null) {
            this.uriMap.put(xmlCatalogRNG, url.toString());
        }
        if ((url = this.getClass().getResource("/org/apache/xml/resolver/etc/catalog.xsd")) != null) {
            this.uriMap.put(xmlCatalogXSD, url.toString());
        }
        if ((url = this.getClass().getResource("/org/apache/xml/resolver/etc/xcatalog.dtd")) != null) {
            this.publicMap.put(xCatalogPubId, url.toString());
        }
    }

    public InputSource resolveEntity(String publicId, String systemId) {
        String resolved = null;
        if (systemId != null && this.systemMap.containsKey(systemId)) {
            resolved = (String)this.systemMap.get(systemId);
        } else if (publicId != null && this.publicMap.containsKey(publicId)) {
            resolved = (String)this.publicMap.get(publicId);
        }
        if (resolved != null) {
            try {
                InputSource iSource = new InputSource(resolved);
                iSource.setPublicId(publicId);
                URL url = new URL(resolved);
                InputStream iStream = url.openStream();
                iSource.setByteStream(iStream);
                return iSource;
            }
            catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    public Source resolve(String href, String base) throws TransformerException {
        String uri = href;
        String fragment = null;
        int hashPos = href.indexOf("#");
        if (hashPos >= 0) {
            uri = href.substring(0, hashPos);
            fragment = href.substring(hashPos + 1);
        }
        String result = null;
        if (href != null && this.uriMap.containsKey(href)) {
            result = (String)this.uriMap.get(href);
        }
        if (result == null) {
            try {
                URL url = null;
                if (base == null) {
                    url = new URL(uri);
                    result = url.toString();
                } else {
                    URL baseURL = new URL(base);
                    url = href.length() == 0 ? baseURL : new URL(baseURL, uri);
                    result = url.toString();
                }
            }
            catch (MalformedURLException mue) {
                String absBase = this.makeAbsolute(base);
                if (!absBase.equals(base)) {
                    return this.resolve(href, absBase);
                }
                throw new TransformerException("Malformed URL " + href + "(base " + base + ")", mue);
            }
        }
        SAXSource source = new SAXSource();
        source.setInputSource(new InputSource(result));
        return source;
    }

    private String makeAbsolute(String uri) {
        if (uri == null) {
            uri = "";
        }
        try {
            URL url = new URL(uri);
            return url.toString();
        }
        catch (MalformedURLException mue) {
            try {
                URL fileURL = FileURL.makeURL(uri);
                return fileURL.toString();
            }
            catch (MalformedURLException mue2) {
                return uri;
            }
        }
    }
}

