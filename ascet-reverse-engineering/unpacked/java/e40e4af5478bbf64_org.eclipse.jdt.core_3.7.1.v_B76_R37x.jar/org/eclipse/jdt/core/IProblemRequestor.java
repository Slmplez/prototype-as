/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core;

import org.eclipse.jdt.core.compiler.IProblem;

public interface IProblemRequestor {
    public void acceptProblem(IProblem var1);

    public void beginReporting();

    public void endReporting();

    public boolean isActive();
}

