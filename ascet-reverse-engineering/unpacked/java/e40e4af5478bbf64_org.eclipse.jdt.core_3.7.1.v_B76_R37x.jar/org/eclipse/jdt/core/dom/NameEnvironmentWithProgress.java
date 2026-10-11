/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.core.dom;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.internal.compiler.batch.FileSystem;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.INameEnvironmentWithProgress;
import org.eclipse.jdt.internal.core.NameLookup;

class NameEnvironmentWithProgress
extends FileSystem
implements INameEnvironmentWithProgress {
    IProgressMonitor monitor;

    public NameEnvironmentWithProgress(FileSystem.Classpath[] paths, String[] initialFileNames, IProgressMonitor monitor) {
        super(paths, initialFileNames);
        this.setMonitor(monitor);
    }

    private void checkCanceled() {
        if (this.monitor != null && this.monitor.isCanceled()) {
            if (NameLookup.VERBOSE) {
                System.out.println(Thread.currentThread() + " CANCELLING LOOKUP ");
            }
            throw new AbortCompilation(true, (RuntimeException)((Object)new OperationCanceledException()));
        }
    }

    public NameEnvironmentAnswer findType(char[] typeName, char[][] packageName) {
        this.checkCanceled();
        return super.findType(typeName, packageName);
    }

    public NameEnvironmentAnswer findType(char[][] compoundName) {
        this.checkCanceled();
        return super.findType(compoundName);
    }

    public boolean isPackage(char[][] compoundName, char[] packageName) {
        this.checkCanceled();
        return super.isPackage(compoundName, packageName);
    }

    public void setMonitor(IProgressMonitor monitor) {
        this.monitor = monitor;
    }
}

