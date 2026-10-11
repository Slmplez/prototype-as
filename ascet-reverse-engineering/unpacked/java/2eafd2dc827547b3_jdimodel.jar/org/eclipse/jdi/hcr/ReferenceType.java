/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdi.hcr;

public interface ReferenceType {
    public int getClassFileVersion();

    public boolean isHCREligible();

    public boolean isVersionKnown();
}

