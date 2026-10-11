/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.viewers.IStructuredContentProvider
 *  org.eclipse.jface.viewers.Viewer
 */
package org.eclipse.ui.internal.activities.ws;

import java.util.Collection;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.ui.activities.IActivityManager;

public class ActivityContentProvider
implements IStructuredContentProvider {
    public void dispose() {
    }

    public Object[] getElements(Object inputElement) {
        Object[] activities = new Object[]{};
        if (inputElement instanceof IActivityManager) {
            activities = ((IActivityManager)inputElement).getDefinedActivityIds().toArray();
        } else if (inputElement instanceof Collection) {
            activities = ((Collection)inputElement).toArray();
        }
        return activities;
    }

    public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    }
}

