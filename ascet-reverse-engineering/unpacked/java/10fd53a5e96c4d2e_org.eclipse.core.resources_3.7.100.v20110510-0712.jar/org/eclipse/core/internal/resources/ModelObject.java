/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.internal.resources;

public abstract class ModelObject
implements Cloneable {
    protected String name;

    public ModelObject() {
    }

    public ModelObject(String name) {
        this.setName(name);
    }

    public Object clone() {
        try {
            return super.clone();
        }
        catch (CloneNotSupportedException cloneNotSupportedException) {
            return null;
        }
    }

    public String getName() {
        return this.name;
    }

    public void setName(String value) {
        this.name = value;
    }
}

