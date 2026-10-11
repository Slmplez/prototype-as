/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.PerformanceStats
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.ui.internal.misc;

import java.util.HashMap;
import org.eclipse.core.runtime.PerformanceStats;
import org.eclipse.core.runtime.Platform;

public class UIStats {
    private static HashMap operations = new HashMap();
    public static final int CREATE_PART = 0;
    public static final int CREATE_PART_CONTROL = 1;
    public static final int INIT_PART = 2;
    public static final int CREATE_PERSPECTIVE = 3;
    public static final int RESTORE_WORKBENCH = 4;
    public static final int START_WORKBENCH = 5;
    public static final int CREATE_PART_INPUT = 6;
    public static final int ACTIVATE_PART = 7;
    public static final int BRING_PART_TO_TOP = 8;
    public static final int NOTIFY_PART_LISTENERS = 9;
    public static final int SWITCH_PERSPECTIVE = 10;
    public static final int NOTIFY_PAGE_LISTENERS = 11;
    public static final int NOTIFY_PERSPECTIVE_LISTENERS = 12;
    public static final int UI_JOB = 13;
    public static final int CONTENT_TYPE_LOOKUP = 14;
    public static final int LAST_VALUE = 14;
    private static boolean[] debug = new boolean[15];
    private static String[] events = new String[15];

    static {
        UIStats.events[0] = "org.eclipse.ui/perf/part.create";
        UIStats.events[6] = "org.eclipse.ui/perf/part.input";
        UIStats.events[1] = "org.eclipse.ui/perf/part.control";
        UIStats.events[2] = "org.eclipse.ui/perf/part.init";
        UIStats.events[3] = "org.eclipse.ui/perf/perspective.create";
        UIStats.events[10] = "org.eclipse.ui/perf/perspective.switch";
        UIStats.events[4] = "org.eclipse.ui/perf/workbench.restore";
        UIStats.events[5] = "org.eclipse.ui/perf/workbench.start";
        UIStats.events[7] = "org.eclipse.ui/perf/part.activate";
        UIStats.events[8] = "org.eclipse.ui/perf/part.activate";
        UIStats.events[9] = "org.eclipse.ui/perf/part.listeners";
        UIStats.events[11] = "org.eclipse.ui/perf/page.listeners";
        UIStats.events[12] = "org.eclipse.ui/perf/perspective.listeners";
        UIStats.events[13] = "org.eclipse.ui/perf/uijob";
        UIStats.events[14] = "org.eclipse.ui/perf/contentTypes";
        int i = 0;
        while (i <= 14) {
            if (events[i] != null && PerformanceStats.ENABLED) {
                UIStats.debug[i] = PerformanceStats.isEnabled((String)events[i]);
            }
            ++i;
        }
    }

    public static boolean isDebugging(int event) {
        return debug[event];
    }

    public static void start(int event, String label) {
        if (debug[event]) {
            operations.put(String.valueOf(event) + label, new Long(System.currentTimeMillis()));
        }
    }

    public static void end(int event, Object blame, String label) {
        if (debug[event]) {
            Long startTime = (Long)operations.remove(String.valueOf(event) + label);
            if (startTime == null) {
                return;
            }
            long elapsed = System.currentTimeMillis() - startTime;
            PerformanceStats.getStats((String)events[event], (Object)blame).addRun(elapsed, label);
        }
    }

    public static void startupComplete() {
        String option = Platform.getDebugOption((String)"org.eclipse.core.runtime/debug");
        if (option == null || !"true".equalsIgnoreCase(option)) {
            return;
        }
        String startString = System.getProperty("eclipse.startTime");
        if (startString == null) {
            return;
        }
        try {
            long start = Long.parseLong(startString);
            long end = System.currentTimeMillis();
            System.out.println("Startup complete: " + (end - start) + "ms");
        }
        catch (NumberFormatException numberFormatException) {}
    }
}

