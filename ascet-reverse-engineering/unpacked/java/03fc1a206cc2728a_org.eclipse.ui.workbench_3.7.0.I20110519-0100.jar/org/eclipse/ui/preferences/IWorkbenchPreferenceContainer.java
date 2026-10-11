/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.jobs.Job
 */
package org.eclipse.ui.preferences;

import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.ui.preferences.IWorkingCopyManager;

public interface IWorkbenchPreferenceContainer {
    public boolean openPage(String var1, Object var2);

    public IWorkingCopyManager getWorkingCopyManager();

    public void registerUpdateJob(Job var1);
}

