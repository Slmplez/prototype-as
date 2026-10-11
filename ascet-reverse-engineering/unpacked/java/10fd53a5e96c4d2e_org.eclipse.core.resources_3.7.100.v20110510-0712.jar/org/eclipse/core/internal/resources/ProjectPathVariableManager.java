/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.PathVariableManager;
import org.eclipse.core.internal.resources.PathVariableUtil;
import org.eclipse.core.internal.resources.Project;
import org.eclipse.core.internal.resources.ProjectDescription;
import org.eclipse.core.internal.resources.ProjectVariableProviderManager;
import org.eclipse.core.internal.resources.Resource;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.resources.VariableDescription;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.internal.utils.Policy;
import org.eclipse.core.resources.IPathVariableChangeListener;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProjectPathVariableManager
implements IPathVariableManager,
IManager {
    private Resource resource;
    private ProjectVariableProviderManager.Descriptor[] variableProviders = null;

    public ProjectPathVariableManager(Resource resource) {
        this.resource = resource;
        this.variableProviders = ProjectVariableProviderManager.getDefault().getDescriptors();
    }

    PathVariableManager getWorkspaceManager() {
        return (PathVariableManager)this.resource.getWorkspace().getPathVariableManager();
    }

    private void checkIsValidName(String name) throws CoreException {
        IStatus status = this.validateName(name);
        if (!status.isOK()) {
            throw new CoreException(status);
        }
    }

    private void checkIsValidValue(URI newValue) throws CoreException {
        IStatus status = this.validateValue(newValue);
        if (!status.isOK()) {
            throw new CoreException(status);
        }
    }

    @Override
    public String[] getPathVariableNames() {
        HashMap<String, VariableDescription> map;
        LinkedList<String> result = new LinkedList<String>();
        try {
            map = ((ProjectDescription)this.resource.getProject().getDescription()).getVariables();
        }
        catch (CoreException coreException) {
            return new String[0];
        }
        int i = 0;
        while (i < this.variableProviders.length) {
            String[] variableHints = this.variableProviders[i].getVariableNames(this.variableProviders[i].getName(), this.resource);
            if (variableHints != null && variableHints.length > 0) {
                int k = 0;
                while (k < variableHints.length) {
                    result.add(this.variableProviders[i].getVariableNames(this.variableProviders[i].getName(), this.resource)[k]);
                    ++k;
                }
            }
            ++i;
        }
        if (map != null) {
            result.addAll(map.keySet());
        }
        result.addAll(Arrays.asList(this.getWorkspaceManager().getPathVariableNames()));
        return result.toArray(new String[0]);
    }

    @Override
    public IPath getValue(String varName) {
        URI uri = this.getURIValue(varName);
        if (uri != null) {
            return URIUtil.toPath((URI)uri);
        }
        return null;
    }

    @Override
    public URI getURIValue(String varName) {
        String value = this.internalGetValue(varName);
        if (value != null) {
            URI resolved;
            int index;
            if (value.indexOf("..") != -1 && (index = value.indexOf(47)) > 0 && (resolved = this.resolveVariable(value)) != null) {
                return resolved;
            }
            try {
                return URI.create(value);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                IPath path = Path.fromPortableString((String)value);
                return URIUtil.toURI((IPath)path);
            }
        }
        return this.getWorkspaceManager().getURIValue(varName);
    }

    public String internalGetValue(String varName) {
        HashMap<String, VariableDescription> map;
        try {
            map = ((ProjectDescription)this.resource.getProject().getDescription()).getVariables();
        }
        catch (CoreException coreException) {
            return null;
        }
        if (map != null && map.containsKey(varName)) {
            return map.get(varName).getValue();
        }
        int index = varName.indexOf(45);
        String name = index != -1 ? varName.substring(0, index) : varName;
        int i = 0;
        while (i < this.variableProviders.length) {
            if (this.variableProviders[i].getName().equals(name)) {
                return this.variableProviders[i].getValue(varName, this.resource);
            }
            ++i;
        }
        i = 0;
        while (i < this.variableProviders.length) {
            if (name.startsWith(this.variableProviders[i].getName())) {
                return this.variableProviders[i].getValue(varName, this.resource);
            }
            ++i;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public boolean isDefined(String varName) {
        int i = 0;
        while (i < this.variableProviders.length) {
            if (varName.startsWith(this.variableProviders[i].getName())) {
                return true;
            }
            ++i;
        }
        try {
            HashMap<String, VariableDescription> map = ((ProjectDescription)this.resource.getProject().getDescription()).getVariables();
            if (map != null) {
                for (String name : map.keySet()) {
                    if (!name.equals(varName)) continue;
                    return true;
                }
            }
        }
        catch (CoreException coreException) {
            return false;
        }
        boolean value = this.getWorkspaceManager().isDefined(varName);
        if (value) return value;
        int index = varName.indexOf(45);
        if (index == -1) return value;
        String newVarName = varName.substring(0, index);
        return this.isDefined(newVarName);
    }

    @Override
    public IPath resolvePath(IPath path) {
        if (path == null || path.segmentCount() == 0 || path.isAbsolute() || path.getDevice() != null) {
            return path;
        }
        URI value = this.resolveURI(URIUtil.toURI((IPath)path));
        return value == null ? path : URIUtil.toPath((URI)value);
    }

    public URI resolveVariable(String variable) {
        LinkedList<String> variableStack = new LinkedList<String>();
        String value = this.resolveVariable(variable, variableStack);
        if (value != null) {
            try {
                return URI.create(value);
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return URIUtil.toURI((IPath)Path.fromPortableString((String)value));
            }
        }
        return null;
    }

    public String resolveVariable(String value, LinkedList<String> variableStack) {
        String tmp;
        if (variableStack == null) {
            variableStack = new LinkedList();
        }
        if ((tmp = this.internalGetValue(value)) == null) {
            URI result = this.getWorkspaceManager().getURIValue(value);
            if (result != null) {
                return result.toASCIIString();
            }
        } else {
            value = tmp;
        }
        while (true) {
            String stringValue;
            try {
                IPath path;
                URI uri = URI.create(value);
                stringValue = uri != null ? ((path = URIUtil.toPath((URI)uri)) != null ? path.toPortableString() : value) : value;
            }
            catch (IllegalArgumentException illegalArgumentException) {
                stringValue = value;
            }
            int index = stringValue.indexOf("${");
            if (index == -1) break;
            int endIndex = PathVariableUtil.getMatchingBrace(stringValue, index);
            String macro = stringValue.substring(index + 2, endIndex);
            String resolvedMacro = "";
            if (!variableStack.contains(macro)) {
                variableStack.add(macro);
                resolvedMacro = this.resolveVariable(macro, variableStack);
                if (resolvedMacro == null) {
                    resolvedMacro = "";
                }
            }
            stringValue = stringValue.length() > endIndex ? String.valueOf(stringValue.substring(0, index)) + resolvedMacro + stringValue.substring(endIndex + 1) : resolvedMacro;
            value = stringValue;
        }
        return value;
    }

    @Override
    public URI resolveURI(URI uri) {
        if (uri == null || uri.isAbsolute() || uri.getSchemeSpecificPart() == null) {
            return uri;
        }
        Path raw = new Path(uri.getSchemeSpecificPart());
        if (raw == null || raw.segmentCount() == 0 || raw.isAbsolute() || raw.getDevice() != null) {
            return URIUtil.toURI((IPath)raw);
        }
        URI value = this.resolveVariable(raw.segment(0));
        if (value == null) {
            return uri;
        }
        String path = value.getPath();
        if (path != null) {
            IPath p = Path.fromPortableString((String)path);
            p = p.append(raw.removeFirstSegments(1));
            try {
                value = new URI(value.getScheme(), value.getHost(), p.toPortableString(), value.getFragment());
            }
            catch (URISyntaxException uRISyntaxException) {
                return uri;
            }
            return value;
        }
        return uri;
    }

    @Override
    public void setValue(String varName, IPath newValue) throws CoreException {
        if (newValue == null) {
            this.setURIValue(varName, null);
        } else {
            this.setURIValue(varName, URIUtil.toURI((IPath)newValue));
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setURIValue(String varName, URI newValue) throws CoreException {
        this.checkIsValidName(varName);
        this.checkIsValidValue(newValue);
        boolean changeWorkspaceValue = false;
        Project project = (Project)this.resource.getProject();
        int eventType = 0;
        ProjectPathVariableManager projectPathVariableManager = this;
        synchronized (projectPathVariableManager) {
            boolean variableExists;
            String value = this.internalGetValue(varName);
            URI currentValue = null;
            if (value == null) {
                currentValue = this.getWorkspaceManager().getURIValue(varName);
            } else {
                try {
                    currentValue = URI.create(value);
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    currentValue = null;
                }
            }
            boolean bl = variableExists = currentValue != null;
            if (!variableExists && newValue == null) {
                return;
            }
            if (variableExists && currentValue.equals(newValue)) {
                return;
            }
            int i = 0;
            while (i < this.variableProviders.length) {
                if (varName.startsWith(this.variableProviders[i].getName())) {
                    return;
                }
                ++i;
            }
            if (value == null && variableExists) {
                changeWorkspaceValue = true;
            } else {
                NullProgressMonitor monitor = new NullProgressMonitor();
                IProject rule = this.resource.getProject();
                try {
                    project.workspace.prepareOperation(rule, (IProgressMonitor)monitor);
                    project.workspace.beginOperation(true);
                    ProjectDescription description = project.internalGetDescription();
                    if (newValue == null) {
                        description.setVariableDescription(varName, null);
                        eventType = 3;
                    } else {
                        description.setVariableDescription(varName, new VariableDescription(varName, newValue.toASCIIString()));
                        eventType = variableExists ? 1 : 2;
                    }
                    project.writeDescription(0);
                }
                finally {
                    project.workspace.endOperation(rule, true, Policy.subMonitorFor((IProgressMonitor)monitor, Policy.endOpWork));
                }
            }
        }
        if (changeWorkspaceValue) {
            this.getWorkspaceManager().setURIValue(varName, newValue);
        } else {
            this.getWorkspaceManager().fireVariableChangeEvent(project, varName, newValue != null ? URIUtil.toPath((URI)newValue) : null, eventType);
        }
    }

    @Override
    public void shutdown(IProgressMonitor monitor) {
    }

    @Override
    public void startup(IProgressMonitor monitor) {
    }

    @Override
    public IStatus validateName(String name) {
        String message = null;
        if (name.length() == 0) {
            message = Messages.pathvar_length;
            return new ResourceStatus(77, null, message);
        }
        char first = name.charAt(0);
        if (!Character.isLetter(first) && first != '_') {
            message = NLS.bind((String)Messages.pathvar_beginLetter, (Object)String.valueOf(first));
            return new ResourceStatus(77, null, message);
        }
        int i = 1;
        while (i < name.length()) {
            char following = name.charAt(i);
            if (Character.isWhitespace(following)) {
                return new ResourceStatus(77, null, Messages.pathvar_whitespace);
            }
            if (!Character.isLetter(following) && !Character.isDigit(following) && following != '_') {
                message = NLS.bind((String)Messages.pathvar_invalidChar, (Object)String.valueOf(following));
                return new ResourceStatus(77, null, message);
            }
            ++i;
        }
        return Status.OK_STATUS;
    }

    @Override
    public IStatus validateValue(IPath value) {
        return Status.OK_STATUS;
    }

    @Override
    public IStatus validateValue(URI value) {
        return Status.OK_STATUS;
    }

    @Override
    public URI convertToRelative(URI path, boolean force, String variableHint) throws CoreException {
        return PathVariableUtil.convertToRelative((IPathVariableManager)this, path, (IResource)this.resource, force, variableHint);
    }

    @Override
    public String convertToUserEditableFormat(String value, boolean locationFormat) {
        return PathVariableUtil.convertToUserEditableFormatInternal(value, locationFormat);
    }

    @Override
    public String convertFromUserEditableFormat(String userFormat, boolean locationFormat) {
        return PathVariableUtil.convertFromUserEditableFormatInternal(this, userFormat, locationFormat);
    }

    @Override
    public void addChangeListener(IPathVariableChangeListener listener) {
        this.getWorkspaceManager().addChangeListener(listener, this.resource.getProject());
    }

    @Override
    public void removeChangeListener(IPathVariableChangeListener listener) {
        this.getWorkspaceManager().removeChangeListener(listener, this.resource.getProject());
    }

    @Override
    public URI getVariableRelativePathLocation(URI location) {
        try {
            URI result = this.convertToRelative(location, false, null);
            if (!result.equals(location)) {
                return result;
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    public IResource getResource() {
        return this.resource;
    }

    @Override
    public boolean isUserDefined(String name) {
        return ProjectVariableProviderManager.getDefault().findDescriptor(name) == null;
    }
}

