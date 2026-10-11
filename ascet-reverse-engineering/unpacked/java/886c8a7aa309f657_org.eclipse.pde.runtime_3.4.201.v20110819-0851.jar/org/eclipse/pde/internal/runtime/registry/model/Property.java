/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.runtime.registry.model;

import org.eclipse.pde.internal.runtime.registry.model.ModelObject;

public class Property
extends ModelObject
implements Comparable {
    public static final String PREFIX_SERVICE = "service.";
    public static final String PREFIX_COMPONENT = "component.";
    private String name;
    private String value;

    public Property() {
    }

    public Property(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getValue() {
        return this.value;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public int compareTo(Object obj) {
        if (!(obj instanceof Property)) {
            return 0;
        }
        Property other = (Property)obj;
        String name0 = this.getName();
        String name1 = other.getName();
        if ("objectClass".equals(name0)) {
            return -1;
        }
        if ("objectClass".equals(name1)) {
            return 1;
        }
        if (name0.startsWith(PREFIX_COMPONENT) && name1.startsWith(PREFIX_COMPONENT)) {
            return name0.compareTo(name1);
        }
        if (name0.startsWith(PREFIX_COMPONENT)) {
            return -1;
        }
        if (name1.startsWith(PREFIX_COMPONENT)) {
            return 1;
        }
        if (name0.startsWith(PREFIX_SERVICE) && name1.startsWith(PREFIX_SERVICE)) {
            return name0.compareTo(name1);
        }
        if (name0.startsWith(PREFIX_SERVICE)) {
            return -1;
        }
        if (name1.startsWith(PREFIX_SERVICE)) {
            return 1;
        }
        return name0.compareTo(name1);
    }
}

