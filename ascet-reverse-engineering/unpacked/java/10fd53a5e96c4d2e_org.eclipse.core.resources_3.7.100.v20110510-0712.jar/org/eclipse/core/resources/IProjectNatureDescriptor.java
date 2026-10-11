/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.core.resources;

public interface IProjectNatureDescriptor {
    public String getNatureId();

    public String getLabel();

    public String[] getRequiredNatureIds();

    public String[] getNatureSetIds();

    public boolean isLinkingAllowed();
}

