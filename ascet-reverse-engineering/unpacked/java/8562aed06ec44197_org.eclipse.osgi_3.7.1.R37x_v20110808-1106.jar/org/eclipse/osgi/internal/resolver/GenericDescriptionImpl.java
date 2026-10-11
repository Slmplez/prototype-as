/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GenericDescriptionImpl
extends BaseDescriptionImpl
implements GenericDescription {
    private Dictionary<String, Object> attributes;
    private volatile BundleDescription supplier;
    private volatile String type = "generic";
    private Map<String, String> directives;
    private GenericDescription fragmentDeclaration;

    public GenericDescriptionImpl() {
    }

    public GenericDescriptionImpl(BundleDescription host, GenericDescription fragmentDeclaration) {
        this.setType(fragmentDeclaration.getType());
        Dictionary<String, Object> origAttrs = fragmentDeclaration.getAttributes();
        if (origAttrs != null) {
            Hashtable<String, Object> copyAttrs = new Hashtable<String, Object>();
            Enumeration<String> keys = origAttrs.keys();
            while (keys.hasMoreElements()) {
                String key = keys.nextElement();
                copyAttrs.put(key, origAttrs.get(key));
            }
            this.setAttributes(copyAttrs);
        }
        Map<String, String> origDirectives = fragmentDeclaration.getDeclaredDirectives();
        HashMap<String, String> copyDirectives = new HashMap<String, String>(origDirectives);
        this.setDirectives(copyDirectives);
        this.setSupplier(host);
        this.fragmentDeclaration = fragmentDeclaration;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Dictionary<String, Object> getAttributes() {
        Object object = this.monitor;
        synchronized (object) {
            return this.attributes;
        }
    }

    @Override
    public BundleDescription getSupplier() {
        return this.supplier;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setAttributes(Dictionary<String, Object> attributes) {
        Object object = this.monitor;
        synchronized (object) {
            this.attributes = attributes;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setDirectives(Map<String, String> directives) {
        Object object = this.monitor;
        synchronized (object) {
            this.directives = directives;
        }
    }

    void setSupplier(BundleDescription supplier) {
        this.supplier = supplier;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("Provide-Capability").append(": ").append(this.getType());
        Map<String, Object> attrs = this.getDeclaredAttributes();
        sb.append(GenericDescriptionImpl.toString(attrs, false));
        return sb.toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getName() {
        Object object = this.monitor;
        synchronized (object) {
            Object name = this.attributes != null ? this.attributes.get(this.getType()) : null;
            return name instanceof String ? (String)name : null;
        }
    }

    @Override
    public String getType() {
        return this.type;
    }

    void setType(String type) {
        this.type = type == null || type.equals("generic") ? "generic" : type;
    }

    @Override
    public Version getVersion() {
        Object version = this.attributes != null ? this.attributes.get("version") : null;
        return version instanceof Version ? (Version)version : super.getVersion();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, String> getDeclaredDirectives() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.directives == null) {
                return Collections.EMPTY_MAP;
            }
            return Collections.unmodifiableMap(this.directives);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getDeclaredAttributes() {
        Object object = this.monitor;
        synchronized (object) {
            HashMap result = new HashMap(5);
            if (this.attributes != null) {
                Enumeration<String> keys = this.attributes.keys();
                while (keys.hasMoreElements()) {
                    String key = keys.nextElement();
                    List value = this.attributes.get(key);
                    if (value instanceof List) {
                        value = Collections.unmodifiableList(value);
                    }
                    result.put(key, value);
                }
            }
            return Collections.unmodifiableMap(result);
        }
    }

    @Override
    String getInternalNameSpace() {
        return this.getType();
    }

    @Override
    public BaseDescription getFragmentDeclaration() {
        return this.fragmentDeclaration;
    }

    void setFragmentDeclaration(GenericDescription fragmentDeclaration) {
        this.fragmentDeclaration = fragmentDeclaration;
    }
}

