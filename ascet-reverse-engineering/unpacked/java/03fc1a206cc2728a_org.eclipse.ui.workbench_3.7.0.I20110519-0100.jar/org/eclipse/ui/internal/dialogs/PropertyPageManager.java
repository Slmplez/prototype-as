/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.preference.PreferenceNode
 */
package org.eclipse.ui.internal.dialogs;

import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.preference.PreferenceNode;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.preferences.WorkbenchPreferenceExpressionNode;

public class PropertyPageManager
extends PreferenceManager {
    public PropertyPageManager() {
        super(WorkbenchPlugin.PREFERENCE_PAGE_CATEGORY_SEPARATOR, (PreferenceNode)new WorkbenchPreferenceExpressionNode(""));
    }
}

