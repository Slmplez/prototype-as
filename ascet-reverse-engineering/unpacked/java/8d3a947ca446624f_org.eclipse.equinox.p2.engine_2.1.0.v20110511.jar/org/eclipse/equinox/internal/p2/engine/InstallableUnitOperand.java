/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.equinox.p2.metadata.IInstallableUnit
 */
package org.eclipse.equinox.internal.p2.engine;

import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.internal.p2.engine.Operand;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;

public class InstallableUnitOperand
extends Operand {
    private final IInstallableUnit first;
    private final IInstallableUnit second;

    public InstallableUnitOperand(IInstallableUnit first, IInstallableUnit second) {
        Assert.isTrue((first != null || second != null ? 1 : 0) != 0);
        this.first = first;
        this.second = second;
    }

    public IInstallableUnit first() {
        return this.first;
    }

    public IInstallableUnit second() {
        return this.second;
    }

    public String toString() {
        return this.first + " --> " + this.second;
    }
}

