/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.swt.graphics.Device
 */
package org.eclipse.ui.internal.misc;

import org.eclipse.core.runtime.Platform;
import org.eclipse.swt.graphics.Device;

public class Policy {
    public static boolean DEFAULT;
    public static boolean DEBUG_UI_GLOBAL;
    public static boolean DEBUG_SWT_GRAPHICS;
    public static boolean DEBUG_SWT_DEBUG;
    public static boolean DEBUG_SWT_DEBUG_GLOBAL;
    public static boolean DEBUG_DRAG_DROP;
    public static boolean DEBUG_PERSPECTIVES;
    public static boolean DEBUG_STALE_JOBS;
    public static boolean DEBUG_SOURCES;
    public static boolean DEBUG_KEY_BINDINGS;
    public static boolean DEBUG_KEY_BINDINGS_VERBOSE;
    public static boolean DEBUG_TOOLBAR_DISPOSAL;
    public static boolean DEBUG_COMMANDS;
    public static boolean DEBUG_CONTEXTS;
    public static boolean DEBUG_CONTEXTS_PERFORMANCE;
    public static boolean DEBUG_CONTEXTS_VERBOSE;
    public static boolean DEBUG_HANDLERS;
    public static boolean DEBUG_HANDLERS_PERFORMANCE;
    public static boolean DEBUG_HANDLERS_VERBOSE;
    public static boolean DEBUG_OPERATIONS;
    public static boolean DEBUG_OPERATIONS_VERBOSE;
    public static boolean DEBUG_SHOW_ALL_JOBS;
    public static boolean DEBUG_DECLARED_IMAGES;
    public static boolean DEBUG_CONTRIBUTIONS;
    public static String DEBUG_HANDLERS_VERBOSE_COMMAND_ID;
    public static boolean EXPERIMENTAL_MENU;
    public static boolean DEBUG_MPE;
    public static boolean DEBUG_WORKING_SETS;

    static {
        DEBUG_UI_GLOBAL = DEFAULT = false;
        DEBUG_SWT_GRAPHICS = DEFAULT;
        DEBUG_SWT_DEBUG = DEFAULT;
        DEBUG_SWT_DEBUG_GLOBAL = DEFAULT;
        DEBUG_DRAG_DROP = DEFAULT;
        DEBUG_PERSPECTIVES = DEFAULT;
        DEBUG_STALE_JOBS = DEFAULT;
        DEBUG_SOURCES = DEFAULT;
        DEBUG_KEY_BINDINGS = DEFAULT;
        DEBUG_KEY_BINDINGS_VERBOSE = DEFAULT;
        DEBUG_TOOLBAR_DISPOSAL = DEFAULT;
        DEBUG_COMMANDS = DEFAULT;
        DEBUG_CONTEXTS = DEFAULT;
        DEBUG_CONTEXTS_PERFORMANCE = DEFAULT;
        DEBUG_CONTEXTS_VERBOSE = DEFAULT;
        DEBUG_HANDLERS = DEFAULT;
        DEBUG_HANDLERS_PERFORMANCE = DEFAULT;
        DEBUG_HANDLERS_VERBOSE = DEFAULT;
        DEBUG_OPERATIONS = DEFAULT;
        DEBUG_OPERATIONS_VERBOSE = DEFAULT;
        DEBUG_SHOW_ALL_JOBS = DEFAULT;
        DEBUG_DECLARED_IMAGES = DEFAULT;
        DEBUG_CONTRIBUTIONS = DEFAULT;
        DEBUG_HANDLERS_VERBOSE_COMMAND_ID = null;
        EXPERIMENTAL_MENU = DEFAULT;
        DEBUG_MPE = DEFAULT;
        DEBUG_WORKING_SETS = DEFAULT;
        if (Policy.getDebugOption("/debug")) {
            DEBUG_UI_GLOBAL = true;
            DEBUG_SWT_GRAPHICS = Policy.getDebugOption("/trace/graphics");
            DEBUG_PERSPECTIVES = Policy.getDebugOption("/trace/perspectives");
            DEBUG_SWT_DEBUG = Policy.getDebugOption("/debug/swtdebug");
            DEBUG_SWT_DEBUG_GLOBAL = Policy.getDebugOption("/debug/swtdebugglobal");
            DEBUG_DRAG_DROP = Policy.getDebugOption("/trace/dragDrop");
            DEBUG_SOURCES = Policy.getDebugOption("/trace/sources");
            DEBUG_KEY_BINDINGS = Policy.getDebugOption("/trace/keyBindings");
            DEBUG_KEY_BINDINGS_VERBOSE = Policy.getDebugOption("/trace/keyBindings.verbose");
            DEBUG_TOOLBAR_DISPOSAL = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/trace/toolbarDisposal"));
            DEBUG_COMMANDS = Policy.getDebugOption("/trace/commands");
            DEBUG_CONTEXTS = Policy.getDebugOption("/trace/contexts");
            DEBUG_CONTEXTS_PERFORMANCE = Policy.getDebugOption("/trace/contexts.performance");
            DEBUG_CONTEXTS_VERBOSE = Policy.getDebugOption("/trace/contexts.verbose");
            DEBUG_HANDLERS = Policy.getDebugOption("/trace/handlers");
            DEBUG_HANDLERS_PERFORMANCE = Policy.getDebugOption("/trace/handlers.performance");
            DEBUG_HANDLERS_VERBOSE = Policy.getDebugOption("/trace/handlers.verbose");
            DEBUG_OPERATIONS = Policy.getDebugOption("/trace/operations");
            DEBUG_OPERATIONS_VERBOSE = Policy.getDebugOption("/trace/operations.verbose");
            DEBUG_SHOW_ALL_JOBS = Policy.getDebugOption("/debug/showAllJobs");
            DEBUG_STALE_JOBS = Policy.getDebugOption("/debug/job.stale");
            DEBUG_HANDLERS_VERBOSE_COMMAND_ID = Platform.getDebugOption((String)"org.eclipse.ui/trace/handlers.verbose.commandId");
            if ("".equals(DEBUG_HANDLERS_VERBOSE_COMMAND_ID)) {
                DEBUG_HANDLERS_VERBOSE_COMMAND_ID = null;
            }
            DEBUG_DECLARED_IMAGES = Policy.getDebugOption("/debug/declaredImages");
            DEBUG_CONTRIBUTIONS = Policy.getDebugOption("/debug/contributions");
            EXPERIMENTAL_MENU = Policy.getDebugOption("/experimental/menus");
            DEBUG_MPE = Policy.getDebugOption("/trace/multipageeditor");
            DEBUG_WORKING_SETS = Policy.getDebugOption("/debug/workingSets");
            if (DEBUG_SWT_DEBUG_GLOBAL) {
                Device.DEBUG = true;
            }
        }
    }

    private static boolean getDebugOption(String option) {
        return "true".equalsIgnoreCase(Platform.getDebugOption((String)("org.eclipse.ui" + option)));
    }
}

