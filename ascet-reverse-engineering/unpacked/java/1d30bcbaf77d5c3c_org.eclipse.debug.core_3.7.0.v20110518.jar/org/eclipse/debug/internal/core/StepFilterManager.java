/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.Platform;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.commands.IStepFiltersHandler;
import org.eclipse.debug.internal.core.Preferences;
import org.eclipse.debug.internal.core.commands.DebugCommandRequest;

public class StepFilterManager
implements ILaunchListener {
    public static final String PREF_USE_STEP_FILTERS = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".USE_STEP_FILTERS";
    static /* synthetic */ Class class$0;

    protected StepFilterManager() {
        DebugPlugin.getDefault().getLaunchManager().addLaunchListener(this);
    }

    public void shutdown() {
        DebugPlugin.getDefault().getLaunchManager().removeLaunchListener(this);
    }

    public void launchAdded(ILaunch launch) {
        this.launchChanged(launch);
    }

    public void launchChanged(ILaunch launch) {
        IStepFiltersHandler command;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.commands.IStepFiltersHandler");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((command = (IStepFiltersHandler)launch.getAdapter(clazz)) != null) {
            command.execute(new DebugCommandRequest(new Object[]{launch}));
        }
    }

    public boolean isUseStepFilters() {
        return Platform.getPreferencesService().getBoolean(DebugPlugin.getUniqueIdentifier(), PREF_USE_STEP_FILTERS, false, null);
    }

    public void setUseStepFilters(boolean useFilters) {
        Preferences.setBoolean(DebugPlugin.getUniqueIdentifier(), PREF_USE_STEP_FILTERS, useFilters, null);
        ILaunch[] launchs = DebugPlugin.getDefault().getLaunchManager().getLaunches();
        int i = 0;
        while (i < launchs.length) {
            ILaunch launch = launchs[i];
            this.launchChanged(launch);
            ++i;
        }
    }

    public void launchRemoved(ILaunch launch) {
    }
}

