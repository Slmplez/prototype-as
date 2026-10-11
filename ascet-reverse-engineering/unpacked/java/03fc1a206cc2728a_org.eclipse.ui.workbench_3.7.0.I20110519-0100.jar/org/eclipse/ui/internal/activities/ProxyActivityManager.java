/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.Set;
import org.eclipse.ui.activities.ActivityManagerEvent;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.internal.activities.AbstractActivityManager;

public final class ProxyActivityManager
extends AbstractActivityManager {
    private IActivityManager activityManager;

    public ProxyActivityManager(IActivityManager activityManager) {
        if (activityManager == null) {
            throw new NullPointerException();
        }
        this.activityManager = activityManager;
        this.activityManager.addActivityManagerListener(new IActivityManagerListener(){

            public void activityManagerChanged(ActivityManagerEvent activityManagerEvent) {
                ActivityManagerEvent proxyActivityManagerEvent = new ActivityManagerEvent(ProxyActivityManager.this, activityManagerEvent.haveDefinedActivityIdsChanged(), activityManagerEvent.haveDefinedCategoryIdsChanged(), activityManagerEvent.haveEnabledActivityIdsChanged(), activityManagerEvent.getPreviouslyDefinedActivityIds(), activityManagerEvent.getPreviouslyDefinedCategoryIds(), activityManagerEvent.getPreviouslyEnabledActivityIds());
                ProxyActivityManager.this.fireActivityManagerChanged(proxyActivityManagerEvent);
            }
        });
    }

    public IActivity getActivity(String activityId) {
        return this.activityManager.getActivity(activityId);
    }

    public ICategory getCategory(String categoryId) {
        return this.activityManager.getCategory(categoryId);
    }

    public Set getDefinedActivityIds() {
        return this.activityManager.getDefinedActivityIds();
    }

    public Set getDefinedCategoryIds() {
        return this.activityManager.getDefinedCategoryIds();
    }

    public Set getEnabledActivityIds() {
        return this.activityManager.getEnabledActivityIds();
    }

    public IIdentifier getIdentifier(String identifierId) {
        return this.activityManager.getIdentifier(identifierId);
    }
}

