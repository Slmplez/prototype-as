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
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.HostSpecification;
import org.eclipse.osgi.service.resolver.VersionRange;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class HostSpecificationImpl
extends VersionConstraintImpl
implements HostSpecification {
    private BundleDescription[] hosts;
    private boolean multihost = false;
    private Map<String, Object> attributes;

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

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription[] getHosts() {
        Object object = this.monitor;
        synchronized (object) {
            return this.hosts == null ? BundleDescriptionImpl.EMPTY_BUNDLEDESCS : this.hosts;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isResolved() {
        Object object = this.monitor;
        synchronized (object) {
            return this.hosts != null && this.hosts.length > 0;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setHosts(BundleDescription[] hosts) {
        Object object = this.monitor;
        synchronized (object) {
            this.hosts = hosts;
        }
    }

    public String toString() {
        return new StringBuffer("Fragment-Host: ").append(this.getName()).append("; bundle-version=\"").append(this.getVersionRange()).append("\"").toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BaseDescription getSupplier() {
        Object object = this.monitor;
        synchronized (object) {
            block4: {
                if (this.hosts != null && this.hosts.length != 0) break block4;
                return null;
            }
            return this.hosts[0];
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isMultiHost() {
        Object object = this.monitor;
        synchronized (object) {
            return this.multihost;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setIsMultiHost(boolean multihost) {
        Object object = this.monitor;
        synchronized (object) {
            this.multihost = multihost;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    protected Map<String, String> getInternalDirectives() {
        HashMap<String, String> result = new HashMap<String, String>(2);
        Object object = this.monitor;
        synchronized (object) {
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
            HostSpecificationImpl.addFilterAttribute(filter, "osgi.wiring.host", this.getName());
            VersionRange range = this.getVersionRange();
            if (range != null && range != VersionRange.emptyRange) {
                HostSpecificationImpl.addFilterAttribute(filter, "bundle-version", range);
            }
            if (this.attributes != null) {
                HostSpecificationImpl.addFilterAttributes(filter, this.attributes);
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
        return "osgi.wiring.host";
    }
}

