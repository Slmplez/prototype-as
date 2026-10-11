/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.core.internal.filebuffers;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;

public class Progress {
    public static IProgressMonitor getMonitor(IProgressMonitor monitor) {
        return monitor == null ? new NullProgressMonitor() : monitor;
    }

    public static IProgressMonitor getSubMonitor(IProgressMonitor parent, int ticks) {
        return new SubProgressMonitor(Progress.getMonitor(parent), ticks, 4);
    }

    public static IProgressMonitor getMonitor() {
        return new NullProgressMonitor();
    }
}

