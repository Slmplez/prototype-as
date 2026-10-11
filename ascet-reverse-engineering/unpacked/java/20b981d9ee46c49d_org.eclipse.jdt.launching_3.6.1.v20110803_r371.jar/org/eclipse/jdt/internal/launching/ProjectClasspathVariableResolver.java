/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.IDynamicVariable
 *  org.eclipse.core.variables.IDynamicVariableResolver
 *  org.eclipse.core.variables.IStringVariableManager
 *  org.eclipse.core.variables.VariablesPlugin
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.util.ArrayList;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.IDynamicVariable;
import org.eclipse.core.variables.IDynamicVariableResolver;
import org.eclipse.core.variables.IStringVariableManager;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry2;
import org.eclipse.jdt.launching.JavaRuntime;

public class ProjectClasspathVariableResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        IJavaProject javaProject;
        IProject proj = null;
        if (argument == null) {
            IResource resource = this.getSelectedResource();
            if (resource != null && resource.exists()) {
                proj = resource.getProject();
            }
            if (proj == null) {
                throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", LaunchingMessages.ProjectClasspathVariableResolver_2));
            }
        } else {
            proj = ResourcesPlugin.getWorkspace().getRoot().getProject(argument);
        }
        if ((javaProject = JavaCore.create((IProject)proj)).exists()) {
            IRuntimeClasspathEntry2 defClassPath = (IRuntimeClasspathEntry2)JavaRuntime.newDefaultProjectClasspathEntry(javaProject);
            IRuntimeClasspathEntry[] entries = defClassPath.getRuntimeClasspathEntries(null);
            ArrayList<IRuntimeClasspathEntry> collect = new ArrayList<IRuntimeClasspathEntry>();
            int i = 0;
            while (i < entries.length) {
                IRuntimeClasspathEntry[] children = JavaRuntime.resolveRuntimeClasspathEntry(entries[i], javaProject);
                int j = 0;
                while (j < children.length) {
                    collect.add(children[j]);
                    ++j;
                }
                ++i;
            }
            entries = collect.toArray(new IRuntimeClasspathEntry[collect.size()]);
            StringBuffer buffer = new StringBuffer();
            int i2 = 0;
            while (i2 < entries.length) {
                if (i2 > 0) {
                    buffer.append(File.pathSeparatorChar);
                }
                buffer.append(entries[i2].getLocation());
                ++i2;
            }
            return buffer.toString();
        }
        throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", MessageFormat.format((String)LaunchingMessages.ProjectClasspathVariableResolver_1, (Object[])new String[]{argument})));
    }

    protected IResource getSelectedResource() throws CoreException {
        IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
        try {
            String pathString = manager.performStringSubstitution("${selected_resource_path}");
            return ResourcesPlugin.getWorkspace().getRoot().findMember((IPath)new Path(pathString));
        }
        catch (CoreException coreException) {
            throw new CoreException((IStatus)new Status(4, "org.eclipse.jdt.launching", LaunchingMessages.ProjectClasspathVariableResolver_3));
        }
    }
}

