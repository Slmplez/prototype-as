/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.jdt.core.IJavaElement
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.JavaCore
 *  org.eclipse.jdt.core.JavaModelException
 *  org.eclipse.jdt.ui.JavaUI
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.pde.core.plugin.IPluginModelBase
 *  org.eclipse.pde.core.plugin.PluginRegistry
 *  org.eclipse.pde.internal.core.PDECore
 *  org.eclipse.pde.internal.core.SearchablePluginsManager
 *  org.eclipse.pde.internal.ui.editor.plugin.ManifestEditor
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.ui.PartInitException
 */
package org.eclipse.pde.internal.runtime.spy;

import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.ui.JavaUI;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.SearchablePluginsManager;
import org.eclipse.pde.internal.runtime.PDERuntimeMessages;
import org.eclipse.pde.internal.runtime.PDERuntimePlugin;
import org.eclipse.pde.internal.ui.editor.plugin.ManifestEditor;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.PartInitException;

public class SpyIDEUtil {
    public static void openClass(String pluginId, String clazz) {
        IPluginModelBase model = PluginRegistry.findModel((String)pluginId);
        IResource resource = model != null ? model.getUnderlyingResource() : null;
        IJavaProject project = null;
        if (model == null) {
            MessageDialog.openError((Shell)Display.getCurrent().getActiveShell(), (String)PDERuntimeMessages.SpyIDEUtil_noSourceFound_title, (String)NLS.bind((String)PDERuntimeMessages.SpyIDEUtil_noSourceFound_message, (Object[])new Object[]{clazz}));
            return;
        }
        if (resource != null) {
            project = JavaCore.create((IProject)resource.getProject());
        } else {
            SearchablePluginsManager manager = PDECore.getDefault().getSearchablePluginsManager();
            try {
                manager.createProxyProject((IProgressMonitor)new NullProgressMonitor());
                manager.addToJavaSearch(new IPluginModelBase[]{model});
                project = manager.getProxyProject();
            }
            catch (CoreException coreException) {}
        }
        if (project != null) {
            SpyIDEUtil.openInEditor(project, clazz);
        }
    }

    public static void openInEditor(IJavaProject project, String clazz) {
        try {
            IType type = project.findType(clazz);
            JavaUI.openInEditor((IJavaElement)type, (boolean)false, (boolean)true);
        }
        catch (JavaModelException e) {
            PDERuntimePlugin.log(e);
        }
        catch (PartInitException e) {
            PDERuntimePlugin.log(e);
        }
    }

    public static void openBundleManifest(String bundleID) {
        ManifestEditor.openPluginEditor((String)bundleID);
    }
}

