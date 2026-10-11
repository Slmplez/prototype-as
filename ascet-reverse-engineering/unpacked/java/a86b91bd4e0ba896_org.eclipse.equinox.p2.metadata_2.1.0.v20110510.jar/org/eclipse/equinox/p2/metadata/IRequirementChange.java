/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.internal.p2.metadata.IRequiredCapability;

public interface IRequirementChange {
    public IRequiredCapability applyOn();

    public IRequiredCapability newValue();

    public boolean matches(IRequiredCapability var1);

    public boolean equals(Object var1);
}

