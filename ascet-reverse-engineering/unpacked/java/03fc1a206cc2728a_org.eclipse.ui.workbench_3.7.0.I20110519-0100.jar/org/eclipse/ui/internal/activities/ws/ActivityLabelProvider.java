/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.activities.ws;

import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.NotDefinedException;

public class ActivityLabelProvider
extends LabelProvider {
    private IActivityManager activityManager;

    public ActivityLabelProvider(IActivityManager activityManager) {
        this.activityManager = activityManager;
    }

    private String getActivityText(IActivity activity) {
        try {
            return activity.getName();
        }
        catch (NotDefinedException notDefinedException) {
            return activity.getId();
        }
    }

    public Image getImage(Object element) {
        return null;
    }

    public String getText(Object element) {
        if (element instanceof String) {
            return this.getActivityText(this.activityManager.getActivity((String)element));
        }
        if (element instanceof IActivity) {
            return this.getActivityText((IActivity)element);
        }
        throw new IllegalArgumentException();
    }
}

