/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.debug.core.model.IDebugElement
 *  org.eclipse.debug.core.model.IDebugTarget
 */
package org.eclipse.jdt.internal.debug.core;

import org.eclipse.debug.core.model.IDebugElement;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.jdt.debug.core.IJavaDebugTarget;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;

public class HeapWalkingManager {
    private static HeapWalkingManager fgSingleton;
    static /* synthetic */ Class class$0;

    protected HeapWalkingManager() {
    }

    public static boolean supportsHeapWalking(Object object) {
        if (object instanceof IDebugElement) {
            IDebugTarget target = ((IDebugElement)object).getDebugTarget();
            if (target instanceof IJavaDebugTarget) {
                return ((IJavaDebugTarget)target).supportsInstanceRetrieval();
            }
            if (target != null) {
                Object adapter;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.jdt.debug.core.IJavaDebugTarget");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((adapter = target.getAdapter((Class)clazz)) instanceof IJavaDebugTarget) {
                    return ((IJavaDebugTarget)adapter).supportsInstanceRetrieval();
                }
            }
        }
        return false;
    }

    public static HeapWalkingManager getDefault() {
        if (fgSingleton == null) {
            fgSingleton = new HeapWalkingManager();
        }
        return fgSingleton;
    }

    public boolean isShowReferenceInVarView() {
        return JDIDebugPlugin.getDefault().getPluginPreferences().getBoolean(JDIDebugPlugin.PREF_SHOW_REFERENCES_IN_VAR_VIEW);
    }

    public int getAllReferencesMaxCount() {
        return JDIDebugPlugin.getDefault().getPluginPreferences().getInt(JDIDebugPlugin.PREF_ALL_REFERENCES_MAX_COUNT);
    }

    public int getAllInstancesMaxCount() {
        return JDIDebugPlugin.getDefault().getPluginPreferences().getInt(JDIDebugPlugin.PREF_ALL_INSTANCES_MAX_COUNT);
    }

    public void setShowReferenceInVarView(boolean value) {
        JDIDebugPlugin.getDefault().getPluginPreferences().setValue(JDIDebugPlugin.PREF_SHOW_REFERENCES_IN_VAR_VIEW, value);
    }

    public void setAllReferencesMaxCount(int max) {
        JDIDebugPlugin.getDefault().getPluginPreferences().setValue(JDIDebugPlugin.PREF_ALL_REFERENCES_MAX_COUNT, max);
    }

    public void setAllInstancesMaxCount(int max) {
        JDIDebugPlugin.getDefault().getPluginPreferences().setValue(JDIDebugPlugin.PREF_ALL_INSTANCES_MAX_COUNT, max);
    }

    public void resetToDefaultSettings() {
        JDIDebugPlugin.getDefault().getPluginPreferences().setToDefault(JDIDebugPlugin.PREF_SHOW_REFERENCES_IN_VAR_VIEW);
        JDIDebugPlugin.getDefault().getPluginPreferences().setToDefault(JDIDebugPlugin.PREF_ALL_REFERENCES_MAX_COUNT);
        JDIDebugPlugin.getDefault().getPluginPreferences().setToDefault(JDIDebugPlugin.PREF_ALL_INSTANCES_MAX_COUNT);
    }
}

