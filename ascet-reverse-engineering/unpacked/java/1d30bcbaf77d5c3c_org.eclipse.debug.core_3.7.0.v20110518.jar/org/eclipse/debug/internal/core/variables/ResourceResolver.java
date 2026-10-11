/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
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
 */
package org.eclipse.debug.internal.core.variables;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.net.URI;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
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
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.internal.core.variables.Messages;

public class ResourceResolver
implements IDynamicVariableResolver {
    public String resolveValue(IDynamicVariable variable, String argument) throws CoreException {
        IResource resource = null;
        resource = argument == null ? this.getSelectedResource(variable) : this.getWorkspaceRoot().findMember((IPath)new Path(argument));
        if (resource != null && resource.exists() && (resource = this.translateSelectedResource(resource)) != null && resource.exists()) {
            return this.translateToValue(resource, variable);
        }
        this.abort(MessageFormat.format((String)Messages.ResourceResolver_0, (Object[])new String[]{this.getReferenceExpression(variable, argument)}), null);
        return null;
    }

    protected IResource translateSelectedResource(IResource resource) {
        return resource;
    }

    protected IWorkspaceRoot getWorkspaceRoot() {
        return ResourcesPlugin.getWorkspace().getRoot();
    }

    protected String getReferenceExpression(IDynamicVariable variable, String argument) {
        StringBuffer reference = new StringBuffer();
        reference.append("${");
        reference.append(variable.getName());
        if (argument != null) {
            reference.append(":");
            reference.append(argument);
        }
        reference.append("}");
        return reference.toString();
    }

    protected void abort(String message, Throwable exception) throws CoreException {
        throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 120, message, exception));
    }

    protected IResource getSelectedResource(IDynamicVariable variable) throws CoreException {
        IStringVariableManager manager = VariablesPlugin.getDefault().getStringVariableManager();
        try {
            String pathString = manager.performStringSubstitution("${selected_resource_path}");
            return ResourcesPlugin.getWorkspace().getRoot().findMember((IPath)new Path(pathString));
        }
        catch (CoreException coreException) {
            this.abort(MessageFormat.format((String)Messages.ResourceResolver_1, (Object[])new String[]{this.getReferenceExpression(variable, null)}), null);
            return null;
        }
    }

    protected String translateToValue(IResource resource, IDynamicVariable variable) throws CoreException {
        String name = variable.getName();
        IPath path = null;
        URI uri = null;
        if (name.endsWith("_loc")) {
            File file;
            uri = resource.getLocationURI();
            if (uri != null && (file = EFS.getStore((URI)uri).toLocalFile(0, null)) != null) {
                return file.getAbsolutePath();
            }
        } else if (name.endsWith("_path")) {
            path = resource.getFullPath();
            if (path != null) {
                return path.toOSString();
            }
        } else if (name.endsWith("_name")) {
            return resource.getName();
        }
        this.abort(MessageFormat.format((String)Messages.ResourceResolver_2, (Object[])new String[]{this.getReferenceExpression(variable, null)}), null);
        return null;
    }
}

