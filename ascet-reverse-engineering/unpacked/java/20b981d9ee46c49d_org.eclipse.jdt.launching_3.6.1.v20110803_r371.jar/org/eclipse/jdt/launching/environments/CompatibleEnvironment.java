/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching.environments;

import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

public class CompatibleEnvironment {
    private IExecutionEnvironment fEnvironment;
    private boolean fIsStrictlyCompatible;

    public CompatibleEnvironment(IExecutionEnvironment environment, boolean strict) {
        this.fEnvironment = environment;
        this.fIsStrictlyCompatible = strict;
    }

    public IExecutionEnvironment getCompatibleEnvironment() {
        return this.fEnvironment;
    }

    public boolean isStrictlyCompatbile() {
        return this.fIsStrictlyCompatible;
    }
}

