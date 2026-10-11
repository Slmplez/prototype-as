/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.ExportPackageDescriptionImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.ExportPackageDescription;
import org.eclipse.osgi.service.resolver.ImportPackageSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ImportPackageSpecificationImpl
extends VersionConstraintImpl
implements ImportPackageSpecification {
    private String resolution = "static";
    private String symbolicName;
    private VersionRange bundleVersionRange;
    private Map<String, Object> attributes;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Map<String, Object> getDirectives() {
        Object object = this.monitor;
        synchronized (object) {
            HashMap<String, Object> result = new HashMap<String, Object>(5);
            if (this.resolution != null) {
                result.put("resolution", this.resolution);
            }
            return result;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Object getDirective(String key) {
        Object object = this.monitor;
        synchronized (object) {
            if (key.equals("resolution")) {
                return this.resolution;
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
            if (key.equals("resolution")) {
                this.resolution = (String)value;
                return this.resolution;
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
            this.resolution = (String)directives.get("resolution");
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getBundleSymbolicName() {
        Object object = this.monitor;
        synchronized (object) {
            if ("system.bundle".equals(this.symbolicName)) {
                StateImpl state = (StateImpl)this.getBundle().getContainingState();
                String string = state == null ? Constants.getInternalSymbolicName() : state.getSystemBundle();
                return string;
            }
            return this.symbolicName;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public VersionRange getBundleVersionRange() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.bundleVersionRange == null) {
                return VersionRange.emptyRange;
            }
            return this.bundleVersionRange;
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
    public boolean isSatisfiedBy(BaseDescription supplier) {
        String[] mandatory;
        String name;
        String exporterSymbolicName;
        if (!(supplier instanceof ExportPackageDescription)) {
            return false;
        }
        ExportPackageDescriptionImpl pkgDes = (ExportPackageDescriptionImpl)supplier;
        String[] friends = (String[])pkgDes.getDirective("x-friends");
        Boolean internal = (Boolean)pkgDes.getDirective("x-internal");
        if (internal.booleanValue() || friends != null) {
            boolean strict;
            StateImpl state = (StateImpl)this.getBundle().getContainingState();
            boolean bl = strict = state == null ? false : state.inStrictMode();
            if (strict) {
                if (internal.booleanValue()) {
                    return false;
                }
                boolean found = false;
                if (friends != null && this.getBundle().getSymbolicName() != null) {
                    int i = 0;
                    while (i < friends.length) {
                        if (this.getBundle().getSymbolicName().equals(friends[i])) {
                            found = true;
                        }
                        ++i;
                    }
                }
                if (!found) {
                    return false;
                }
            }
        }
        if ((exporterSymbolicName = this.getBundleSymbolicName()) != null) {
            BundleDescription exporter = pkgDes.getExporter();
            if (!exporterSymbolicName.equals(exporter.getSymbolicName())) {
                return false;
            }
            if (this.getBundleVersionRange() != null && !this.getBundleVersionRange().isIncluded(exporter.getVersion())) {
                return false;
            }
        }
        if (!("*".equals(name = this.getName()) || name.endsWith(".*") && pkgDes.getName().startsWith(name.substring(0, name.length() - 1)) || pkgDes.getName().equals(name))) {
            return false;
        }
        if (this.getVersionRange() != null && !this.getVersionRange().isIncluded(pkgDes.getVersion())) {
            return false;
        }
        Map<String, Object> importAttrs = this.getAttributes();
        if (importAttrs != null) {
            Map<String, Object> exportAttrs = pkgDes.getAttributes();
            if (exportAttrs == null) {
                return false;
            }
            for (String importKey : importAttrs.keySet()) {
                Object importValue = importAttrs.get(importKey);
                Object exportValue = exportAttrs.get(importKey);
                if (exportValue != null && importValue.equals(exportValue)) continue;
                return false;
            }
        }
        if ((mandatory = (String[])pkgDes.getDirective("mandatory")) != null) {
            int i = 0;
            while (i < mandatory.length) {
                if ("bundle-symbolic-name".equals(mandatory[i])) {
                    if (exporterSymbolicName == null) {
                        return false;
                    }
                } else if ("bundle-version".equals(mandatory[i])) {
                    if (this.bundleVersionRange == null) {
                        return false;
                    }
                } else if ("specification-version".equals(mandatory[i]) || "version".equals(mandatory[i])) {
                    if (this.getVersionRange() == null) {
                        return false;
                    }
                } else {
                    if (importAttrs == null) {
                        return false;
                    }
                    if (importAttrs.get(mandatory[i]) == null) {
                        return false;
                    }
                }
                ++i;
            }
        }
        if (((BundleDescriptionImpl)this.getBundle()).getEquinoxEE() < 0) {
            return true;
        }
        int eeIndex = (Integer)pkgDes.getDirective("x-equinox-ee");
        return eeIndex < 0 || eeIndex == ((BundleDescriptionImpl)this.getBundle()).getEquinoxEE();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setBundleSymbolicName(String symbolicName) {
        Object object = this.monitor;
        synchronized (object) {
            this.symbolicName = symbolicName;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setBundleVersionRange(VersionRange bundleVersionRange) {
        Object object = this.monitor;
        synchronized (object) {
            this.bundleVersionRange = bundleVersionRange;
        }
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

    public String toString() {
        return new StringBuffer("Import-Package: ").append(this.getName()).append("; version=\"").append(this.getVersionRange()).append("\"").toString();
    }

    @Override
    protected Map<String, String> getInternalDirectives() {
        Map<String, Object> raw = this.getDirectives();
        raw.put("filter", this.createFilterDirective());
        return raw;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private String createFilterDirective() {
        StringBuffer filter = new StringBuffer();
        filter.append("(&");
        Object object = this.monitor;
        synchronized (object) {
            ImportPackageSpecificationImpl.addFilterAttribute(filter, "osgi.wiring.package", this.getName(), false);
            VersionRange range = this.getVersionRange();
            if (range != null && range != VersionRange.emptyRange) {
                ImportPackageSpecificationImpl.addFilterAttribute(filter, "version", range);
            }
            if (this.symbolicName != null) {
                ImportPackageSpecificationImpl.addFilterAttribute(filter, "bundle-symbolic-name", this.symbolicName);
            }
            if (this.bundleVersionRange != null) {
                ImportPackageSpecificationImpl.addFilterAttribute(filter, "bundle-version", this.bundleVersionRange);
            }
            if (this.attributes != null) {
                ImportPackageSpecificationImpl.addFilterAttributes(filter, this.attributes);
            }
        }
        filter.append(')');
        return filter.toString();
    }

    @Override
    protected Map<String, Object> getInteralAttributes() {
        return Collections.EMPTY_MAP;
    }

    @Override
    protected String getInternalNameSpace() {
        return "osgi.wiring.package";
    }
}

