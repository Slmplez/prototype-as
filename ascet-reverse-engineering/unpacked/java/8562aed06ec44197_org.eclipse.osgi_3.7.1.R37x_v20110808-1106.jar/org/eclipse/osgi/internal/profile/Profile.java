/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.internal.profile;

import org.eclipse.osgi.framework.debug.FrameworkDebugOptions;
import org.eclipse.osgi.framework.internal.core.FrameworkProperties;
import org.eclipse.osgi.internal.profile.DefaultProfileLogger;
import org.eclipse.osgi.internal.profile.ProfileLogger;

public class Profile {
    public static final boolean PROFILE = true;
    public static boolean STARTUP = false;
    public static boolean BENCHMARK = false;
    public static boolean DEBUG = false;
    private static final String OSGI_PROP = "osgi.profile.";
    private static final String PROP_STARTUP = "osgi.profile.startup";
    private static final String PROP_BENCHMARK = "osgi.profile.benchmark";
    private static final String PROP_DEBUG = "osgi.profile.debug";
    private static final String PROP_IMPL = "osgi.profile.impl";
    private static final String OSGI_OPTION = "org.eclipse.osgi/profile/";
    private static final String OPTION_STARTUP = "org.eclipse.osgi/profile/startup";
    private static final String OPTION_BENCHMARK = "org.eclipse.osgi/profile/benchmark";
    private static final String OPTION_DEBUG = "org.eclipse.osgi/profile/debug";
    private static final String OPTION_IMPL = "org.eclipse.osgi/profile/impl";
    public static final int FLAG_NONE = 0;
    public static final int FLAG_ENTER = 1;
    public static final int FLAG_EXIT = 2;
    public static final String ENTER_DESCRIPTION = "enter";
    public static final String EXIT_DESCRIPTION = "exit";
    private static ProfileLogger profileLogger = null;
    private static String profileLoggerClassName = null;

    static {
        Profile.initProps();
    }

    public static void initProps() {
        String prop;
        FrameworkDebugOptions dbgOptions = null;
        if (FrameworkProperties.getProperty("osgi.debug") != null && (dbgOptions = FrameworkDebugOptions.getDefault()) != null) {
            STARTUP = dbgOptions.getBooleanOption(OPTION_STARTUP, false);
            BENCHMARK = dbgOptions.getBooleanOption(OPTION_BENCHMARK, false);
            DEBUG = dbgOptions.getBooleanOption(OPTION_DEBUG, false);
            if (profileLogger == null) {
                profileLoggerClassName = dbgOptions.getOption(OPTION_IMPL);
            }
        }
        if ((prop = FrameworkProperties.getProperty(PROP_STARTUP)) != null) {
            STARTUP = Boolean.valueOf(prop);
            if (dbgOptions != null) {
                dbgOptions.setOption(OPTION_STARTUP, new Boolean(STARTUP).toString());
            }
        }
        if ((prop = FrameworkProperties.getProperty(PROP_BENCHMARK)) != null) {
            BENCHMARK = Boolean.valueOf(prop);
            if (dbgOptions != null) {
                dbgOptions.setOption(OPTION_BENCHMARK, new Boolean(BENCHMARK).toString());
            }
        }
        if ((prop = FrameworkProperties.getProperty(PROP_DEBUG)) != null) {
            DEBUG = Boolean.valueOf(prop);
            if (dbgOptions != null) {
                dbgOptions.setOption(OPTION_DEBUG, new Boolean(DEBUG).toString());
            }
        }
        if (profileLogger == null) {
            prop = FrameworkProperties.getProperty(PROP_IMPL);
            if (prop != null) {
                profileLoggerClassName = prop;
                if (dbgOptions != null) {
                    dbgOptions.setOption(OPTION_IMPL, profileLoggerClassName);
                }
            }
        } else {
            profileLogger.initProps();
        }
    }

    public static void logEnter(String id) {
        Profile.logTime(1, id, ENTER_DESCRIPTION, null);
    }

    public static void logEnter(String id, String description) {
        Profile.logTime(1, id, ENTER_DESCRIPTION, description);
    }

    public static void logExit(String id) {
        Profile.logTime(2, id, EXIT_DESCRIPTION, null);
    }

    public static void logExit(String id, String description) {
        Profile.logTime(2, id, EXIT_DESCRIPTION, description);
    }

    public static void logTime(String id, String msg) {
        Profile.logTime(0, id, msg, null);
    }

    public static void logTime(String id, String msg, String description) {
        Profile.logTime(0, id, msg, description);
    }

    public static void logTime(int flag, String id, String msg, String description) {
        if (profileLogger == null) {
            profileLogger = Profile.createProfileLogger();
        }
        profileLogger.logTime(flag, id, msg, description);
    }

    public static void accumLogEnter(String scope) {
        if (profileLogger == null) {
            profileLogger = Profile.createProfileLogger();
        }
        profileLogger.accumLogEnter(scope);
    }

    public static void accumLogExit(String scope) {
        if (profileLogger == null) {
            profileLogger = Profile.createProfileLogger();
        }
        profileLogger.accumLogExit(scope);
    }

    public static String getProfileLog() {
        if (profileLogger != null) {
            return profileLogger.getProfileLog();
        }
        return "";
    }

    private static ProfileLogger createProfileLogger() {
        ProfileLogger result = null;
        if (profileLoggerClassName != null) {
            Class<?> profileImplClass = null;
            try {
                profileImplClass = Class.forName(profileLoggerClassName);
                result = (ProfileLogger)profileImplClass.newInstance();
            }
            catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (result == null) {
            result = new DefaultProfileLogger();
        }
        return result;
    }
}

