/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.PropertyTester
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal.handlers;

import org.eclipse.core.expressions.PropertyTester;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.tweaklets.TabBehaviour;
import org.eclipse.ui.internal.tweaklets.Tweaklets;

public class ReuseEditorTester
extends PropertyTester {
    public boolean test(Object receiver, String property, Object[] args, Object expectedValue) {
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        return store.getBoolean("REUSE_OPEN_EDITORS_BOOLEAN") || ((TabBehaviour)Tweaklets.get(TabBehaviour.KEY)).alwaysShowPinAction();
    }
}

