/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.frameworkadmin.equinox;

import org.eclipse.osgi.util.NLS;

public class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.equinox.internal.frameworkadmin.equinox.messages";
    public static String exception_inputFileIsDirectory;
    public static String exception_fwConfigLocationName;
    public static String exception_failedToCreateDir;
    public static String exception_failedToRename;
    public static String exception_launcherLocationNotSet;
    public static String exception_noInstallArea;
    public static String exception_fileURLExpected;
    public static String exception_bundleManifest;
    public static String exception_createAbsoluteURI;
    public static String exception_nullConfigArea;
    public static String exception_noFrameworkLocation;
    public static String exception_errorSavingConfigIni;
    public static String log_configFile;
    public static String log_configProps;
    public static String log_renameSuccessful;
    public static String log_fwConfigSave;
    public static String log_launcherConfigSave;
    public static String log_shared_config_url;
    public static String log_shared_config_relative_url;
    public static String log_shared_config_file_missing;
    public static String log_failed_reading_properties;
    public static String log_failed_make_absolute;
    public static String log_failed_make_relative;
    public static String exception_unexpectedfwConfigLocation;
    public static String exception_persistantLocationNotEqualConfigLocation;
    public static String exception_noLocations;
    public static String exception_errorReadingFile;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.equinox.internal.frameworkadmin.equinox.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

