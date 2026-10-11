/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.update.internal.configurator;

import org.eclipse.osgi.util.NLS;

public final class Messages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.update.internal.configurator.messages";
    public static String cfig_unableToLoad_noURL;
    public static String cfig_unableToSave_noURL;
    public static String cfig_unableToSave;
    public static String InstalledSiteParser_UnableToCreateURL;
    public static String InstalledSiteParser_UnableToCreateURLForFile;
    public static String InstalledSiteParser_ErrorParsingFile;
    public static String InstalledSiteParser_ErrorAccessing;
    public static String InstalledSiteParser_date;
    public static String BundleManifest_noVersion;
    public static String FeatureParser_IdOrVersionInvalid;
    public static String BundleGroupProvider;
    public static String ConfigurationActivator_initialize;
    public static String ConfigurationActivator_createConfig;
    public static String ConfigurationActivator_uninstallBundle;
    public static String ConfigurationParser_cannotLoadSharedInstall;
    public static String ConfigurationActivator_installBundle;
    public static String PluginEntry_versionError;
    public static String IniFileReader_MissingDesc;
    public static String IniFileReader_OpenINIError;
    public static String IniFileReader_ReadIniError;
    public static String IniFileReader_ReadPropError;
    public static String IniFileReader_ReadMapError;
    public static String SiteEntry_computePluginStamp;
    public static String SiteEntry_cannotFindFeatureInDir;
    public static String SiteEntry_duplicateFeature;
    public static String SiteEntry_pluginsDir;
    public static String PlatformConfiguration_expectingPlatformXMLorDirectory;
    public static String PlatformConfiguration_cannotBackupConfig;
    public static String PlatformConfiguration_cannotCloseStream;
    public static String PlatformConfiguration_cannotCloseTempFile;
    public static String PlatformConfiguration_cannotRenameTempFile;
    public static String PlatformConfiguration_cannotLoadConfig;
    public static String PlatformConfiguration_cannotLoadDefaultSite;
    public static String PlatformConfiguration_cannotFindConfigFile;
    public static String PlatformConfiguration_cannotSaveNonExistingConfig;
    public static String PluginParser_plugin_no_id;
    public static String PluginParser_plugin_no_version;
    public static String XMLPrintHandler_unsupportedNodeType;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.update.internal.configurator.Messages");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }

    private Messages() {
    }
}

