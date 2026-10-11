/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.team.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.SubProgressMonitor;

public class NullSubProgressMonitor
extends SubProgressMonitor {
    public NullSubProgressMonitor(IProgressMonitor monitor) {
        super(monitor, 0, 0);
    }

    public void beginTask(String name, int totalWork) {
    }

    public void done() {
    }

    public void internalWorked(double work) {
    }

    public void subTask(String name) {
    }

    public void worked(int work) {
    }
}

