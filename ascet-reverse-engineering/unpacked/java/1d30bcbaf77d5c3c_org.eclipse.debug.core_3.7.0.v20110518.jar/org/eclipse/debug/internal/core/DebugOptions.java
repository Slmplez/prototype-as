/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.debug.internal.core;

import org.eclipse.core.runtime.Platform;

public class DebugOptions {
    public static boolean DEBUG = false;
    public static boolean DEBUG_COMMANDS = false;
    public static boolean DEBUG_EVENTS = false;

    public static void initDebugOptions() {
        DEBUG = "true".equals(Platform.getDebugOption((String)"org.eclipse.debug.core/debug"));
        DEBUG_COMMANDS = DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.debug.core/debug/commands"));
        DEBUG_EVENTS = DEBUG && "true".equals(Platform.getDebugOption((String)"org.eclipse.debug.core/debug/events"));
    }
}

