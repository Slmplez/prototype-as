/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.eclipse.ui.internal.activities.ActivityRegistryEvent;
import org.eclipse.ui.internal.activities.IActivityRegistry;
import org.eclipse.ui.internal.activities.IActivityRegistryListener;

public abstract class AbstractActivityRegistry
implements IActivityRegistry {
    protected List activityRequirementBindingDefinitions = Collections.EMPTY_LIST;
    protected List activityDefinitions = Collections.EMPTY_LIST;
    protected List activityPatternBindingDefinitions = Collections.EMPTY_LIST;
    private ActivityRegistryEvent activityRegistryEvent;
    private List activityRegistryListeners;
    protected List categoryActivityBindingDefinitions = Collections.EMPTY_LIST;
    protected List categoryDefinitions = Collections.EMPTY_LIST;
    protected List defaultEnabledActivities = Collections.EMPTY_LIST;

    protected AbstractActivityRegistry() {
    }

    public void addActivityRegistryListener(IActivityRegistryListener activityRegistryListener) {
        if (activityRegistryListener == null) {
            throw new NullPointerException();
        }
        if (this.activityRegistryListeners == null) {
            this.activityRegistryListeners = new ArrayList();
        }
        if (!this.activityRegistryListeners.contains(activityRegistryListener)) {
            this.activityRegistryListeners.add(activityRegistryListener);
        }
    }

    protected void fireActivityRegistryChanged() {
        if (this.activityRegistryListeners != null) {
            int i = 0;
            while (i < this.activityRegistryListeners.size()) {
                if (this.activityRegistryEvent == null) {
                    this.activityRegistryEvent = new ActivityRegistryEvent(this);
                }
                ((IActivityRegistryListener)this.activityRegistryListeners.get(i)).activityRegistryChanged(this.activityRegistryEvent);
                ++i;
            }
        }
    }

    public List getActivityRequirementBindingDefinitions() {
        return this.activityRequirementBindingDefinitions;
    }

    public List getActivityDefinitions() {
        return this.activityDefinitions;
    }

    public List getActivityPatternBindingDefinitions() {
        return this.activityPatternBindingDefinitions;
    }

    public List getCategoryActivityBindingDefinitions() {
        return this.categoryActivityBindingDefinitions;
    }

    public List getCategoryDefinitions() {
        return this.categoryDefinitions;
    }

    public void removeActivityRegistryListener(IActivityRegistryListener activityRegistryListener) {
        if (activityRegistryListener == null) {
            throw new NullPointerException();
        }
        if (this.activityRegistryListeners != null) {
            this.activityRegistryListeners.remove(activityRegistryListener);
        }
    }

    public List getDefaultEnabledActivities() {
        return this.defaultEnabledActivities;
    }
}

