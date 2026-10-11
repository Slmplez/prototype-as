/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.ui.activities.IActivity;
import org.eclipse.ui.activities.IActivityManagerListener;
import org.eclipse.ui.activities.ICategory;
import org.eclipse.ui.activities.IIdentifier;

public interface IActivityManager {
    public void addActivityManagerListener(IActivityManagerListener var1);

    public IActivity getActivity(String var1);

    public ICategory getCategory(String var1);

    public Set getDefinedActivityIds();

    public Set getDefinedCategoryIds();

    public Set getEnabledActivityIds();

    public IIdentifier getIdentifier(String var1);

    public void removeActivityManagerListener(IActivityManagerListener var1);
}

