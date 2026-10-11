/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.core.internal.resources;

import org.eclipse.core.runtime.Assert;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class VariableDescription
implements Comparable<VariableDescription> {
    private String name;
    private String value;

    public VariableDescription() {
        this.name = "";
        this.value = "";
    }

    public VariableDescription(String name, String value) {
        Assert.isNotNull((Object)name);
        Assert.isNotNull((Object)value);
        this.name = name;
        this.value = value;
    }

    public boolean equals(Object o) {
        if (o.getClass() != VariableDescription.class) {
            return false;
        }
        VariableDescription other = (VariableDescription)o;
        return this.name.equals(other.name) && this.value == other.value;
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return this.name.hashCode() + this.value.hashCode();
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public int compareTo(VariableDescription that) {
        return this.name.compareTo(that.name);
    }
}

