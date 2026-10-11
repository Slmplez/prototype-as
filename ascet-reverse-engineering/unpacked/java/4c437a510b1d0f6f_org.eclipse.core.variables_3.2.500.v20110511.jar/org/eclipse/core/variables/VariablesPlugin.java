/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.variables;

import org.eclipse.core.internal.variables.StringVariableManager;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IStringVariableManager;

public class VariablesPlugin
extends Plugin {
    public static final int INTERNAL_ERROR = 120;
    public static final int REFERENCE_CYCLE_ERROR = 130;
    private static VariablesPlugin plugin;
    public static final String PI_CORE_VARIABLES = "org.eclipse.core.variables";

    public VariablesPlugin() {
        plugin = this;
    }

    public static VariablesPlugin getDefault() {
        return plugin;
    }

    public static void log(Throwable t) {
        VariablesPlugin.log((IStatus)new Status(4, PI_CORE_VARIABLES, 120, "Error logged from Core Variables: ", t));
    }

    public static void logMessage(String message, Throwable throwable) {
        VariablesPlugin.log((IStatus)new Status(4, VariablesPlugin.getUniqueIdentifier(), 120, message, throwable));
    }

    public static void log(IStatus status) {
        VariablesPlugin.getDefault().getLog().log(status);
    }

    public static String getUniqueIdentifier() {
        return PI_CORE_VARIABLES;
    }

    public IStringVariableManager getStringVariableManager() {
        return StringVariableManager.getDefault();
    }
}

