/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.activities;

import java.util.List;
import org.eclipse.ui.internal.activities.IActivityRegistryListener;

public interface IActivityRegistry {
    public void addActivityRegistryListener(IActivityRegistryListener var1);

    public List getActivityRequirementBindingDefinitions();

    public List getActivityDefinitions();

    public List getActivityPatternBindingDefinitions();

    public List getCategoryActivityBindingDefinitions();

    public List getCategoryDefinitions();

    public List getDefaultEnabledActivities();

    public void removeActivityRegistryListener(IActivityRegistryListener var1);
}

