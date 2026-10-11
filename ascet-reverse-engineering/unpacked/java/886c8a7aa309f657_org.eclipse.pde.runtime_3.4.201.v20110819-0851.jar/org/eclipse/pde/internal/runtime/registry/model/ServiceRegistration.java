/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import java.util.HashSet;
import org.eclipse.pde.internal.runtime.registry.model.Bundle;
import org.eclipse.pde.internal.runtime.registry.model.ModelObject;
import org.eclipse.pde.internal.runtime.registry.model.Property;
import org.eclipse.pde.internal.runtime.registry.model.ServiceName;

public class ServiceRegistration
extends ModelObject
implements Comparable {
    private long id;
    private String bundle;
    private long[] usingBundles = new long[0];
    private ServiceName name;
    private Property[] properties = new Property[0];

    public void setId(long id) {
        this.id = id;
    }

    public void setBundle(String bundle) {
        this.bundle = bundle;
    }

    public void setUsingBundles(long[] usingBundles) {
        if (usingBundles == null) {
            throw new IllegalArgumentException();
        }
        this.usingBundles = usingBundles;
    }

    public void setName(ServiceName name) {
        if (name == null) {
            throw new IllegalArgumentException();
        }
        this.name = name;
    }

    public void setProperties(Property[] properties) {
        if (properties == null) {
            throw new IllegalArgumentException();
        }
        this.properties = properties;
    }

    public long getId() {
        return this.id;
    }

    public ServiceName getName() {
        return this.name;
    }

    public String getBundle() {
        return this.bundle;
    }

    public long[] getUsingBundleIds() {
        return this.usingBundles;
    }

    public Bundle[] getUsingBundles() {
        if (this.usingBundles.length == 0 || this.model == null) {
            return new Bundle[0];
        }
        HashSet<Bundle> bundles = new HashSet<Bundle>();
        int i = 0;
        while (i < this.usingBundles.length) {
            Bundle bundle = this.model.getBundle(new Long(this.usingBundles[i]));
            if (bundle != null) {
                bundles.add(bundle);
            }
            ++i;
        }
        return bundles.toArray(new Bundle[bundles.size()]);
    }

    public Property[] getProperties() {
        return this.properties;
    }

    public Property getProperty(String name) {
        int p = 0;
        while (p < this.properties.length) {
            Property property = this.properties[p];
            if (name.equals(property.getName())) {
                return property;
            }
            ++p;
        }
        return null;
    }

    public static String toString(Object value) {
        if (value == null) {
            return "";
        }
        if (value instanceof CharSequence) {
            CharSequence charSequence = (CharSequence)value;
            return charSequence.toString();
        }
        if (value instanceof Object[]) {
            StringBuffer buff = new StringBuffer();
            ServiceRegistration.appendString(buff, value);
            return buff.toString();
        }
        return value.toString();
    }

    public static void appendString(StringBuffer buff, Object value) {
        if (value != null) {
            if (value instanceof Object[]) {
                Object[] objects = (Object[])value;
                buff.append("[");
                int o = 0;
                while (o < objects.length) {
                    Object object = objects[o];
                    if (o > 0) {
                        buff.append(", ");
                    }
                    ServiceRegistration.appendString(buff, object);
                    ++o;
                }
                buff.append("]");
            } else {
                buff.append(value.toString());
            }
        }
    }

    public boolean equals(Object obj) {
        return obj instanceof ServiceRegistration && this.id == ((ServiceRegistration)obj).id;
    }

    public int hashCode() {
        return (int)this.id;
    }

    public int compareTo(Object obj) {
        if (obj instanceof ServiceRegistration) {
            ServiceRegistration other = (ServiceRegistration)obj;
            return this.name.compareTo(other.getName());
        }
        return 0;
    }
}

