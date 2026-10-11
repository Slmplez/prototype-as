/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.internal.preferences.PreferencesService
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Plugin
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceRegistration
 */
package org.eclipse.core.resources;

import java.util.ArrayList;
import org.eclipse.core.internal.preferences.PreferencesService;
import org.eclipse.core.internal.resources.LocalMetaArea;
import org.eclipse.core.internal.resources.PlatformURLResourceConnection;
import org.eclipse.core.internal.resources.Workspace;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Plugin;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceRegistration;

public final class ResourcesPlugin
extends Plugin {
    public static final String PI_RESOURCES = "org.eclipse.core.resources";
    public static final String PT_BUILDERS = "builders";
    public static final String PT_NATURES = "natures";
    public static final String PT_MARKERS = "markers";
    public static final String PT_FILE_MODIFICATION_VALIDATOR = "fileModificationValidator";
    public static final String PT_MOVE_DELETE_HOOK = "moveDeleteHook";
    public static final String PT_TEAM_HOOK = "teamHook";
    public static final String PT_REFRESH_PROVIDERS = "refreshProviders";
    public static final String PT_MODEL_PROVIDERS = "modelProviders";
    public static final String PT_VARIABLE_PROVIDERS = "variableResolvers";
    public static final String PT_FILTER_MATCHERS = "filterMatchers";
    public static final Object FAMILY_AUTO_BUILD = new Object();
    public static final Object FAMILY_AUTO_REFRESH = new Object();
    public static final Object FAMILY_MANUAL_BUILD = new Object();
    public static final Object FAMILY_MANUAL_REFRESH = new Object();
    public static final String PREF_ENCODING = "encoding";
    private static final String PREF_DESCRIPTION_PREFIX = "description.";
    public static final String PREF_MAX_NOTIFICATION_DELAY = "maxnotifydelay";
    public static final String PREF_AUTO_BUILDING = "description.autobuilding";
    public static final String PREF_BUILD_ORDER = "description.buildorder";
    public static final String PREF_DEFAULT_BUILD_ORDER = "description.defaultbuildorder";
    public static final String PREF_MAX_BUILD_ITERATIONS = "description.maxbuilditerations";
    public static final String PREF_APPLY_FILE_STATE_POLICY = "description.applyfilestatepolicy";
    public static final String PREF_FILE_STATE_LONGEVITY = "description.filestatelongevity";
    public static final String PREF_MAX_FILE_STATE_SIZE = "description.maxfilestatesize";
    public static final String PREF_MAX_FILE_STATES = "description.maxfilestates";
    public static final String PREF_SNAPSHOT_INTERVAL = "description.snapshotinterval";
    public static final String PREF_DISABLE_LINKING = "description.disableLinking";
    public static final String PREF_AUTO_REFRESH = "refresh.enabled";
    public static final String PREF_LIGHTWEIGHT_AUTO_REFRESH = "refresh.lightweight.enabled";
    public static final String PREF_SEPARATE_DERIVED_ENCODINGS = "separateDerivedEncodings";
    private static ResourcesPlugin plugin;
    private static Workspace workspace;
    private ServiceRegistration<IWorkspace> workspaceRegistration;

    static {
        workspace = null;
    }

    public ResourcesPlugin() {
        plugin = this;
    }

    private static void constructWorkspace() throws CoreException {
        new LocalMetaArea().createMetaArea();
    }

    public static String getEncoding() {
        String enc = ResourcesPlugin.getPlugin().getPluginPreferences().getString(PREF_ENCODING);
        if (enc == null || enc.length() == 0) {
            enc = System.getProperty("file.encoding");
        }
        return enc;
    }

    public static ResourcesPlugin getPlugin() {
        return plugin;
    }

    public static IWorkspace getWorkspace() {
        if (workspace == null) {
            throw new IllegalStateException(Messages.resources_workspaceClosed);
        }
        return workspace;
    }

    public void stop(BundleContext context) throws Exception {
        super.stop(context);
        if (workspace == null) {
            return;
        }
        this.workspaceRegistration.unregister();
        ResourcesPlugin.getPlugin().savePluginPreferences();
        workspace.close(null);
        workspace = null;
        this.workspaceRegistration = null;
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        if (!new LocalMetaArea().hasSavedWorkspace()) {
            ResourcesPlugin.constructWorkspace();
        }
        Workspace.DEBUG = ResourcesPlugin.getPlugin().isDebugging();
        workspace = new Workspace();
        PlatformURLResourceConnection.startup(workspace.getRoot().getLocation());
        this.initializePreferenceLookupOrder();
        IStatus result = workspace.open(null);
        if (!result.isOK()) {
            this.getLog().log(result);
        }
        this.workspaceRegistration = context.registerService(IWorkspace.class, (Object)workspace, null);
    }

    private void initializePreferenceLookupOrder() {
        PreferencesService service = PreferencesService.getDefault();
        String[] original = service.getDefaultDefaultLookupOrder();
        ArrayList<String> newOrder = new ArrayList<String>();
        newOrder.add("project");
        String[] stringArray = original;
        int n = original.length;
        int n2 = 0;
        while (n2 < n) {
            String entry = stringArray[n2];
            newOrder.add(entry);
            ++n2;
        }
        service.setDefaultDefaultLookupOrder(newOrder.toArray(new String[newOrder.size()]));
    }
}

