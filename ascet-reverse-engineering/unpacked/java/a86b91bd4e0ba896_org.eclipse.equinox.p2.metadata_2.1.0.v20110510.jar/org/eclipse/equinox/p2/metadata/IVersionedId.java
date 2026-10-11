/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.p2.metadata.Version;

public interface IVersionedId {
    public String getId();

    public Version getVersion();
}

