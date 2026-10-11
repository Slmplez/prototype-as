/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;

public interface INameEnvironmentWithProgress
extends INameEnvironment {
    public void setMonitor(IProgressMonitor var1);
}

