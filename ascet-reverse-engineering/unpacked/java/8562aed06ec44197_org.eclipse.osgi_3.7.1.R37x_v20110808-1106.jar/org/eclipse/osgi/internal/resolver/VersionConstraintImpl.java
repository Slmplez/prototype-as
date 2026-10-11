/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.Map;
import org.eclipse.osgi.framework.internal.core.Constants;
import org.eclipse.osgi.internal.resolver.BaseDescriptionImpl;
import org.eclipse.osgi.internal.resolver.StateImpl;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.eclipse.osgi.service.resolver.BundleDescription;
import org.eclipse.osgi.service.resolver.VersionConstraint;
import org.eclipse.osgi.service.resolver.VersionRange;
import org.osgi.framework.Version;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRequirement;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
abstract class VersionConstraintImpl
implements VersionConstraint {
    protected final Object monitor = new Object();
    private String name;
    private VersionRange versionRange;
    private BundleDescription bundle;
    private BaseDescription supplier;
    private static final Version MAX_VERSION = new Version(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);

    VersionConstraintImpl() {
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public String getName() {
        Object object = this.monitor;
        synchronized (object) {
            if ("system.bundle".equals(this.name)) {
                StateImpl state = (StateImpl)this.getBundle().getContainingState();
                String string = state == null ? Constants.getInternalSymbolicName() : state.getSystemBundle();
                return string;
            }
            return this.name;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public VersionRange getVersionRange() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.versionRange == null) {
                return VersionRange.emptyRange;
            }
            return this.versionRange;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BundleDescription getBundle() {
        Object object = this.monitor;
        synchronized (object) {
            return this.bundle;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isResolved() {
        Object object = this.monitor;
        synchronized (object) {
            return this.supplier != null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public BaseDescription getSupplier() {
        Object object = this.monitor;
        synchronized (object) {
            return this.supplier;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public boolean isSatisfiedBy(BaseDescription candidate) {
        Object object = this.monitor;
        synchronized (object) {
            return false;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setName(String name) {
        Object object = this.monitor;
        synchronized (object) {
            this.name = name;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setVersionRange(VersionRange versionRange) {
        Object object = this.monitor;
        synchronized (object) {
            this.versionRange = versionRange;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setBundle(BundleDescription bundle) {
        Object object = this.monitor;
        synchronized (object) {
            this.bundle = bundle;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void setSupplier(BaseDescription supplier) {
        Object object = this.monitor;
        synchronized (object) {
            this.supplier = supplier;
        }
    }

    protected abstract String getInternalNameSpace();

    protected abstract Map<String, String> getInternalDirectives();

    protected abstract Map<String, Object> getInteralAttributes();

    @Override
    public BundleRequirement getRequirement() {
        String namespace = this.getInternalNameSpace();
        if (namespace == null) {
            return null;
        }
        return new BundleRequirementImpl(namespace);
    }

    static StringBuffer addFilterAttributes(StringBuffer filter, Map<String, ?> attributes) {
        for (Map.Entry<String, ?> entry : attributes.entrySet()) {
            VersionConstraintImpl.addFilterAttribute(filter, entry.getKey(), entry.getValue());
        }
        return filter;
    }

    static StringBuffer addFilterAttribute(StringBuffer filter, String attr, Object value) {
        return VersionConstraintImpl.addFilterAttribute(filter, attr, value, true);
    }

    static StringBuffer addFilterAttribute(StringBuffer filter, String attr, Object value, boolean escapeWildCard) {
        if (value instanceof VersionRange) {
            VersionRange range = (VersionRange)value;
            if (range.getIncludeMinimum()) {
                filter.append('(').append(attr).append(">=").append(VersionConstraintImpl.escapeValue(range.getMinimum(), escapeWildCard)).append(')');
            } else {
                filter.append("(!(").append(attr).append("<=").append(VersionConstraintImpl.escapeValue(range.getMinimum(), escapeWildCard)).append("))");
            }
            if (!MAX_VERSION.equals(range.getMaximum()) || !range.getIncludeMaximum()) {
                if (range.getIncludeMaximum()) {
                    filter.append('(').append(attr).append("<=").append(VersionConstraintImpl.escapeValue(range.getMaximum(), escapeWildCard)).append(')');
                } else {
                    filter.append("(!(").append(attr).append(">=").append(VersionConstraintImpl.escapeValue(range.getMaximum(), escapeWildCard)).append("))");
                }
            }
        } else {
            filter.append('(').append(attr).append('=').append(VersionConstraintImpl.escapeValue(value, escapeWildCard)).append(')');
        }
        return filter;
    }

    private static String escapeValue(Object o, boolean escapeWildCard) {
        String value = o.toString();
        boolean escaped = false;
        int inlen = value.length();
        int outlen = inlen << 1;
        char[] output = new char[outlen];
        value.getChars(0, inlen, output, inlen);
        int cursor = 0;
        int i = inlen;
        while (i < outlen) {
            char c = output[i];
            switch (c) {
                case '*': {
                    if (!escapeWildCard) break;
                }
                case '(': 
                case ')': 
                case '\\': {
                    output[cursor] = 92;
                    ++cursor;
                    escaped = true;
                }
            }
            output[cursor] = c;
            ++cursor;
            ++i;
        }
        return escaped ? new String(output, 0, cursor) : value;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class BundleRequirementImpl
    implements BundleRequirement {
        private final String namespace;

        public BundleRequirementImpl(String namespace) {
            this.namespace = namespace;
        }

        @Override
        public String getNamespace() {
            return this.namespace;
        }

        @Override
        public Map<String, String> getDirectives() {
            return Collections.unmodifiableMap(VersionConstraintImpl.this.getInternalDirectives());
        }

        @Override
        public Map<String, Object> getAttributes() {
            return Collections.unmodifiableMap(VersionConstraintImpl.this.getInteralAttributes());
        }

        @Override
        public BundleRevision getRevision() {
            return VersionConstraintImpl.this.getBundle();
        }

        @Override
        public boolean matches(BundleCapability capability) {
            return VersionConstraintImpl.this.isSatisfiedBy(((BaseDescriptionImpl.BaseCapability)capability).getBaseDescription());
        }

        public int hashCode() {
            return System.identityHashCode(VersionConstraintImpl.this);
        }

        private VersionConstraintImpl getVersionConstraint() {
            return VersionConstraintImpl.this;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BundleRequirementImpl)) {
                return false;
            }
            return ((BundleRequirementImpl)obj).getVersionConstraint() == VersionConstraintImpl.this;
        }

        public String toString() {
            return new StringBuffer(String.valueOf(this.getNamespace())).append(BaseDescriptionImpl.toString(this.getAttributes(), false)).toString();
        }
    }
}

