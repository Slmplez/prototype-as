/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Preferences
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.core.internal.resources;

import java.net.URI;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.events.PathVariableChangeEvent;
import org.eclipse.core.internal.resources.IManager;
import org.eclipse.core.internal.resources.PathVariableUtil;
import org.eclipse.core.internal.resources.ProjectVariableProviderManager;
import org.eclipse.core.internal.resources.ResourceStatus;
import org.eclipse.core.internal.utils.FileUtil;
import org.eclipse.core.internal.utils.Messages;
import org.eclipse.core.resources.IPathVariableChangeListener;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Preferences;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class PathVariableManager
implements IPathVariableManager,
IManager {
    static final String VARIABLE_PREFIX = "pathvariable.";
    private Set<IPathVariableChangeListener> listeners = Collections.synchronizedSet(new HashSet());
    private Map<IProject, Collection<IPathVariableChangeListener>> projectListeners = Collections.synchronizedMap(new HashMap());
    private Preferences preferences = ResourcesPlugin.getPlugin().getPluginPreferences();

    @Override
    public void addChangeListener(IPathVariableChangeListener listener) {
        this.listeners.add(listener);
    }

    public synchronized void addChangeListener(IPathVariableChangeListener listener, IProject project) {
        Collection<IPathVariableChangeListener> list = this.projectListeners.get(project);
        if (list == null) {
            list = Collections.synchronizedSet(new HashSet());
            this.projectListeners.put(project, list);
        }
        list.add(listener);
    }

    private void checkIsValidName(String name) throws CoreException {
        IStatus status = this.validateName(name);
        if (!status.isOK()) {
            throw new CoreException(status);
        }
    }

    private void checkIsValidValue(IPath newValue) throws CoreException {
        IStatus status = this.validateValue(newValue);
        if (!status.isOK()) {
            throw new CoreException(status);
        }
    }

    private void fireVariableChangeEvent(String name, IPath value, int type) {
        this.fireVariableChangeEvent(this.listeners, name, value, type);
    }

    private void fireVariableChangeEvent(Collection<IPathVariableChangeListener> list, String name, IPath value, int type) {
        if (list.size() == 0) {
            return;
        }
        Object[] listenerArray = list.toArray();
        final PathVariableChangeEvent pve = new PathVariableChangeEvent(this, name, value, type);
        int i = 0;
        while (i < listenerArray.length) {
            final IPathVariableChangeListener l = (IPathVariableChangeListener)listenerArray[i];
            ISafeRunnable job = new ISafeRunnable(){

                public void handleException(Throwable exception) {
                }

                public void run() throws Exception {
                    l.pathVariableChanged(pve);
                }
            };
            SafeRunner.run((ISafeRunnable)job);
            ++i;
        }
    }

    public void fireVariableChangeEvent(IProject project, String name, IPath value, int type) {
        Collection<IPathVariableChangeListener> list = this.projectListeners.get(project);
        if (list != null) {
            this.fireVariableChangeEvent(list, name, value, type);
        }
    }

    private String getKeyForName(String varName) {
        return VARIABLE_PREFIX + varName;
    }

    @Override
    public String[] getPathVariableNames() {
        LinkedList<String> result = new LinkedList<String>();
        String[] names = this.preferences.propertyNames();
        int i = 0;
        while (i < names.length) {
            String key;
            if (names[i].startsWith(VARIABLE_PREFIX) && this.validateName(key = names[i].substring(VARIABLE_PREFIX.length())).isOK() && this.validateValue(this.getValue(key)).isOK()) {
                result.add(key);
            }
            ++i;
        }
        return result.toArray(new String[result.size()]);
    }

    @Override
    public IPath getValue(String varName) {
        String key = this.getKeyForName(varName);
        String value = this.preferences.getString(key);
        return value.length() == 0 ? null : Path.fromPortableString((String)value);
    }

    @Override
    public boolean isDefined(String varName) {
        return this.getValue(varName) != null;
    }

    @Override
    public void removeChangeListener(IPathVariableChangeListener listener) {
        this.listeners.remove(listener);
    }

    public synchronized void removeChangeListener(IPathVariableChangeListener listener, IProject project) {
        Collection<IPathVariableChangeListener> list = this.projectListeners.get(project);
        if (list != null) {
            list.remove(listener);
            if (list.isEmpty()) {
                this.projectListeners.remove(project);
            }
        }
    }

    @Override
    public IPath resolvePath(IPath path) {
        if (path == null || path.segmentCount() == 0 || path.isAbsolute() || path.getDevice() != null) {
            return path;
        }
        IPath value = this.getValue(path.segment(0));
        return value == null ? path : value.append(path.removeFirstSegments(1));
    }

    @Override
    public URI resolveURI(URI uri) {
        IPath resolved;
        if (uri == null || uri.isAbsolute()) {
            return uri;
        }
        if (uri.getSchemeSpecificPart() == null) {
            return uri;
        }
        Path raw = new Path(uri.getSchemeSpecificPart());
        return raw == (resolved = this.resolvePath((IPath)raw)) ? uri : URIUtil.toURI((IPath)resolved);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    @Override
    public void setValue(String varName, IPath newValue) throws CoreException {
        int eventType;
        this.checkIsValidName(varName);
        if (newValue != null && newValue.isAbsolute()) {
            newValue = FileUtil.canonicalPath(newValue);
        }
        this.checkIsValidValue(newValue);
        PathVariableManager pathVariableManager = this;
        synchronized (pathVariableManager) {
            boolean variableExists;
            IPath currentValue = this.getValue(varName);
            boolean bl = variableExists = currentValue != null;
            if (!variableExists && newValue == null) {
                return;
            }
            if (variableExists && currentValue.equals((Object)newValue)) {
                return;
            }
            if (newValue == null) {
                this.preferences.setToDefault(this.getKeyForName(varName));
                eventType = 3;
            } else {
                this.preferences.setValue(this.getKeyForName(varName), newValue.toPortableString());
                eventType = variableExists ? 1 : 2;
            }
        }
        this.fireVariableChangeEvent(varName, newValue, eventType);
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
        if (!(value == null || value.isValidPath(value.toString()) && value.isAbsolute())) {
            String message = Messages.pathvar_invalidValue;
            return new ResourceStatus(77, null, message);
        }
        return Status.OK_STATUS;
    }

    @Override
    public URI convertToRelative(URI path, boolean force, String variableHint) throws CoreException {
        return PathVariableUtil.convertToRelative((IPathVariableManager)this, path, null, false, variableHint);
    }

    @Override
    public URI getURIValue(String name) {
        IPath path = this.getValue(name);
        if (path != null) {
            return URIUtil.toURI((IPath)path);
        }
        return null;
    }

    @Override
    public void setURIValue(String name, URI value) throws CoreException {
        if (value != null) {
            this.setValue(name, URIUtil.toPath((URI)value));
        } else {
            this.setValue(name, null);
        }
    }

    @Override
    public IStatus validateValue(URI path) {
        if (path != null) {
            this.validateValue(URIUtil.toPath((URI)path));
        } else {
            this.validateValue((IPath)null);
        }
        return null;
    }

    public URI resolveURI(URI uri, IResource resource) {
        return this.resolveURI(uri);
    }

    public String[] getPathVariableNames(IResource resource) {
        return this.getPathVariableNames();
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

    @Override
    public String convertToUserEditableFormat(String value, boolean locationFormat) {
        return PathVariableUtil.convertToUserEditableFormatInternal(value, locationFormat);
    }

    @Override
    public String convertFromUserEditableFormat(String userFormat, boolean locationFormat) {
        return PathVariableUtil.convertFromUserEditableFormatInternal(this, userFormat, locationFormat);
    }

    @Override
    public boolean isUserDefined(String name) {
        return ProjectVariableProviderManager.getDefault().findDescriptor(name) == null;
    }
}

