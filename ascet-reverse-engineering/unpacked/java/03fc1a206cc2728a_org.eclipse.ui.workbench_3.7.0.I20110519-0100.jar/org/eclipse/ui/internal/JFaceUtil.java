/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$INodeChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$NodeChangeEvent
 *  org.eclipse.jface.internal.InternalPolicy
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.JFacePreferences
 *  org.eclipse.jface.util.ILogger
 *  org.eclipse.jface.util.ISafeRunnableRunner
 *  org.eclipse.jface.util.Policy
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.util.StatusHandler
 */
package org.eclipse.ui.internal;

import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.jface.internal.InternalPolicy;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.JFacePreferences;
import org.eclipse.jface.util.ILogger;
import org.eclipse.jface.util.ISafeRunnableRunner;
import org.eclipse.jface.util.Policy;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.util.StatusHandler;
import org.eclipse.ui.internal.PlatformUIPreferenceListener;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.statushandlers.StatusAdapter;
import org.eclipse.ui.statushandlers.StatusManager;

final class JFaceUtil {
    private JFaceUtil() {
    }

    public static void initializeJFace() {
        SafeRunnable.setRunner((ISafeRunnableRunner)new ISafeRunnableRunner(){

            public void run(ISafeRunnable code) {
                SafeRunner.run((ISafeRunnable)code);
            }
        });
        Policy.setLog((ILogger)new ILogger(){

            public void log(IStatus status) {
                if (status.getSeverity() == 2 || status.getSeverity() == 4) {
                    StatusManager.getManager().handle(status);
                } else {
                    WorkbenchPlugin.log(status);
                }
            }
        });
        Policy.setStatusHandler((StatusHandler)new StatusHandler(){

            public void show(IStatus status, String title) {
                StatusAdapter statusAdapter = new StatusAdapter(status);
                statusAdapter.setProperty(StatusAdapter.TITLE_PROPERTY, title);
                StatusManager.getManager().handle(statusAdapter, 2);
            }
        });
        if ("true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/debug"))) {
            Policy.DEBUG_DIALOG_NO_PARENT = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/debug/dialog/noparent"));
            Policy.TRACE_ACTIONS = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/trace/actions"));
            Policy.TRACE_TOOLBAR = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/trace/toolbarDisposal"));
            InternalPolicy.DEBUG_LOG_REENTRANT_VIEWER_CALLS = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/debug/viewers/reentrantViewerCalls"));
            InternalPolicy.DEBUG_LOG_EQUAL_VIEWER_ELEMENTS = "true".equalsIgnoreCase(Platform.getDebugOption((String)"org.eclipse.jface/debug/viewers/equalElements"));
        }
    }

    public static void initializeJFacePreferences() {
        IEclipsePreferences rootNode = (IEclipsePreferences)Platform.getPreferencesService().getRootNode().node("instance");
        final String workbenchName = WorkbenchPlugin.getDefault().getBundle().getSymbolicName();
        rootNode.addNodeChangeListener(new IEclipsePreferences.INodeChangeListener(){

            public void added(IEclipsePreferences.NodeChangeEvent event) {
                if (!event.getChild().name().equals(workbenchName)) {
                    return;
                }
                ((IEclipsePreferences)event.getChild()).addPreferenceChangeListener(PlatformUIPreferenceListener.getSingleton());
            }

            public void removed(IEclipsePreferences.NodeChangeEvent event) {
            }
        });
        JFacePreferences.setPreferenceStore((IPreferenceStore)WorkbenchPlugin.getDefault().getPreferenceStore());
    }
}

