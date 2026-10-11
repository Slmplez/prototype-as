/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 */
package org.eclipse.ui.progress;

import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.ui.model.IWorkbenchAdapter;
import org.eclipse.ui.progress.IElementCollector;

public interface IDeferredWorkbenchAdapter
extends IWorkbenchAdapter {
    public void fetchDeferredChildren(Object var1, IElementCollector var2, IProgressMonitor var3);

    public boolean isContainer();

    public ISchedulingRule getRule(Object var1);
}

