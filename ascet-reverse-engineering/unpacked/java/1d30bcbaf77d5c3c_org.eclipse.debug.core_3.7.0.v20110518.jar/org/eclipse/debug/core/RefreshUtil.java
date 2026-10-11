/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 */
package org.eclipse.debug.core;

import com.ibm.icu.text.MessageFormat;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;
import java.util.ArrayList;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.ResourceFactory;
import org.eclipse.debug.internal.core.XMLMemento;

public class RefreshUtil {
    public static final String ATTR_REFRESH_SCOPE = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".ATTR_REFRESH_SCOPE";
    public static final String ATTR_REFRESH_RECURSIVE = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".ATTR_REFRESH_RECURSIVE";
    public static final String MEMENTO_SELECTED_PROJECT = "${project}";
    public static final String MEMENTO_SELECTED_CONTAINER = "${container}";
    public static final String MEMENTO_SELECTED_RESOURCE = "${resource}";
    public static final String MEMENTO_WORKSPACE = "${workspace}";
    private static final String NO_WORKING_SET = "NONE";

    public static void refreshResources(IResource[] resources, int depth, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        if (resources == null || resources.length == 0) {
            return;
        }
        if (monitor.isCanceled()) {
            return;
        }
        monitor.beginTask(DebugCoreMessages.RefreshingResources, resources.length);
        MultiStatus status = new MultiStatus(DebugPlugin.getUniqueIdentifier(), 0, DebugCoreMessages.RefreshingResourcesError, null);
        int i = 0;
        while (i < resources.length) {
            if (monitor.isCanceled()) break;
            if (resources[i] != null && resources[i].isAccessible()) {
                try {
                    resources[i].refreshLocal(depth, null);
                }
                catch (CoreException e) {
                    status.merge(e.getStatus());
                }
            }
            monitor.worked(1);
            ++i;
        }
        monitor.done();
        if (!status.isOK()) {
            throw new CoreException((IStatus)status);
        }
    }

    public static IResource[] toResources(String memento) throws CoreException {
        if (memento.startsWith("${resource:")) {
            String pathString = memento.substring(11, memento.length() - 1);
            Path path = new Path(pathString);
            IResource resource = ResourcesPlugin.getWorkspace().getRoot().findMember((IPath)path);
            if (resource == null) {
                throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 4, MessageFormat.format((String)DebugCoreMessages.RefreshUtil_1, (Object[])new String[]{pathString}), null));
            }
            return new IResource[]{resource};
        }
        if (memento.startsWith("${working_set:")) {
            String ws = memento.substring(14, memento.length() - 1);
            return RefreshUtil.getResources(ws);
        }
        if (memento.equals(MEMENTO_WORKSPACE)) {
            return new IResource[]{ResourcesPlugin.getWorkspace().getRoot()};
        }
        IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
        IResource resource = null;
        try {
            String pathString = manager.performStringSubstitution("${selected_resource_path}");
            resource = ResourcesPlugin.getWorkspace().getRoot().findMember((IPath)new Path(pathString));
        }
        catch (CoreException coreException) {}
        if (resource == null) {
            return new IResource[0];
        }
        if (memento.equals(MEMENTO_SELECTED_RESOURCE)) {
            return new IResource[]{resource};
        }
        if (memento.equals(MEMENTO_SELECTED_CONTAINER)) {
            return new IResource[]{resource.getParent()};
        }
        if (memento.equals(MEMENTO_SELECTED_PROJECT)) {
            return new IResource[]{resource.getProject()};
        }
        throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), MessageFormat.format((String)DebugCoreMessages.RefreshUtil_0, (Object[])new String[]{memento})));
    }

    public static String toMemento(IResource[] resources) {
        XMLMemento memento = XMLMemento.createWriteRoot("resources");
        int i = 0;
        while (i < resources.length) {
            XMLMemento itemMemento = memento.createChild("item");
            ResourceFactory.saveState(itemMemento, resources[i]);
            ++i;
        }
        StringWriter writer = new StringWriter();
        try {
            memento.save(writer);
        }
        catch (IOException e) {
            DebugPlugin.log(e);
        }
        StringBuffer buf = new StringBuffer();
        buf.append("${working_set:");
        buf.append(writer.toString());
        buf.append("}");
        return buf.toString();
    }

    private static IResource[] getResources(String wsMemento) {
        if (NO_WORKING_SET.equals(wsMemento)) {
            return null;
        }
        ArrayList<IAdaptable> resourcesList = new ArrayList<IAdaptable>();
        StringReader reader = new StringReader(wsMemento);
        XMLMemento memento = null;
        try {
            memento = XMLMemento.createReadRoot(reader);
        }
        catch (Exception e) {
            DebugPlugin.log(e);
            return null;
        }
        XMLMemento[] mementos = memento.getChildren("item");
        int i = 0;
        while (i < mementos.length) {
            resourcesList.add(ResourceFactory.createElement(mementos[i]));
            ++i;
        }
        return resourcesList.toArray(new IResource[resourcesList.size()]);
    }

    public static boolean isRefreshRecursive(ILaunchConfiguration configuration) throws CoreException {
        return configuration.getAttribute(ATTR_REFRESH_RECURSIVE, true);
    }

    public static void refreshResources(ILaunchConfiguration configuration, IProgressMonitor monitor) throws CoreException {
        IResource[] resources;
        String scope = configuration.getAttribute(ATTR_REFRESH_SCOPE, (String)null);
        if (scope != null && (resources = RefreshUtil.toResources(scope)) != null && resources.length > 0) {
            int depth = 1;
            if (RefreshUtil.isRefreshRecursive(configuration)) {
                depth = 2;
            }
            RefreshUtil.refreshResources(resources, depth, monitor);
        }
    }
}

