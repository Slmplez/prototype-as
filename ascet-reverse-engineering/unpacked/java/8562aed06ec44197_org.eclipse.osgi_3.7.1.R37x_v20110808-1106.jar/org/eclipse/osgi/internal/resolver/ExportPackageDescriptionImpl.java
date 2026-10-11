/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.osgi.framework.Version;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ExportPackageDescriptionImpl
extends BaseDescriptionImpl
implements ExportPackageDescription {
    public static final String EQUINOX_EE = "x-equinox-ee";
    private static final Integer EQUINOX_EE_DEFAULT = new Integer(-1);
    private String[] uses;
    private Map<String, Object> attributes;
    private volatile BundleDescription exporter;
    private String exclude;
    private String include;
    private String[] friends;
    private String[] mandatory;
    private Boolean internal = Boolean.FALSE;
    private int equinox_ee = -1;
    private ExportPackageDescription fragmentDeclaration = null;

    public ExportPackageDescriptionImpl() {
    }

    public ExportPackageDescriptionImpl(BundleDescription host, ExportPackageDescription fragmentDeclaration) {
        this.setName(fragmentDeclaration.getName());
        this.setVersion(fragmentDeclaration.getVersion());
        this.setDirectives(fragmentDeclaration.getDirectives());
        this.setAttributes(fragmentDeclaration.getAttributes());
        this.setExporter(host);
        this.fragmentDeclaration = fragmentDeclaration;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getDirectives() {
        Object object = this.monitor;
        synchronized (object) {
            HashMap<String, Object> result = new HashMap<String, Object>(7);
            if (this.uses != null) {
                result.put("uses", this.uses);
            }
            if (this.exclude != null) {
                result.put("exclude", this.exclude);
            }
            if (this.include != null) {
                result.put("include", this.include);
            }
            if (this.mandatory != null) {
                result.put("mandatory", this.mandatory);
            }
            if (this.friends != null) {
                result.put("x-friends", this.friends);
            }
            result.put("x-internal", this.internal);
            result.put(EQUINOX_EE, this.equinox_ee == -1 ? EQUINOX_EE_DEFAULT : new Integer(this.equinox_ee));
            return result;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, String> getDeclaredDirectives() {
        HashMap<String, String> result = new HashMap<String, String>(6);
        Object object = this.monitor;
        synchronized (object) {
            if (this.uses != null) {
                result.put("uses", ExportPackageDescriptionImpl.toString(this.uses));
            }
            if (this.exclude != null) {
                result.put("exclude", this.exclude);
            }
            if (this.include != null) {
                result.put("include", this.include);
            }
            if (this.mandatory != null) {
                result.put("mandatory", ExportPackageDescriptionImpl.toString(this.mandatory));
            }
            if (this.friends != null) {
                result.put("x-friends", ExportPackageDescriptionImpl.toString(this.friends));
            }
            if (this.internal != null) {
                result.put("x-internal", this.internal.toString());
            }
            return Collections.unmodifiableMap(result);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getDeclaredAttributes() {
        HashMap<String, Object> result = new HashMap<String, Object>(2);
        Object object = this.monitor;
        synchronized (object) {
            String symbolicName;
            if (this.attributes != null) {
                result.putAll(this.attributes);
            }
            result.put("osgi.wiring.package", this.getName());
            result.put("version", this.getVersion());
            Version bundleVersion = this.getSupplier().getVersion();
            if (bundleVersion != null) {
                result.put("bundle-version", bundleVersion);
            }
            if ((symbolicName = this.getSupplier().getSymbolicName()) != null) {
                result.put("bundle-symbolic-name", symbolicName);
            }
            return Collections.unmodifiableMap(result);
        }
    }

    static String toString(String[] list) {
        StringBuffer buffer = new StringBuffer();
        String[] stringArray = list;
        int n = list.length;
        int n2 = 0;
        while (n2 < n) {
            String string = stringArray[n2];
            buffer.append(string).append(',');
            ++n2;
        }
        if (buffer.length() > 0) {
            buffer.setLength(buffer.length() - 1);
        }
        return buffer.toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Object getDirective(String key) {
        Object object = this.monitor;
        synchronized (object) {
            if (key.equals("uses")) {
                return this.uses;
            }
            if (key.equals("exclude")) {
                return this.exclude;
            }
            if (key.equals("include")) {
                return this.include;
            }
            if (key.equals("mandatory")) {
                return this.mandatory;
            }
            if (key.equals("x-friends")) {
                return this.friends;
            }
            if (key.equals("x-internal")) {
                return this.internal;
            }
            if (key.equals(EQUINOX_EE)) {
                return this.equinox_ee == -1 ? EQUINOX_EE_DEFAULT : new Integer(this.equinox_ee);
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object setDirective(String key, Object value) {
        Object object = this.monitor;
        synchronized (object) {
            if (key.equals("uses")) {
                this.uses = (String[])value;
                return this.uses;
            }
            if (key.equals("exclude")) {
                this.exclude = (String)value;
                return this.exclude;
            }
            if (key.equals("include")) {
                this.include = (String)value;
                return this.include;
            }
            if (key.equals("mandatory")) {
                this.mandatory = (String[])value;
                return this.mandatory;
            }
            if (key.equals("x-friends")) {
                this.friends = (String[])value;
                return this.friends;
            }
            if (key.equals("x-internal")) {
                this.internal = (Boolean)value;
                return this.internal;
            }
            if (key.equals(EQUINOX_EE)) {
                this.equinox_ee = (Integer)value;
                return value;
            }
            return null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void setDirectives(Map<String, ?> directives) {
        Object object = this.monitor;
        synchronized (object) {
            if (directives == null) {
                return;
            }
            this.uses = (String[])directives.get("uses");
            this.exclude = (String)directives.get("exclude");
            this.include = (String)directives.get("include");
            this.mandatory = (String[])directives.get("mandatory");
            this.friends = (String[])directives.get("x-friends");
            this.internal = (Boolean)directives.get("x-internal");
            this.equinox_ee = (Integer)directives.get(EQUINOX_EE);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getAttributes() {
        Object object = this.monitor;
        synchronized (object) {
            return this.attributes;
        }
    }

    @Override
    public BundleDescription getSupplier() {
        return this.getExporter();
    }

    @Override
    public BundleDescription getExporter() {
        return this.exporter;
    }

    @Override
    public boolean isRoot() {
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setAttributes(Map<String, ?> attributes) {
        Object object = this.monitor;
        synchronized (object) {
            this.attributes = attributes;
        }
    }

    protected void setExporter(BundleDescription exporter) {
        this.exporter = exporter;
    }

    @Override
    public BaseDescription getFragmentDeclaration() {
        return this.fragmentDeclaration;
    }

    void setFragmentDeclaration(ExportPackageDescription fragmentDeclaration) {
        this.fragmentDeclaration = fragmentDeclaration;
    }

    public String toString() {
        return new StringBuffer("Export-Package: ").append(this.getName()).append("; version=\"").append(this.getVersion()).append("\"").toString();
    }

    @Override
    String getInternalNameSpace() {
        return "osgi.wiring.package";
    }
}

