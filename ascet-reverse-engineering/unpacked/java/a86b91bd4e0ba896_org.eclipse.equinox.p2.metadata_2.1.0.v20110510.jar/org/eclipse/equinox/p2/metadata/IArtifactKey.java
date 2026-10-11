/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;

public interface IArtifactKey
extends IVersionedId {
    public String getClassifier();

    public String getId();

    public Version getVersion();

    public String toExternalForm();
}

