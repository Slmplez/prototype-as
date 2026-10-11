/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.jface.preference.IPreferenceStore
 */
package org.eclipse.ui.internal;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.HashMap;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IFileEditorMapping;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.decorators.DecoratorManager;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.util.PrefUtil;

public class PlatformUIPreferenceListener
implements IEclipsePreferences.IPreferenceChangeListener {
    private static PlatformUIPreferenceListener singleton;

    public static IEclipsePreferences.IPreferenceChangeListener getSingleton() {
        if (singleton == null) {
            singleton = new PlatformUIPreferenceListener();
        }
        return singleton;
    }

    public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
        block27: {
            IEditorRegistry registry;
            String propertyName = event.getKey();
            if ("ENABLED_DECORATORS".equals(propertyName)) {
                DecoratorManager manager = WorkbenchPlugin.getDefault().getDecoratorManager();
                manager.applyDecoratorsPreference();
                manager.clearCaches();
                manager.updateForEnablementChange();
                return;
            }
            if ("SHOW_SYSTEM_JOBS".equals(propertyName)) {
                boolean setting = PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_SYSTEM_JOBS");
                ProgressManager.getInstance().setShowSystemJobs(setting);
            }
            if ("defaultPerspectiveId".equals(propertyName)) {
                IWorkbench workbench = PlatformUI.getWorkbench();
                workbench.getPerspectiveRegistry().setDefaultPerspective(PrefUtil.getAPIPreferenceStore().getString("defaultPerspectiveId"));
                return;
            }
            if ("DOCK_PERSPECTIVE_BAR".equals(propertyName)) {
                IPreferenceStore apiStore = PrefUtil.getAPIPreferenceStore();
                IWorkbench workbench = PlatformUI.getWorkbench();
                IWorkbenchWindow[] workbenchWindows = workbench.getWorkbenchWindows();
                int i = 0;
                while (i < workbenchWindows.length) {
                    IWorkbenchWindow window = workbenchWindows[i];
                    if (window instanceof WorkbenchWindow) {
                        ((WorkbenchWindow)window).setPerspectiveBarLocation(apiStore.getString("DOCK_PERSPECTIVE_BAR"));
                    }
                    ++i;
                }
                return;
            }
            if ("SHOW_TRADITIONAL_STYLE_TABS".equals(propertyName)) {
                boolean newValue = PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_TRADITIONAL_STYLE_TABS");
                IWorkbench workbench = PlatformUI.getWorkbench();
                IWorkbenchWindow[] workbenchWindows = workbench.getWorkbenchWindows();
                int i = 0;
                while (i < workbenchWindows.length) {
                    IWorkbenchWindow window = workbenchWindows[i];
                    if (window instanceof WorkbenchWindow) {
                        ((WorkbenchWindow)window).setBannerCurve(newValue);
                    }
                    ++i;
                }
                return;
            }
            if ("resourcetypes".equals(propertyName) && (registry = WorkbenchPlugin.getDefault().getEditorRegistry()) instanceof EditorRegistry) {
                EditorRegistry editorRegistry = (EditorRegistry)registry;
                IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
                Reader reader = null;
                try {
                    try {
                        String xmlString = store.getString("resourcetypes");
                        if (xmlString != null && xmlString.length() > 0) {
                            IEditorDescriptor descriptor;
                            reader = new StringReader(xmlString);
                            HashMap<String, IEditorDescriptor> editorMap = new HashMap<String, IEditorDescriptor>();
                            int i = 0;
                            IEditorDescriptor[] descriptors = editorRegistry.getSortedEditorsFromPlugins();
                            i = 0;
                            while (i < descriptors.length) {
                                descriptor = descriptors[i];
                                editorMap.put(descriptor.getId(), descriptor);
                                ++i;
                            }
                            descriptors = editorRegistry.getSortedEditorsFromOS();
                            i = 0;
                            while (i < descriptors.length) {
                                descriptor = descriptors[i];
                                editorMap.put(descriptor.getId(), descriptor);
                                ++i;
                            }
                            IFileEditorMapping[] maps = editorRegistry.getFileEditorMappings();
                            int j = 0;
                            while (j < maps.length) {
                                IFileEditorMapping fileEditorMapping = maps[j];
                                IEditorDescriptor descriptor2 = fileEditorMapping.getDefaultEditor();
                                if (descriptor2 != null && !editorMap.containsKey(descriptor2.getId())) {
                                    editorMap.put(descriptor2.getId(), descriptor2);
                                }
                                ++j;
                            }
                            editorRegistry.readResources(editorMap, reader);
                        }
                    }
                    catch (WorkbenchException e) {
                        e.printStackTrace();
                        if (reader == null) break block27;
                        try {
                            reader.close();
                        }
                        catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
                finally {
                    if (reader != null) {
                        try {
                            reader.close();
                        }
                        catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }
}

