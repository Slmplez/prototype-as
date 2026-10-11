/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.service.environment.EnvironmentInfo
 */
package org.eclipse.equinox.internal.app;

import org.eclipse.osgi.service.environment.EnvironmentInfo;

public class CommandLineArgs {
    private static final String NO_PACKAGE_PREFIXES = "-noPackagePrefixes";
    private static final String NO_UPDATE = "-noUpdate";
    private static final String BOOT = "-boot";
    private static final String CLASSLOADER_PROPERTIES = "-classloaderProperties";
    private static final String PLUGINS = "-plugins";
    private static final String FIRST_USE = "-firstUse";
    private static final String NEW_UPDATES = "-newUpdates";
    private static final String UPDATE = "-update";
    private static final String PASSWORD = "-password";
    private static final String KEYRING = "-keyring";
    private static final String PLUGIN_CUSTOMIZATION = "-pluginCustomization";
    private static final String PRODUCT = "-product";
    private static final String FEATURE = "-feature";
    private static final String APPLICATION = "-application";
    private static String[] appArgs = new String[0];
    private static String[] allArgs = new String[0];
    private static String product;
    private static String application;

    static String[] processCommandLine(EnvironmentInfo envInfo) {
        String[] args = envInfo.getNonFrameworkArgs();
        if (args == null) {
            return args;
        }
        if (args.length == 0) {
            return args;
        }
        allArgs = args;
        int[] configArgs = new int[args.length];
        configArgs[0] = -1;
        int configArgIndex = 0;
        int i = 0;
        while (i < args.length) {
            boolean found = false;
            if (args[i].equalsIgnoreCase(CLASSLOADER_PROPERTIES)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(NO_PACKAGE_PREFIXES)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(PLUGINS)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(FIRST_USE)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(NO_UPDATE)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(NEW_UPDATES)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(UPDATE)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(BOOT)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(KEYRING)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(PASSWORD)) {
                found = true;
            }
            if (args[i].equalsIgnoreCase(PLUGIN_CUSTOMIZATION)) {
                found = true;
            }
            if (found) {
                configArgs[configArgIndex++] = i;
                if (i < args.length - 1 && !args[i + 1].startsWith("-")) {
                    configArgs[configArgIndex++] = ++i;
                }
            } else if (i != args.length - 1 && !args[i + 1].startsWith("-")) {
                String arg = args[++i];
                if (args[i - 1].equalsIgnoreCase(PRODUCT) || args[i - 1].equalsIgnoreCase(FEATURE)) {
                    product = arg;
                    envInfo.setProperty("eclipse.product", product);
                    found = true;
                }
                if (args[i - 1].equalsIgnoreCase(APPLICATION)) {
                    application = arg;
                    envInfo.setProperty("eclipse.application", application);
                    found = true;
                }
                if (found) {
                    configArgs[configArgIndex++] = i - 1;
                    configArgs[configArgIndex++] = i;
                }
            }
            ++i;
        }
        if (configArgIndex == 0) {
            appArgs = args;
            return args;
        }
        appArgs = new String[args.length - configArgIndex];
        configArgIndex = 0;
        int j = 0;
        int i2 = 0;
        while (i2 < args.length) {
            if (i2 == configArgs[configArgIndex]) {
                ++configArgIndex;
            } else {
                CommandLineArgs.appArgs[j++] = args[i2];
            }
            ++i2;
        }
        return appArgs;
    }

    static String getApplication() {
        return application;
    }

    static String getProduct() {
        return product;
    }

    public static String[] getApplicationArgs() {
        return appArgs;
    }

    public static String[] getAllArgs() {
        return allArgs;
    }
}

