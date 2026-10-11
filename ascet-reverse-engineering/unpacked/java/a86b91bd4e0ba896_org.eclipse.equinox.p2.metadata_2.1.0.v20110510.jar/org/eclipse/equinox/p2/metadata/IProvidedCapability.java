/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.p2.metadata.Version;

public interface IProvidedCapability {
    public String getName();

    public String getNamespace();

    public Version getVersion();

    public boolean equals(Object var1);
}

