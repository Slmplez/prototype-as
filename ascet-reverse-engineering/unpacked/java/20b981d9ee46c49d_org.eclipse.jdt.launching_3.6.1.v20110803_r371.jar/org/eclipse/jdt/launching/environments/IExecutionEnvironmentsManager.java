/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.launching.environments;

import org.eclipse.jdt.launching.environments.IExecutionEnvironment;

public interface IExecutionEnvironmentsManager {
    public IExecutionEnvironment[] getExecutionEnvironments();

    public IExecutionEnvironment getEnvironment(String var1);
}

