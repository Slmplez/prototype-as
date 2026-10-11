/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubMonitor
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.LaunchConfiguration;
import org.eclipse.debug.internal.core.LaunchConfigurationInfo;

public class LaunchConfigurationWorkingCopy
extends LaunchConfiguration
implements ILaunchConfigurationWorkingCopy {
    private LaunchConfiguration fOriginal;
    private LaunchConfigurationWorkingCopy fParent = null;
    private LaunchConfigurationInfo fInfo;
    private boolean fDirty;
    private boolean fRenamed;
    private boolean fSuppressChange;

    protected LaunchConfigurationWorkingCopy(LaunchConfiguration original) throws CoreException {
        super(original.getName(), original.getContainer());
        this.copyFrom(original);
        this.setOriginal(original);
        this.fSuppressChange = false;
    }

    protected void initialize() {
        this.fDirty = false;
        this.fRenamed = false;
        this.fSuppressChange = true;
        super.initialize();
    }

    protected LaunchConfigurationWorkingCopy(LaunchConfigurationWorkingCopy parent) throws CoreException {
        super(parent.getName(), parent.getContainer());
        this.copyFrom(parent);
        this.setOriginal((LaunchConfiguration)parent.getOriginal());
        this.fParent = parent;
        this.fSuppressChange = false;
    }

    protected LaunchConfigurationWorkingCopy(LaunchConfiguration original, String name) throws CoreException {
        super(name, original.getContainer());
        this.copyFrom(original);
        this.fSuppressChange = false;
    }

    protected LaunchConfigurationWorkingCopy(IContainer container, String name, ILaunchConfigurationType type) {
        super(name, container);
        this.setInfo(new LaunchConfigurationInfo());
        this.getInfo().setType(type);
        this.fSuppressChange = false;
    }

    public boolean isDirty() {
        return this.fDirty;
    }

    public synchronized ILaunchConfiguration doSave() throws CoreException {
        return this.doSave((IProgressMonitor)new NullProgressMonitor());
    }

    public synchronized ILaunchConfiguration doSave(IProgressMonitor monitor) throws CoreException {
        SubMonitor lmonitor = SubMonitor.convert((IProgressMonitor)monitor, (int)1);
        try {
            if (this.getParent() != null) {
                LaunchConfigurationWorkingCopy wc = (LaunchConfigurationWorkingCopy)this.getParent();
                if (this.isMoved()) {
                    wc.rename(this.getName());
                    wc.setContainer(this.getContainer());
                }
                wc.setAttributes(this.getInfo().getAttributes());
                this.updateMonitor((IProgressMonitor)lmonitor, 1);
                LaunchConfigurationWorkingCopy launchConfigurationWorkingCopy = wc;
                return launchConfigurationWorkingCopy;
            }
            boolean useRunnable = true;
            if (this.isLocal()) {
                useRunnable = this.isMoved() ? !this.isNew() && !this.getOriginal().isLocal() : false;
            }
            if (useRunnable) {
                IWorkspaceRunnable wr = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor pm) throws CoreException {
                        LaunchConfigurationWorkingCopy.this.doSave0(pm);
                    }
                };
                ResourcesPlugin.getWorkspace().run(wr, null, 0, (IProgressMonitor)lmonitor.newChild(1));
            } else {
                this.doSave0((IProgressMonitor)lmonitor.newChild(1));
            }
            this.getLaunchManager().setMovedFromTo(null, null);
        }
        finally {
            if (lmonitor != null) {
                lmonitor.done();
            }
        }
        return new LaunchConfiguration(this.getName(), this.getContainer());
    }

    private void doSave0(IProgressMonitor monitor) throws CoreException {
        SubMonitor lmonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationWorkingCopy_0, (Object[])new String[]{this.getName()}), (int)2);
        try {
            boolean moved;
            boolean bl = moved = !this.isNew() && this.isMoved();
            if (moved) {
                LaunchConfiguration to = new LaunchConfiguration(this.getName(), this.getContainer());
                ILaunchConfiguration from = this.getOriginal();
                this.getLaunchManager().setMovedFromTo(from, to);
            }
            ILaunchConfiguration orig = this.getOriginal();
            this.updateMonitor((IProgressMonitor)lmonitor, 1);
            this.writeNewFile((IProgressMonitor)lmonitor.newChild(1));
            if (moved) {
                orig.delete();
            }
            this.fDirty = false;
        }
        finally {
            if (lmonitor != null) {
                lmonitor.done();
            }
        }
    }

    protected void writeNewFile(IProgressMonitor monitor) throws CoreException {
        String xml = null;
        try {
            xml = this.getInfo().getAsXML();
        }
        catch (Exception e) {
            throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationWorkingCopy__0__occurred_generating_launch_configuration_XML__1, (Object[])new String[]{e.toString()}), null));
        }
        SubMonitor lmonitor = SubMonitor.convert((IProgressMonitor)monitor, (String)"", (int)5);
        try {
            boolean added = false;
            if (this.isLocal()) {
                try {
                    lmonitor.subTask(DebugCoreMessages.LaunchConfigurationWorkingCopy_1);
                    IFileStore file = this.getFileStore();
                    if (file == null) {
                        throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfigurationWorkingCopy_4, null));
                    }
                    IFileStore dir = file.getParent();
                    dir.mkdir(4, null);
                    if (!file.fetchInfo().exists()) {
                        added = true;
                        this.updateMonitor((IProgressMonitor)lmonitor, 1);
                    }
                    FilterOutputStream stream = null;
                    try {
                        stream = new BufferedOutputStream(file.openOutputStream(0, null));
                        stream.write(xml.getBytes("UTF8"));
                    }
                    finally {
                        if (stream != null) {
                            stream.close();
                        }
                    }
                    this.updateMonitor((IProgressMonitor)lmonitor, 1);
                }
                catch (IOException ie) {
                    lmonitor.done();
                    throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationWorkingCopy__0__occurred_generating_launch_configuration_XML__1, (Object[])new String[]{ie.toString()}), null));
                }
            }
            IFile file = this.getFile();
            if (file == null) {
                lmonitor.done();
                throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfigurationWorkingCopy_5, null));
            }
            IContainer dir = file.getParent();
            if (!dir.exists()) {
                lmonitor.done();
                throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfigurationWorkingCopy_Specified_container_for_launch_configuration_does_not_exist_2, null));
            }
            ByteArrayInputStream stream = null;
            try {
                stream = new ByteArrayInputStream(xml.getBytes("UTF8"));
            }
            catch (UnsupportedEncodingException ue) {
                lmonitor.done();
                throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfigurationWorkingCopy_5, (Throwable)ue));
            }
            SubMonitor smonitor = null;
            if (!file.exists()) {
                added = true;
                smonitor = lmonitor.newChild(1);
                smonitor.setTaskName(MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationWorkingCopy_2, (Object[])new String[]{this.getName()}));
                file.create((InputStream)stream, false, (IProgressMonitor)smonitor);
            } else {
                IStatus status;
                if (file.isReadOnly() && !(status = ResourcesPlugin.getWorkspace().validateEdit(new IFile[]{file}, null)).isOK()) {
                    lmonitor.done();
                    throw new CoreException(status);
                }
                smonitor = lmonitor.newChild(1);
                smonitor.setTaskName(MessageFormat.format((String)DebugCoreMessages.LaunchConfigurationWorkingCopy_3, (Object[])new String[]{this.getName()}));
                file.setContents((InputStream)stream, true, false, (IProgressMonitor)smonitor);
            }
            if (added) {
                this.getLaunchManager().launchConfigurationAdded(new LaunchConfiguration(this.getName(), this.getContainer()));
            } else {
                this.getLaunchManager().launchConfigurationChanged(new LaunchConfiguration(this.getName(), this.getContainer()));
            }
        }
        finally {
            if (lmonitor != null) {
                lmonitor.done();
            }
        }
    }

    private void updateMonitor(IProgressMonitor monitor, int ticks) throws OperationCanceledException {
        if (monitor != null) {
            monitor.worked(ticks);
            if (monitor.isCanceled()) {
                throw new OperationCanceledException();
            }
        }
    }

    public void setAttribute(String attributeName, int value) {
        this.getInfo().setAttribute(attributeName, new Integer(value));
        this.setDirty();
    }

    public void setAttribute(String attributeName, String value) {
        this.getInfo().setAttribute(attributeName, value);
        this.setDirty();
    }

    public void setAttribute(String attributeName, boolean value) {
        this.getInfo().setAttribute(attributeName, value);
        this.setDirty();
    }

    public void setAttribute(String attributeName, List value) {
        this.getInfo().setAttribute(attributeName, value);
        this.setDirty();
    }

    public void setAttribute(String attributeName, Map value) {
        this.getInfo().setAttribute(attributeName, value);
        this.setDirty();
    }

    public void setAttribute(String attributeName, Set value) {
        this.getInfo().setAttribute(attributeName, value);
        this.setDirty();
    }

    public ILaunchConfiguration getOriginal() {
        ILaunchConfiguration config = this.fOriginal;
        ILaunchConfigurationWorkingCopy parent = this.fParent;
        while (parent != null) {
            config = parent.getOriginal();
            parent = parent.getParent();
        }
        return config;
    }

    public ILaunchConfigurationWorkingCopy getParent() {
        return this.fParent;
    }

    private void copyFrom(LaunchConfiguration original) throws CoreException {
        LaunchConfigurationInfo info = original.getInfo();
        this.setInfo(info.getCopy());
        this.fDirty = false;
    }

    private void setOriginal(LaunchConfiguration original) {
        this.fOriginal = original;
    }

    protected void setInfo(LaunchConfigurationInfo info) {
        this.fInfo = info;
    }

    public boolean isWorkingCopy() {
        return true;
    }

    protected LaunchConfigurationInfo getInfo() {
        return this.fInfo;
    }

    private void setDirty() {
        this.fDirty = true;
        if (!this.suppressChangeNotification()) {
            this.getLaunchManager().getConfigurationNotifier().notify(this, 2);
        }
    }

    public void setModes(Set modes) {
        this.getInfo().setAttribute(ATTR_LAUNCH_MODES, modes.size() > 0 ? modes : null);
        this.setDirty();
    }

    public void addModes(Set modes) {
        try {
            Set opts = this.getModes();
            if (opts.addAll(modes)) {
                this.getInfo().setAttribute(ATTR_LAUNCH_MODES, opts);
                this.setDirty();
            }
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
        }
    }

    public void removeModes(Set options) {
        try {
            Set opts = this.getModes();
            if (opts.removeAll(options)) {
                this.getInfo().setAttribute(ATTR_LAUNCH_MODES, opts.size() < 1 ? null : opts);
                this.setDirty();
            }
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
        }
    }

    public void rename(String name) {
        if (!this.getName().equals(name)) {
            this.setName(name);
            this.fRenamed = this.isNew() || !this.getOriginal().getName().equals(name);
        }
    }

    protected void setName(String name) {
        super.setName(name);
        this.setDirty();
    }

    protected boolean isNew() {
        return this.getOriginal() == null;
    }

    protected boolean isMoved() {
        IContainer originalContainer;
        if (this.isNew() || this.fRenamed) {
            return true;
        }
        IContainer newContainer = this.getContainer();
        if (newContainer == (originalContainer = ((LaunchConfiguration)this.getOriginal()).getContainer())) {
            return false;
        }
        if (newContainer == null) {
            return !originalContainer.equals((Object)newContainer);
        }
        return !newContainer.equals((Object)originalContainer);
    }

    public String getMemento() {
        return null;
    }

    protected boolean suppressChangeNotification() {
        return this.fSuppressChange;
    }

    public void setContainer(IContainer container) {
        if (this.equalOrNull(this.getContainer(), container)) {
            return;
        }
        super.setContainer(container);
        this.setDirty();
    }

    public void setAttributes(Map attributes) {
        this.getInfo().setAttributes(attributes);
        this.setDirty();
    }

    public void setMappedResources(IResource[] resources) {
        ArrayList<String> paths = null;
        ArrayList<String> types = null;
        if (resources != null && resources.length > 0) {
            paths = new ArrayList<String>(resources.length);
            types = new ArrayList<String>(resources.length);
            int i = 0;
            while (i < resources.length) {
                IResource resource = resources[i];
                if (resource != null) {
                    paths.add(resource.getFullPath().toPortableString());
                    types.add(new Integer(resource.getType()).toString());
                }
                ++i;
            }
        }
        this.setAttribute(LaunchConfiguration.ATTR_MAPPED_RESOURCE_PATHS, paths);
        this.setAttribute(LaunchConfiguration.ATTR_MAPPED_RESOURCE_TYPES, types);
    }

    public void setPreferredLaunchDelegate(Set modes, String delegateId) {
        if (modes != null) {
            try {
                Map delegates = this.getAttribute(LaunchConfiguration.ATTR_PREFERRED_LAUNCHERS, (Map)null);
                HashMap<String, String> map = new HashMap<String, String>();
                if (delegates != null) {
                    map.putAll(delegates);
                }
                if (delegateId == null) {
                    map.remove(modes.toString());
                } else {
                    map.put(modes.toString(), delegateId);
                }
                this.setAttribute(LaunchConfiguration.ATTR_PREFERRED_LAUNCHERS, map);
            }
            catch (CoreException ce) {
                DebugPlugin.log(ce);
            }
        }
    }

    public ILaunchConfigurationWorkingCopy getWorkingCopy() throws CoreException {
        return new LaunchConfigurationWorkingCopy(this);
    }

    public Object removeAttribute(String attributeName) {
        return this.getInfo().removeAttribute(attributeName);
    }
}

