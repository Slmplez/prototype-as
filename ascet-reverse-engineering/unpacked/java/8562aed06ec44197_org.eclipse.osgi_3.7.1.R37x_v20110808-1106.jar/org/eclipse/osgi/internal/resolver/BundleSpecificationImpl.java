/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.internal.resolver.BundleDescriptionImpl;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BundleSpecificationImpl
extends VersionConstraintImpl
implements BundleSpecification {
    private boolean exported;
    private boolean optional;
    private Map<String, Object> attributes;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setExported(boolean exported) {
        Object object = this.monitor;
        synchronized (object) {
            this.exported = exported;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setOptional(boolean optional) {
        Object object = this.monitor;
        synchronized (object) {
            this.optional = optional;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isExported() {
        Object object = this.monitor;
        synchronized (object) {
            return this.exported;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isOptional() {
        Object object = this.monitor;
        synchronized (object) {
            return this.optional;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    Map<String, Object> getAttributes() {
        Object object = this.monitor;
        synchronized (object) {
            return this.attributes;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setAttributes(Map<String, ?> attributes) {
        Object object = this.monitor;
        synchronized (object) {
            this.attributes = attributes;
        }
    }

    @Override
    public boolean isSatisfiedBy(BaseDescription supplier) {
        String[] mandatory;
        if (!(supplier instanceof BundleDescriptionImpl)) {
            return false;
        }
        BundleDescriptionImpl candidate = (BundleDescriptionImpl)supplier;
        if (candidate.getHost() != null) {
            return false;
        }
        Map<String, Object> requiredAttrs = this.getAttributes();
        if (requiredAttrs != null) {
            Map<String, Object> prividerAttrs = candidate.getAttributes();
            if (prividerAttrs == null) {
                return false;
            }
            for (String key : requiredAttrs.keySet()) {
                Object requiredValue = requiredAttrs.get(key);
                Object prividedValue = prividerAttrs.get(key);
                if (prividedValue != null && requiredValue.equals(prividedValue)) continue;
                return false;
            }
        }
        if ((mandatory = (String[])candidate.getDirective("mandatory")) != null) {
            String[] stringArray = mandatory;
            int n = mandatory.length;
            int n2 = 0;
            while (n2 < n) {
                String key;
                key = stringArray[n2];
                if (!("bundle-version".equals(key) || requiredAttrs != null && requiredAttrs.get(key) != null)) {
                    return false;
                }
                ++n2;
            }
        }
        return this.getName() != null && this.getName().equals(candidate.getSymbolicName()) && (this.getVersionRange() == null || this.getVersionRange().isIncluded(candidate.getVersion()));
    }

    public String toString() {
        return new StringBuffer("Require-Bundle: ").append(this.getName()).append("; bundle-version=\"").append(this.getVersionRange()).append("\"").toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    protected Map<String, String> getInternalDirectives() {
        HashMap<String, String> result = new HashMap<String, String>(2);
        Object object = this.monitor;
        synchronized (object) {
            if (this.exported) {
                result.put("visibility", "reexport");
            }
            if (this.optional) {
                result.put("resolution", "optional");
            }
            result.put("filter", this.createFilterDirective());
            return result;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private String createFilterDirective() {
        StringBuffer filter = new StringBuffer();
        filter.append("(&");
        Object object = this.monitor;
        synchronized (object) {
            BundleSpecificationImpl.addFilterAttribute(filter, "osgi.wiring.bundle", this.getName());
            VersionRange range = this.getVersionRange();
            if (range != null && range != VersionRange.emptyRange) {
                BundleSpecificationImpl.addFilterAttribute(filter, "bundle-version", range);
            }
            if (this.attributes != null) {
                BundleSpecificationImpl.addFilterAttributes(filter, this.attributes);
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
        return "osgi.wiring.bundle";
    }
}

