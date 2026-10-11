/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 */
package org.eclipse.pde.internal.core;

import java.util.Locale;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;

public interface ICoreConstants {
    public static final String PLATFORM_PATH = "platform_path";
    public static final String SAVED_PLATFORM = "saved_platform";
    public static final String TARGET_MODE = "target_mode";
    public static final String VALUE_USE_THIS = "useThis";
    public static final String VALUE_USE_OTHER = "useOther";
    public static final String CHECKED_PLUGINS = "checkedPlugins";
    public static final String VALUE_SAVED_NONE = "[savedNone]";
    public static final String VALUE_SAVED_ALL = "[savedAll]";
    public static final String VALUE_SAVED_SOME = "savedSome";
    public static final String P_SOURCE_LOCATIONS = "source_locations";
    public static final String P_EXT_LOCATIONS = "ext_locations";
    public static final String PROGRAM_ARGS = "program_args";
    public static final String VM_ARGS = "vm_args";
    public static final String VM_LAUNCHER_INI = "vm_launcher_ini";
    public static final String IMPLICIT_DEPENDENCIES = "implicit_dependencies";
    public static final String GROUP_PLUGINS_VIEW = "group_plugins";
    public static final String ADDITIONAL_LOCATIONS = "additional_locations";
    public static final String TARGET_PLATFORM_REALIZATION = "target_platform_realization";
    public static final String POOLED_BUNDLES = "pooled_bundles";
    public static final String POOLED_URLS = "pooled_urls";
    public static final String EXTERNAL_FEATURES = "external_features";
    public static final String CHECKED_VERSION_PLUGINS = "checkedVersionPlugins";
    public static final String OS = "org.eclipse.pde.ui.os";
    public static final String WS = "org.eclipse.pde.ui.ws";
    public static final String NL = "org.eclipse.pde.ui.nl";
    public static final String ARCH = "org.eclipse.pde.ui.arch";
    public static final String OS_EXTRA = "org.eclipse.pde.os.extra";
    public static final String WS_EXTRA = "org.eclipse.pde.ws.extra";
    public static final String NL_EXTRA = "org.eclipse.pde.nl.extra";
    public static final String ARCH_EXTRA = "org.eclipse.pde.arch.extra";
    public static final String TARGET_JRE = "targetJRE";
    public static final String EXTENSION_NAME = "extension";
    public static final String PLUGIN_FILENAME_DESCRIPTOR = "plugin.xml";
    public static final String FEATURE_FILENAME_DESCRIPTOR = "feature.xml";
    public static final String FRAGMENT_FILENAME_DESCRIPTOR = "fragment.xml";
    public static final String BUNDLE_FILENAME_DESCRIPTOR = "META-INF/MANIFEST.MF";
    public static final String MANIFEST_FILENAME = "MANIFEST.MF";
    public static final String OPTIONS_FILENAME = ".options";
    public static final String MANIFEST_FILENAME_LOWER_CASE = "MANIFEST.MF".toLowerCase(Locale.ENGLISH);
    public static final String BUILD_FILENAME_DESCRIPTOR = "build.properties";
    public static final String TARGET30 = "3.0";
    public static final String TARGET31 = "3.1";
    public static final String TARGET32 = "3.2";
    public static final String TARGET33 = "3.3";
    public static final String TARGET34 = "3.4";
    public static final String TARGET35 = "3.5";
    public static final String TARGET36 = "3.6";
    public static final String TARGET37 = "3.7";
    public static final String EQUINOX = "Equinox";
    public static final String SELFHOSTING_BIN_EXCLUDES = "selfhosting.binExcludes";
    public static final String EQUINOX_PROPERTY = "pluginProject.equinox";
    public static final String EXTENSIONS_PROPERTY = "pluginProject.extensions";
    public static final String RESOLVE_WITH_REQUIRE_BUNDLE = "resolve.requirebundle";
    public static final String TARGET_PROFILE = "target.profile";
    public static final String MANIFEST_LAUNCH_SHORTCUTS = "manifest.launchShortcuts";
    public static final String MANIFEST_EXPORT_WIZARD = "manifest.exportWizard";
    public static final String PROVIDE_PACKAGE = "Provide-Package";
    public static final String REPROVIDE_ATTRIBUTE = "reprovide";
    public static final String OPTIONAL_ATTRIBUTE = "optional";
    public static final String REQUIRE_PACKAGES_ATTRIBUTE = "require-packages";
    public static final String SINGLETON_ATTRIBUTE = "singleton";
    public static final String PACKAGE_SPECIFICATION_VERSION = "specification-version";
    public static final String IMPORT_SERVICE = "Import-Service";
    public static final String EXPORT_SERVICE = "Export-Service";
    public static final String EXTENSIBLE_API = "Eclipse-ExtensibleAPI";
    public static final String PATCH_FRAGMENT = "Eclipse-PatchFragment";
    public static final String PLUGIN_CLASS = "Plugin-Class";
    public static final String ECLIPSE_AUTOSTART = "Eclipse-AutoStart";
    public static final String ECLIPSE_LAZYSTART = "Eclipse-LazyStart";
    public static final String ECLIPSE_JREBUNDLE = "Eclipse-JREBundle";
    public static final String ECLIPSE_BUDDY_POLICY = "Eclipse-BuddyPolicy";
    public static final String ECLIPSE_REGISTER_BUDDY = "Eclipse-RegisterBuddy";
    public static final String ECLIPSE_GENERIC_CAPABILITY = "Eclipse-GenericCapabilty";
    public static final String ECLIPSE_GENERIC_REQUIRED = "Eclipse-GenericRequire";
    public static final String PLATFORM_FILTER = "Eclipse-PlatformFilter";
    public static final String ECLIPSE_SOURCE_BUNDLE = "Eclipse-SourceBundle";
    public static final String ECLIPSE_SYSTEM_BUNDLE = "Eclipse-SystemBundle";
    public static final String ECLIPSE_BUNDLE_SHAPE = "Eclipse-BundleShape";
    public static final String ECLIPSE_SOURCE_REFERENCES = "Eclipse-SourceReferences";
    public static final String SERVICE_COMPONENT = "Service-Component";
    public static final String OSGI_SYSTEM_BUNDLE = "osgi.system.bundle";
    public static final String OSGI_OS = "osgi.os";
    public static final String OSGI_WS = "osgi.ws";
    public static final String OSGI_NL = "osgi.nl";
    public static final String OSGI_ARCH = "osgi.arch";
    public static final String OSGI_RESOLVE_OPTIONAL = "osgi.resolveOptional";
    public static final String OSGI_RESOLVER_MODE = "osgi.resolverMode";
    public static final String INTERNAL_DIRECTIVE = "x-internal";
    public static final String FRIENDS_DIRECTIVE = "x-friends";
    public static final String SHAPE_JAR = "jar";
    public static final String SHAPE_DIR = "dir";
    public static final String[] SHAPE_VALUES = new String[]{"dir", "jar"};
    public static final String[] TRANSLATABLE_HEADERS = new String[]{"Bundle-Vendor", "Bundle-Name", "Bundle-Description", "Bundle-Copyright", "Bundle-Category", "Bundle-ContactAddress"};
    public static final String[] EE_TOKENS = new String[]{"wassim", "zx", "bbauman", "cherie", "jlb", "cwindatt"};
    public static final String MANIFEST_FOLDER_NAME = "META-INF/";
    public static final String OSGI_INF_FOLDER_NAME = "OSGI-INF/";
    public static final String FEATURE_FOLDER_NAME = "features";
    public static final IPath MANIFEST_PATH = new Path("META-INF/MANIFEST.MF");
    public static final IPath PLUGIN_PATH = new Path("plugin.xml");
    public static final IPath FRAGMENT_PATH = new Path("fragment.xml");
    public static final IPath FEATURE_PATH = new Path("feature.xml");
    public static final IPath BUILD_PROPERTIES_PATH = new Path("build.properties");
    public static final IPath OSGI_INF_PATH = new Path("OSGI-INF/");
    public static final String EXTENSION_POINT_SOURCE = "org.eclipse.pde.core.source";
    public static final String EXTENSION_POINT_BUNDLE_IMPORTERS = "org.eclipse.pde.core.bundleImporters";
    public static final String TARGET_FILE_EXTENSION = "target";
    public static final String WORKSPACE_TARGET_HANDLE = "workspace_target_handle";
    public static final String NO_TARGET = "NO_TARGET";
    public static final String UTF_8 = "UTF-8";
}

