/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.engine.PropertyOperand;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class InstallableUnitPropertyOperand
extends PropertyOperand {
    private final IInstallableUnit iu;

    public InstallableUnitPropertyOperand(IInstallableUnit iu, String key, Object first, Object second) {
        super(key, first, second);
        Assert.isTrue((iu != null ? 1 : 0) != 0);
        this.iu = iu;
    }

    public IInstallableUnit getInstallableUnit() {
        return this.iu;
    }

    public String toString() {
        return "[IInstallableUnit property for " + this.iu.toString() + "] " + super.toString();
    }
}

