/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.team.core.diff;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.team.core.diff.IDiff;

public abstract class DiffFilter {
    public abstract boolean select(IDiff var1, IProgressMonitor var2);
}

