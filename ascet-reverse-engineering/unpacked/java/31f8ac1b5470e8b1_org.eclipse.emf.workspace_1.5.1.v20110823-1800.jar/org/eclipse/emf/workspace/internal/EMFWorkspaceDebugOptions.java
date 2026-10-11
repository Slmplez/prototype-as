/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.workspace.internal;

import org.eclipse.emf.workspace.internal.EMFWorkspacePlugin;

public class EMFWorkspaceDebugOptions {
    public static final String DEBUG = String.valueOf(EMFWorkspacePlugin.getPluginId()) + "/debug";
    public static final String EXCEPTIONS_CATCHING = String.valueOf(DEBUG) + "/exceptions/catching";
    public static final String EXCEPTIONS_THROWING = String.valueOf(DEBUG) + "/exceptions/throwing";
    public static final String METHODS_ENTERING = String.valueOf(DEBUG) + "/methods/entering";
    public static final String METHODS_EXITING = String.valueOf(DEBUG) + "/methods/exiting";

    private EMFWorkspaceDebugOptions() {
    }
}

