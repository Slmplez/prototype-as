/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.internal.core.util.Util;

public class ClasspathAttribute
implements IClasspathAttribute {
    private String name;
    private String value;

    public ClasspathAttribute(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ClasspathAttribute)) {
            return false;
        }
        ClasspathAttribute other = (ClasspathAttribute)obj;
        return this.name.equals(other.name) && this.value.equals(other.value);
    }

    public String getName() {
        return this.name;
    }

    public String getValue() {
        return this.value;
    }

    public int hashCode() {
        return Util.combineHashCodes(this.name.hashCode(), this.value.hashCode());
    }

    public String toString() {
        return String.valueOf(this.name) + "=" + this.value;
    }
}

