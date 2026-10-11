/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.internal.codeassist.ISearchRequestor;
import org.eclipse.jdt.internal.compiler.env.NameEnvironmentAnswer;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.core.INameEnvironmentWithProgress;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.NameLookup;
import org.eclipse.jdt.internal.core.SearchableEnvironment;

public class CancelableNameEnvironment
extends SearchableEnvironment
implements INameEnvironmentWithProgress {
    private IProgressMonitor monitor;

    public CancelableNameEnvironment(JavaProject project, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        super(project, owner);
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

    public void findPackages(char[] prefix, ISearchRequestor requestor) {
        this.checkCanceled();
        super.findPackages(prefix, requestor);
    }

    public NameEnvironmentAnswer findType(char[] name, char[][] packageName) {
        this.checkCanceled();
        return super.findType(name, packageName);
    }

    public NameEnvironmentAnswer findType(char[][] compoundTypeName) {
        this.checkCanceled();
        return super.findType(compoundTypeName);
    }

    public void findTypes(char[] prefix, boolean findMembers, boolean camelCaseMatch, int searchFor, ISearchRequestor storage, IProgressMonitor progressMonitor) {
        this.checkCanceled();
        super.findTypes(prefix, findMembers, camelCaseMatch, searchFor, storage, progressMonitor);
    }

    public void setMonitor(IProgressMonitor monitor) {
        this.monitor = monitor;
    }
}

