/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.activities;

import java.util.Set;
import org.eclipse.ui.activities.ITriggerPoint;

public interface ITriggerPointManager {
    public static final String UNKNOWN_TRIGGER_POINT_ID = "org.eclipse.ui.internal.UnknownTriggerPoint";

    public ITriggerPoint getTriggerPoint(String var1);

    public Set getDefinedTriggerPointIds();
}

