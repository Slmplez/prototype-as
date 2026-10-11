/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.ui.activities.IActivityManager;
import org.eclipse.ui.activities.IIdentifier;
import org.eclipse.ui.activities.ITriggerPoint;

public interface ITriggerPointAdvisor {
    public Set allow(ITriggerPoint var1, IIdentifier var2);

    public boolean computeEnablement(IActivityManager var1, IIdentifier var2);
}

