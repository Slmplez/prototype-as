/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.internal.util.Util;

public final class ActivityManagerEvent {
    private IActivityManager activityManager;
    private boolean definedActivityIdsChanged;
    private boolean definedCategoryIdsChanged;
    private boolean enabledActivityIdsChanged;
    private final Set previouslyDefinedActivityIds;
    private final Set previouslyDefinedCategoryIds;
    private final Set previouslyEnabledActivityIds;
    static /* synthetic */ Class class$0;

    public ActivityManagerEvent(IActivityManager activityManager, boolean definedActivityIdsChanged, boolean definedCategoryIdsChanged, boolean enabledActivityIdsChanged, Set previouslyDefinedActivityIds, Set previouslyDefinedCategoryIds, Set previouslyEnabledActivityIds) {
        if (activityManager == null) {
            throw new NullPointerException();
        }
        if (!definedActivityIdsChanged && previouslyDefinedActivityIds != null) {
            throw new IllegalArgumentException();
        }
        if (!definedCategoryIdsChanged && previouslyDefinedCategoryIds != null) {
            throw new IllegalArgumentException();
        }
        if (!enabledActivityIdsChanged && previouslyEnabledActivityIds != null) {
            throw new IllegalArgumentException();
        }
        if (definedActivityIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyDefinedActivityIds = Util.safeCopy(previouslyDefinedActivityIds, (Class)clazz);
        } else {
            this.previouslyDefinedActivityIds = null;
        }
        if (definedCategoryIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyDefinedCategoryIds = Util.safeCopy(previouslyDefinedCategoryIds, (Class)clazz);
        } else {
            this.previouslyDefinedCategoryIds = null;
        }
        if (enabledActivityIdsChanged) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.lang.String");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.previouslyEnabledActivityIds = Util.safeCopy(previouslyEnabledActivityIds, (Class)clazz);
        } else {
            this.previouslyEnabledActivityIds = null;
        }
        this.activityManager = activityManager;
        this.definedActivityIdsChanged = definedActivityIdsChanged;
        this.definedCategoryIdsChanged = definedCategoryIdsChanged;
        this.enabledActivityIdsChanged = enabledActivityIdsChanged;
    }

    public IActivityManager getActivityManager() {
        return this.activityManager;
    }

    public final Set getPreviouslyDefinedActivityIds() {
        return this.previouslyDefinedActivityIds;
    }

    public final Set getPreviouslyDefinedCategoryIds() {
        return this.previouslyDefinedCategoryIds;
    }

    public final Set getPreviouslyEnabledActivityIds() {
        return this.previouslyEnabledActivityIds;
    }

    public boolean haveDefinedActivityIdsChanged() {
        return this.definedActivityIdsChanged;
    }

    public boolean haveDefinedCategoryIdsChanged() {
        return this.definedCategoryIdsChanged;
    }

    public boolean haveEnabledActivityIdsChanged() {
        return this.enabledActivityIdsChanged;
    }
}

