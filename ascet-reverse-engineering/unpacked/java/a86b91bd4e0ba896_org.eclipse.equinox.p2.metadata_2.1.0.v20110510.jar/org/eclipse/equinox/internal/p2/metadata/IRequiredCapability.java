/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import org.eclipse.equinox.p2.metadata.IRequirement;
import org.eclipse.equinox.p2.metadata.VersionRange;

public interface IRequiredCapability
extends IRequirement {
    public String getName();

    public String getNamespace();

    public VersionRange getRange();
}

