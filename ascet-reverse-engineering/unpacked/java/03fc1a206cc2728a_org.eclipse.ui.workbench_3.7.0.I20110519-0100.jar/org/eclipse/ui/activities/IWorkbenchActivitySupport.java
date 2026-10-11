/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IMutableActivityManager;
import org.eclipse.ui.activities.ITriggerPointManager;

public interface IWorkbenchActivitySupport {
    public IActivityManager getActivityManager();

    public void setEnabledActivityIds(Set var1);

    public ImageDescriptor getImageDescriptor(IActivity var1);

    public ImageDescriptor getImageDescriptor(ICategory var1);

    public ITriggerPointManager getTriggerPointManager();

    public IMutableActivityManager createWorkingCopy();
}

