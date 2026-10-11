/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.debug.DebugOptions
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.util.Date;
import org.eclipse.equinox.internal.p2.core.Activator;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.osgi.service.debug.DebugOptions;

public class Tracing {
    public static boolean DEBUG;
    public static boolean DEBUG_GENERATOR_PARSING;
    public static boolean DEBUG_INSTALL_REGISTRY;
    public static boolean DEBUG_METADATA_PARSING;
    public static boolean DEBUG_MIRRORS;
    public static boolean DEBUG_PARSE_PROBLEMS;
    public static boolean DEBUG_PLANNER_OPERANDS;
    public static boolean DEBUG_PLANNER_PROJECTOR;
    public static boolean DEBUG_PROFILE_PREFERENCES;
    public static boolean DEBUG_PUBLISHING;
    public static boolean DEBUG_RECONCILER;
    public static boolean DEBUG_REMOVE_REPO;
    public static boolean DEBUG_UPDATE_CHECK;
    public static boolean DEBUG_EVENTS_CLIENT;
    public static boolean DEBUG_DEFAULT_UI;
    static /* synthetic */ Class class$0;

    static {
        DebugOptions options;
        DEBUG = false;
        DEBUG_GENERATOR_PARSING = false;
        DEBUG_INSTALL_REGISTRY = false;
        DEBUG_METADATA_PARSING = false;
        DEBUG_MIRRORS = false;
        DEBUG_PARSE_PROBLEMS = false;
        DEBUG_PLANNER_OPERANDS = false;
        DEBUG_PLANNER_PROJECTOR = false;
        DEBUG_PROFILE_PREFERENCES = false;
        DEBUG_PUBLISHING = false;
        DEBUG_RECONCILER = false;
        DEBUG_REMOVE_REPO = false;
        DEBUG_UPDATE_CHECK = false;
        DEBUG_EVENTS_CLIENT = false;
        DEBUG_DEFAULT_UI = false;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.debug.DebugOptions");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((options = (DebugOptions)ServiceHelper.getService(Activator.context, clazz.getName())) != null && (DEBUG = options.getBooleanOption("org.eclipse.equinox.p2.core/debug", false))) {
            DEBUG_EVENTS_CLIENT = options.getBooleanOption("org.eclipse.equinox.p2.core/events/client", false);
            DEBUG_GENERATOR_PARSING = options.getBooleanOption("org.eclipse.equinox.p2.core/generator/parsing", false);
            DEBUG_INSTALL_REGISTRY = options.getBooleanOption("org.eclipse.equinox.p2.core/engine/installregistry", false);
            DEBUG_METADATA_PARSING = options.getBooleanOption("org.eclipse.equinox.p2.core/metadata/parsing", false);
            DEBUG_MIRRORS = options.getBooleanOption("org.eclipse.equinox.p2.core/artifacts/mirrors", false);
            DEBUG_PARSE_PROBLEMS = options.getBooleanOption("org.eclipse.equinox.p2.core/core/parseproblems", false);
            DEBUG_PLANNER_OPERANDS = options.getBooleanOption("org.eclipse.equinox.p2.core/planner/operands", false);
            DEBUG_PLANNER_PROJECTOR = options.getBooleanOption("org.eclipse.equinox.p2.core/planner/projector", false);
            DEBUG_PROFILE_PREFERENCES = options.getBooleanOption("org.eclipse.equinox.p2.core/engine/profilepreferences", false);
            DEBUG_PUBLISHING = options.getBooleanOption("org.eclipse.equinox.p2.core/publisher", false);
            DEBUG_RECONCILER = options.getBooleanOption("org.eclipse.equinox.p2.core/reconciler", false);
            DEBUG_REMOVE_REPO = options.getBooleanOption("org.eclipse.equinox.p2.core/core/removeRepo", false);
            DEBUG_UPDATE_CHECK = options.getBooleanOption("org.eclipse.equinox.p2.core/updatechecker", false);
            DEBUG_DEFAULT_UI = options.getBooleanOption("org.eclipse.equinox.p2.core/ui/default", false);
        }
    }

    public static void debug(String message) {
        StringBuffer buffer = new StringBuffer();
        buffer.append("[p2] ");
        buffer.append(new Date(System.currentTimeMillis()));
        buffer.append(" - [");
        buffer.append(Thread.currentThread().getName());
        buffer.append("] ");
        buffer.append(message);
        System.out.println(buffer.toString());
    }
}

