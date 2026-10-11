/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.search.TypeNameMatch;

public class JavaSearchTypeNameMatch
extends TypeNameMatch {
    private IType type;
    private int modifiers = -1;
    private int accessibility = 0;

    public JavaSearchTypeNameMatch(IType type, int modifiers) {
        this.type = type;
        this.modifiers = modifiers;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof TypeNameMatch) {
            TypeNameMatch match = (TypeNameMatch)obj;
            if (this.type == null) {
                return match.getType() == null && match.getModifiers() == this.modifiers;
            }
            return this.type.equals(match.getType()) && match.getModifiers() == this.modifiers;
        }
        return false;
    }

    public int getAccessibility() {
        return this.accessibility;
    }

    public int getModifiers() {
        return this.modifiers;
    }

    public IType getType() {
        return this.type;
    }

    public int hashCode() {
        if (this.type == null) {
            return this.modifiers;
        }
        return this.type.hashCode();
    }

    public void setAccessibility(int accessibility) {
        this.accessibility = accessibility;
    }

    public void setModifiers(int modifiers) {
        this.modifiers = modifiers;
    }

    public void setType(IType type) {
        this.type = type;
    }

    public String toString() {
        if (this.type == null) {
            return super.toString();
        }
        return this.type.toString();
    }
}

