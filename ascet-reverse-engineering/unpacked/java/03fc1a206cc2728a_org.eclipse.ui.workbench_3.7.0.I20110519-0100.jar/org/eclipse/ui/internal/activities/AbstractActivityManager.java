/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IActivityManagerListener;

public abstract class AbstractActivityManager
implements IActivityManager {
    private List activityManagerListeners;

    protected AbstractActivityManager() {
    }

    public void addActivityManagerListener(IActivityManagerListener activityManagerListener) {
        if (activityManagerListener == null) {
            throw new NullPointerException();
        }
        if (this.activityManagerListeners == null) {
            this.activityManagerListeners = new ArrayList();
        }
        if (!this.activityManagerListeners.contains(activityManagerListener)) {
            this.activityManagerListeners.add(activityManagerListener);
        }
    }

    protected void fireActivityManagerChanged(ActivityManagerEvent activityManagerEvent) {
        if (activityManagerEvent == null) {
            throw new NullPointerException();
        }
        if (this.activityManagerListeners != null) {
            int i = 0;
            while (i < this.activityManagerListeners.size()) {
                ((IActivityManagerListener)this.activityManagerListeners.get(i)).activityManagerChanged(activityManagerEvent);
                ++i;
            }
        }
    }

    public void removeActivityManagerListener(IActivityManagerListener activityManagerListener) {
        if (activityManagerListener == null) {
            throw new NullPointerException();
        }
        if (this.activityManagerListeners != null) {
            this.activityManagerListeners.remove(activityManagerListener);
        }
    }
}

