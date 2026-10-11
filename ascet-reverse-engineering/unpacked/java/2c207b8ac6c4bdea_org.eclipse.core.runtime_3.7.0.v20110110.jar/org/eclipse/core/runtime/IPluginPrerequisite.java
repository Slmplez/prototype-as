/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PluginVersionIdentifier
 */
package org.eclipse.core.runtime;

import org.eclipse.core.runtime.PluginVersionIdentifier;

public interface IPluginPrerequisite {
    public PluginVersionIdentifier getResolvedVersionIdentifier();

    public String getUniqueIdentifier();

    public PluginVersionIdentifier getVersionIdentifier();

    public boolean isExported();

    public boolean isMatchedAsGreaterOrEqual();

    public boolean isMatchedAsCompatible();

    public boolean isMatchedAsEquivalent();

    public boolean isMatchedAsPerfect();

    public boolean isMatchedAsExact();

    public boolean isOptional();
}

