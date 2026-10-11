/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.FilterImpl;
import org.eclipse.osgi.internal.resolver.VersionConstraintImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.GenericDescription;
import org.eclipse.osgi.service.resolver.GenericSpecification;
import org.osgi.framework.Filter;
import org.osgi.framework.InvalidSyntaxException;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class GenericSpecificationImpl
extends VersionConstraintImpl
implements GenericSpecification {
    private Filter matchingFilter;
    private String type = "generic";
    private int resolution = 0;
    private GenericDescription[] suppliers;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getMatchingFilter() {
        Object object = this.monitor;
        synchronized (object) {
            return this.matchingFilter == null ? null : this.matchingFilter.toString();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setMatchingFilter(String matchingFilter, boolean matchName) throws InvalidSyntaxException {
        Object object = this.monitor;
        synchronized (object) {
            String name = this.getName();
            if (matchName && name != null && !"*".equals(name)) {
                String nameFilter = new StringBuffer("(").append(this.getType()).append("=").append(this.getName()).append(")").toString();
                matchingFilter = matchingFilter == null ? nameFilter : new StringBuffer("(&").append(nameFilter).append(matchingFilter).append(")").toString();
            }
            this.matchingFilter = matchingFilter == null ? null : FilterImpl.newInstance(matchingFilter);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setMatchingFilter(Filter matchingFilter) {
        Object object = this.monitor;
        synchronized (object) {
            this.matchingFilter = matchingFilter;
        }
    }

    @Override
    public boolean isSatisfiedBy(BaseDescription supplier) {
        if (!(supplier instanceof GenericDescription)) {
            return false;
        }
        GenericDescription candidate = (GenericDescription)supplier;
        if (!this.getType().equals(candidate.getType())) {
            return false;
        }
        return this.matchingFilter == null || this.matchingFilter.match(candidate.getAttributes());
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("Require-Capability").append(": ").append(this.getType());
        if (this.matchingFilter != null) {
            sb.append("; filter=\"").append(this.getMatchingFilter()).append('\"');
        }
        return sb.toString();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getType() {
        Object object = this.monitor;
        synchronized (object) {
            return this.type;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setType(String type) {
        Object object = this.monitor;
        synchronized (object) {
            this.type = type == null || type.equals("generic") ? "generic" : type;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public int getResolution() {
        Object object = this.monitor;
        synchronized (object) {
            return this.resolution;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isResolved() {
        Object object = this.monitor;
        synchronized (object) {
            return this.suppliers != null && this.suppliers.length > 0;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setResolution(int resolution) {
        Object object = this.monitor;
        synchronized (object) {
            this.resolution = resolution;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BaseDescription getSupplier() {
        Object object = this.monitor;
        synchronized (object) {
            return this.suppliers == null || this.suppliers.length == 0 ? null : this.suppliers[0];
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    protected void setSupplier(BaseDescription supplier) {
        Object object = this.monitor;
        synchronized (object) {
            if (supplier == null) {
                this.suppliers = null;
                return;
            }
            int len = this.suppliers == null ? 0 : this.suppliers.length;
            GenericDescription[] temp = new GenericDescription[len + 1];
            if (this.suppliers != null) {
                System.arraycopy(this.suppliers, 0, temp, 0, len);
            }
            temp[len] = (GenericDescription)supplier;
            this.suppliers = temp;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public GenericDescription[] getSuppliers() {
        Object object = this.monitor;
        synchronized (object) {
            return this.suppliers;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void setSupplers(GenericDescription[] suppliers) {
        Object object = this.monitor;
        synchronized (object) {
            this.suppliers = suppliers;
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
            if ((this.resolution & 1) != 0) {
                result.put("resolution", "optional");
            }
            if (this.matchingFilter != null) {
                result.put("filter", this.matchingFilter.toString());
            }
        }
        return result;
    }

    @Override
    protected Map<String, Object> getInteralAttributes() {
        return Collections.EMPTY_MAP;
    }

    @Override
    protected String getInternalNameSpace() {
        return this.getType();
    }
}

