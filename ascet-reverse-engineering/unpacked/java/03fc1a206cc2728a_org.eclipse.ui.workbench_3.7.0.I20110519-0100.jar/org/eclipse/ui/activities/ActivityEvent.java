/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import org.eclipse.ui.activities.IActivity;

public final class ActivityEvent {
    private IActivity activity;
    private boolean activityRequirementBindingsChanged;
    private boolean activityPatternBindingsChanged;
    private boolean definedChanged;
    private boolean enabledChanged;
    private boolean defaultEnabledChanged;
    private boolean nameChanged;
    private boolean descriptionChanged;

    public ActivityEvent(IActivity activity, boolean activityRequirementBindingsChanged, boolean activityPatternBindingsChanged, boolean definedChanged, boolean descriptionChanged, boolean enabledChanged, boolean nameChanged) {
        this(activity, activityRequirementBindingsChanged, activityPatternBindingsChanged, definedChanged, descriptionChanged, enabledChanged, nameChanged, false);
    }

    public ActivityEvent(IActivity activity, boolean activityRequirementBindingsChanged, boolean activityPatternBindingsChanged, boolean definedChanged, boolean descriptionChanged, boolean enabledChanged, boolean nameChanged, boolean defaultEnabledChanged) {
        if (activity == null) {
            throw new NullPointerException();
        }
        this.activity = activity;
        this.activityRequirementBindingsChanged = activityRequirementBindingsChanged;
        this.activityPatternBindingsChanged = activityPatternBindingsChanged;
        this.definedChanged = definedChanged;
        this.enabledChanged = enabledChanged;
        this.nameChanged = nameChanged;
        this.descriptionChanged = descriptionChanged;
        this.defaultEnabledChanged = defaultEnabledChanged;
    }

    public IActivity getActivity() {
        return this.activity;
    }

    public boolean hasDefinedChanged() {
        return this.definedChanged;
    }

    public boolean hasEnabledChanged() {
        return this.enabledChanged;
    }

    public boolean hasDefaultEnabledChanged() {
        return this.defaultEnabledChanged;
    }

    public boolean hasNameChanged() {
        return this.nameChanged;
    }

    public boolean hasDescriptionChanged() {
        return this.descriptionChanged;
    }

    public boolean haveActivityRequirementBindingsChanged() {
        return this.activityRequirementBindingsChanged;
    }

    public boolean haveActivityPatternBindingsChanged() {
        return this.activityPatternBindingsChanged;
    }
}

