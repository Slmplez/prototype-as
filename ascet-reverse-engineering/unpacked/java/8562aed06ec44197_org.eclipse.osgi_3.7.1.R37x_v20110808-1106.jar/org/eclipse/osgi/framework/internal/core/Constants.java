/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.osgi.framework.internal.core;

public class Constants
implements org.osgi.framework.Constants {
    public static final String OSGI_FRAMEWORK_VERSION = "1.3";
    public static final String OSGI_FRAMEWORK_VENDOR = "Eclipse";
    public static final String OSGI_BUNDLE_MANIFEST = "META-INF/MANIFEST.MF";
    public static final String OSGI_FRAMEWORK_PACKAGE = "org.osgi.framework";
    public static final String OSGI_RESOURCE_URL_PROTOCOL = "bundleresource";
    public static final String OSGI_ENTRY_URL_PROTOCOL = "bundleentry";
    public static final String OSGI_PROCESSOR_ALIASES = "processor.aliases";
    public static final String OSGI_OSNAME_ALIASES = "osname.aliases";
    public static final String OSGI_DEFAULT_DEFAULT_PERMISSIONS = "default.permissions";
    public static final String OSGI_BASE_IMPLIED_PERMISSIONS = "implied.permissions";
    public static final String OSGI_LOGSERVICE_NAME = "org.osgi.service.log.LogService";
    public static final String OSGI_PACKAGEADMIN_NAME = "org.osgi.service.packageadmin.PackageAdmin";
    public static final String OSGI_PERMISSIONADMIN_NAME = "org.osgi.service.permissionadmin.PermissionAdmin";
    public static final String OSGI_STARTLEVEL_NAME = "org.osgi.service.startlevel.StartLevel";
    public static final String JVM_VM_NAME = "java.vm.name";
    public static final String JVM_OS_ARCH = "os.arch";
    public static final String JVM_OS_NAME = "os.name";
    public static final String JVM_OS_VERSION = "os.version";
    public static final String JVM_USER_LANGUAGE = "user.language";
    public static final String JVM_USER_REGION = "user.region";
    public static final String J2ME_MICROEDITION_CONFIGURATION = "microedition.configuration";
    public static final String J2ME_MICROEDITION_PROFILES = "microedition.profiles";
    public static final int BUNDLE_STARTED = 1;
    public static final int BUNDLE_LAZY_START = 2;
    public static final int BUNDLE_ACTIVATION_POLICY = 4;
    public static final String OSGI_PROPERTIES = "osgi.framework.properties";
    public static final String DEFAULT_OSGI_PROPERTIES = "osgi.properties";
    private static String INTERNAL_SYSTEM_BUNDLE = "org.eclipse.osgi";
    public static final String OSGI_IMPL_VERSION_KEY = "osgi.framework.version";
    public static final String OSGI_JAVA_PROFILE = "osgi.java.profile";
    public static final String OSGI_JAVA_PROFILE_NAME = "osgi.java.profile.name";
    public static final String OSGI_JAVA_PROFILE_BOOTDELEGATION = "osgi.java.profile.bootdelegation";
    public static final String OSGI_BOOTDELEGATION_IGNORE = "ignore";
    public static final String OSGI_BOOTDELEGATION_OVERRIDE = "override";
    public static final String OSGI_BOOTDELEGATION_NONE = "none";
    public static final String OSGI_RESOLVER_MODE = "osgi.resolverMode";
    public static final String STRICT_MODE = "strict";
    public static final String DEVELOPMENT_MODE = "development";
    public static final String STATE_SYSTEM_BUNDLE = "osgi.system.bundle";
    public static final String PROP_OSGI_RELAUNCH = "osgi.framework.relaunch";
    public static String OSGI_COMPATIBILITY_BOOTDELEGATION = "osgi.compatibility.bootdelegation";
    public static final String ECLIPSE_SYSTEMBUNDLE = "Eclipse-SystemBundle";
    public static final String ECLIPSE_PLATFORMFILTER = "Eclipse-PlatformFilter";
    public static final String Eclipse_JREBUNDLE = "Eclipse-JREBundle";
    public static final String INTERNAL_DIRECTIVE = "x-internal";
    public static final String FRIENDS_DIRECTIVE = "x-friends";
    public static final String PROVIDE_PACKAGE = "Provide-Package";
    public static final String REPROVIDE_ATTRIBUTE = "reprovide";
    public static final String OPTIONAL_ATTRIBUTE = "optional";
    public static final String BUDDY_LOADER = "Eclipse-BuddyPolicy";
    public static final String REGISTERED_POLICY = "Eclipse-RegisterBuddy";
    public static final String INTERNAL_HANDLER_PKGS = "equinox.interal.handler.pkgs";
    public static final String PLUGIN_CLASS = "Plugin-Class";
    public static final String ECLIPSE_LAZYSTART = "Eclipse-LazyStart";
    public static final String ECLIPSE_LAZYSTART_EXCEPTIONS = "exceptions";
    public static final String ECLIPSE_AUTOSTART = "Eclipse-AutoStart";
    public static final String ECLIPSE_AUTOSTART_EXCEPTIONS = "exceptions";
    public static final String REFRESH_DUPLICATE_BSN = "equinox.refresh.duplicate.bsn";

    public static String getInternalSymbolicName() {
        return INTERNAL_SYSTEM_BUNDLE;
    }

    static void setInternalSymbolicName(String name) {
        INTERNAL_SYSTEM_BUNDLE = name;
    }
}

