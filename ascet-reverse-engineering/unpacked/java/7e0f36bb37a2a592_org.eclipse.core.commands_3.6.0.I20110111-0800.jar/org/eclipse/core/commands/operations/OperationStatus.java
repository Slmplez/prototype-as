/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Status
 */
package org.eclipse.core.commands.operations;

import org.eclipse.core.runtime.Status;

public final class OperationStatus
extends Status {
    public static final int NOTHING_TO_REDO = 1;
    public static final int NOTHING_TO_UNDO = 2;
    public static final int OPERATION_INVALID = 3;
    static String DEFAULT_PLUGIN_ID = "org.eclipse.core.commands";

    public OperationStatus(int severity, String pluginId, int code, String message, Throwable exception) {
        super(severity, pluginId, code, message, exception);
    }
}

