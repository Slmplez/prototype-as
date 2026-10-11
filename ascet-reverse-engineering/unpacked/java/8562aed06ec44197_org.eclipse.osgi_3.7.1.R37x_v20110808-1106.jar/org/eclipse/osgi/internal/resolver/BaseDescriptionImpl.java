/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.resolver;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.osgi.service.resolver.BaseDescription;
import org.osgi.framework.Version;
import org.osgi.framework.wiring.BundleCapability;
import org.osgi.framework.wiring.BundleRevision;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class BaseDescriptionImpl
implements BaseDescription {
    protected final Object monitor = new Object();
    private volatile String name;
    private volatile Version version;

    @Override
    public String getName() {
        return this.name;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public Version getVersion() {
        Object object = this.monitor;
        synchronized (object) {
            if (this.version == null) {
                return Version.emptyVersion;
            }
            return this.version;
        }
    }

    protected void setName(String name) {
        this.name = name;
    }

    protected void setVersion(Version version) {
        this.version = version;
    }

    static String toString(Map<String, Object> map, boolean directives) {
        if (map.size() == 0) {
            return "";
        }
        String assignment = directives ? ":=" : "=";
        Set<Map.Entry<String, Object>> set = map.entrySet();
        StringBuffer sb = new StringBuffer();
        for (Map.Entry<String, Object> entry : set) {
            sb.append("; ");
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof List) {
                List list = (List)value;
                if (list.size() == 0) continue;
                Object component = list.get(0);
                String className = component.getClass().getName();
                String type = className.substring(className.lastIndexOf(46) + 1);
                sb.append(key).append(':').append("List<").append(type).append(">").append(assignment).append('\"');
                for (Object object : list) {
                    sb.append(object).append(',');
                }
                sb.setLength(sb.length() - 1);
                sb.append('\"');
                continue;
            }
            String type = "";
            if (!(value instanceof String)) {
                String className = value.getClass().getName();
                type = new StringBuffer(":").append(className.substring(className.lastIndexOf(46) + 1)).toString();
            }
            sb.append(key).append(type).append(assignment).append('\"').append(value).append('\"');
        }
        return sb.toString();
    }

    String getInternalNameSpace() {
        return null;
    }

    public BaseDescription getFragmentDeclaration() {
        return null;
    }

    @Override
    public BundleCapability getCapability() {
        return this.getCapability(null);
    }

    BundleCapability getCapability(String namespace) {
        BaseDescriptionImpl fragmentDeclaration = (BaseDescriptionImpl)this.getFragmentDeclaration();
        if (fragmentDeclaration != null) {
            return fragmentDeclaration.getCapability(namespace);
        }
        if (namespace == null) {
            namespace = this.getInternalNameSpace();
        }
        if (namespace == null) {
            return null;
        }
        return new BaseCapability(namespace);
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    class BaseCapability
    implements BundleCapability {
        private final String namespace;

        public BaseCapability(String namespace) {
            this.namespace = namespace;
        }

        @Override
        public BundleRevision getRevision() {
            return BaseDescriptionImpl.this.getSupplier();
        }

        @Override
        public String getNamespace() {
            return this.namespace;
        }

        @Override
        public Map<String, String> getDirectives() {
            return BaseDescriptionImpl.this.getDeclaredDirectives();
        }

        @Override
        public Map<String, Object> getAttributes() {
            Map<String, Object> attrs = BaseDescriptionImpl.this.getDeclaredAttributes();
            String internalName = BaseDescriptionImpl.this.getInternalNameSpace();
            if (this.namespace.equals(internalName)) {
                return attrs;
            }
            Object nameValue = (attrs = new HashMap<String, Object>(attrs)).remove(internalName);
            if (nameValue != null) {
                attrs.put(this.namespace, nameValue);
            }
            return Collections.unmodifiableMap(attrs);
        }

        public int hashCode() {
            return System.identityHashCode(BaseDescriptionImpl.this);
        }

        protected BaseDescriptionImpl getBaseDescription() {
            return BaseDescriptionImpl.this;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BaseCapability)) {
                return false;
            }
            return ((BaseCapability)obj).getBaseDescription() == BaseDescriptionImpl.this && this.namespace.equals(((BaseCapability)obj).getNamespace());
        }

        public String toString() {
            return new StringBuffer(String.valueOf(this.getNamespace())).append(BaseDescriptionImpl.toString(this.getAttributes(), false)).toString();
        }
    }
}

