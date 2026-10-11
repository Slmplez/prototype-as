/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.filesystem.EFS
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.SubProgressMonitor
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.io.IOException;
import java.io.StringReader;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.eclipse.core.filesystem.EFS;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.core.ILaunchDelegate;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.Launch;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate;
import org.eclipse.debug.core.model.ILaunchConfigurationDelegate2;
import org.eclipse.debug.core.model.IPersistableSourceLocator;
import org.eclipse.debug.core.sourcelookup.IPersistableSourceLocator2;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.LaunchConfigurationInfo;
import org.eclipse.debug.internal.core.LaunchConfigurationType;
import org.eclipse.debug.internal.core.LaunchConfigurationWorkingCopy;
import org.eclipse.debug.internal.core.LaunchManager;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class LaunchConfiguration
extends PlatformObject
implements ILaunchConfiguration {
    public static final String ATTR_MAPPED_RESOURCE_PATHS = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".MAPPED_RESOURCE_PATHS";
    public static final String ATTR_MAPPED_RESOURCE_TYPES = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".MAPPED_RESOURCE_TYPES";
    public static final String ATTR_LAUNCH_MODES = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".LAUNCH_MODES";
    public static final String ATTR_PREFERRED_LAUNCHERS = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".preferred_launchers";
    protected static final IStatus promptStatus = new Status(1, "org.eclipse.debug.ui", 200, "", null);
    protected static final IStatus delegateNotAvailable = new Status(1, "org.eclipse.debug.core", 226, "", null);
    protected static final IStatus duplicateDelegates = new Status(1, "org.eclipse.debug.core", 227, "", null);
    private String fName;
    private IContainer fContainer;

    protected LaunchConfiguration(String name, IContainer container) {
        this.initialize();
        this.setName(name);
        this.setContainer(container);
    }

    protected void initialize() {
    }

    protected LaunchConfiguration(IFile file) {
        this(LaunchConfiguration.getSimpleName(file.getName()), file.getParent());
    }

    protected static String getSimpleName(String fileName) {
        Path path = new Path(fileName);
        if ("launch".equals(path.getFileExtension())) {
            return path.removeFileExtension().toString();
        }
        return fileName;
    }

    protected LaunchConfiguration(String memento) throws CoreException {
        Exception ex = null;
        try {
            Element root = null;
            DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            parser.setErrorHandler(new DefaultHandler());
            StringReader reader = new StringReader(memento);
            InputSource source = new InputSource(reader);
            root = parser.parse(source).getDocumentElement();
            String localString = root.getAttribute("local");
            String path = root.getAttribute("path");
            String message = null;
            if (path == null || "".equals(path)) {
                message = DebugCoreMessages.LaunchConfiguration_18;
            } else if (localString == null || "".equals(localString)) {
                message = DebugCoreMessages.LaunchConfiguration_19;
            }
            if (message != null) {
                throw new CoreException(this.newStatus(message, 5013, null));
            }
            boolean local = Boolean.valueOf(localString);
            Path iPath = new Path(path);
            String name = LaunchConfiguration.getSimpleName(iPath.lastSegment());
            IContainer container = null;
            if (!local) {
                container = ResourcesPlugin.getWorkspace().getRoot().getFile((IPath)iPath).getParent();
            }
            this.setName(name);
            this.setContainer(container);
            return;
        }
        catch (ParserConfigurationException e) {
            ex = e;
        }
        catch (SAXException e) {
            ex = e;
        }
        catch (IOException e) {
            ex = e;
        }
        IStatus s = this.newStatus(DebugCoreMessages.LaunchConfiguration_17, 5013, ex);
        throw new CoreException(s);
    }

    public boolean contentsEqual(ILaunchConfiguration object) {
        try {
            if (object instanceof LaunchConfiguration) {
                LaunchConfiguration otherConfig = (LaunchConfiguration)object;
                return this.getName().equals(otherConfig.getName()) && this.getType().equals(otherConfig.getType()) && this.equalOrNull(this.getContainer(), otherConfig.getContainer()) && this.getInfo().equals(otherConfig.getInfo());
            }
            return false;
        }
        catch (CoreException coreException) {
            return false;
        }
    }

    public ILaunchConfigurationWorkingCopy copy(String name) throws CoreException {
        LaunchConfigurationWorkingCopy copy = new LaunchConfigurationWorkingCopy(this, name);
        return copy;
    }

    public void delete() throws CoreException {
        if (this.exists()) {
            IFile file = this.getFile();
            if (file == null) {
                IFileStore store = this.getFileStore();
                if (store != null) {
                    store.delete(0, null);
                    if (store.fetchInfo().exists()) {
                        throw new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchConfiguration_Failed_to_delete_launch_configuration__1, null));
                    }
                }
            } else {
                IStatus status;
                if (file.isReadOnly() && !(status = ResourcesPlugin.getWorkspace().validateEdit(new IFile[]{file}, null)).isOK()) {
                    throw new CoreException(status);
                }
                file.delete(true, null);
            }
            this.getLaunchManager().launchConfigurationDeleted(this);
        }
    }

    public boolean equals(Object object) {
        if (object instanceof ILaunchConfiguration) {
            if (this.isWorkingCopy()) {
                return this == object;
            }
            LaunchConfiguration config = (LaunchConfiguration)object;
            if (!config.isWorkingCopy()) {
                return this.getName().equals(config.getName()) && this.equalOrNull(this.getContainer(), config.getContainer());
            }
        }
        return false;
    }

    protected boolean equalOrNull(Object o1, Object o2) {
        if (o1 == null) {
            return o2 == null;
        }
        if (o2 != null) {
            return o1.equals(o2);
        }
        return false;
    }

    public boolean exists() {
        IFile file = this.getFile();
        if (file != null) {
            return file.exists();
        }
        try {
            IFileStore store = this.getFileStore();
            if (store != null) {
                return store.fetchInfo().exists();
            }
        }
        catch (CoreException coreException) {}
        return false;
    }

    public boolean getAttribute(String attributeName, boolean defaultValue) throws CoreException {
        return this.getInfo().getBooleanAttribute(attributeName, defaultValue);
    }

    public int getAttribute(String attributeName, int defaultValue) throws CoreException {
        return this.getInfo().getIntAttribute(attributeName, defaultValue);
    }

    public List getAttribute(String attributeName, List defaultValue) throws CoreException {
        return this.getInfo().getListAttribute(attributeName, defaultValue);
    }

    public Set getAttribute(String attributeName, Set defaultValue) throws CoreException {
        return this.getInfo().getSetAttribute(attributeName, defaultValue);
    }

    public Map getAttribute(String attributeName, Map defaultValue) throws CoreException {
        return this.getInfo().getMapAttribute(attributeName, defaultValue);
    }

    public String getAttribute(String attributeName, String defaultValue) throws CoreException {
        return this.getInfo().getStringAttribute(attributeName, defaultValue);
    }

    public Map getAttributes() throws CoreException {
        LaunchConfigurationInfo info = this.getInfo();
        return info.getAttributes();
    }

    public String getCategory() throws CoreException {
        return this.getType().getCategory();
    }

    public IFile getFile() {
        IContainer container = this.getContainer();
        if (container != null) {
            return container.getFile((IPath)new Path(this.getFileName()));
        }
        return null;
    }

    protected String getFileName() {
        StringBuffer buf = new StringBuffer(this.getName());
        buf.append('.');
        buf.append("launch");
        return buf.toString();
    }

    protected LaunchConfigurationInfo getInfo() throws CoreException {
        return this.getLaunchManager().getInfo(this);
    }

    protected LaunchManager getLaunchManager() {
        return (LaunchManager)DebugPlugin.getDefault().getLaunchManager();
    }

    public IPath getLocation() {
        try {
            File localFile;
            IFileStore store = this.getFileStore();
            if (store != null && (localFile = store.toLocalFile(0, null)) != null) {
                return new Path(localFile.getAbsolutePath());
            }
        }
        catch (CoreException coreException) {}
        return null;
    }

    public IFileStore getFileStore() throws CoreException {
        if (this.isLocal()) {
            return EFS.getLocalFileSystem().fromLocalFile(LaunchManager.LOCAL_LAUNCH_CONFIGURATION_CONTAINER_PATH.append(this.getFileName()).toFile());
        }
        URI uri = this.getFile().getLocationURI();
        if (uri != null) {
            return EFS.getStore((URI)uri);
        }
        return null;
    }

    public IResource[] getMappedResources() throws CoreException {
        List paths = this.getAttribute(ATTR_MAPPED_RESOURCE_PATHS, (List)null);
        if (paths == null || paths.size() == 0) {
            return null;
        }
        List types = this.getAttribute(ATTR_MAPPED_RESOURCE_TYPES, (List)null);
        if (types == null || types.size() != paths.size()) {
            throw new CoreException(this.newStatus(DebugCoreMessages.LaunchConfiguration_0, 125, null));
        }
        ArrayList<IWorkspaceRoot> list = new ArrayList<IWorkspaceRoot>();
        IWorkspaceRoot root = ResourcesPlugin.getWorkspace().getRoot();
        int i = 0;
        while (i < paths.size()) {
            String pathStr = (String)paths.get(i);
            String typeStr = (String)types.get(i);
            int type = -1;
            try {
                type = Integer.decode(typeStr);
            }
            catch (NumberFormatException e) {
                throw new CoreException(this.newStatus(DebugCoreMessages.LaunchConfiguration_0, 125, e));
            }
            IPath path = Path.fromPortableString((String)pathStr);
            IWorkspaceRoot res = null;
            switch (type) {
                case 1: {
                    res = root.getFile(path);
                    break;
                }
                case 4: {
                    res = root.getProject(pathStr);
                    break;
                }
                case 2: {
                    res = root.getFolder(path);
                    break;
                }
                case 8: {
                    res = root;
                    break;
                }
                default: {
                    throw new CoreException(this.newStatus(DebugCoreMessages.LaunchConfiguration_0, 125, null));
                }
            }
            if (res != null) {
                list.add(res);
            }
            ++i;
        }
        if (list.isEmpty()) {
            return null;
        }
        return list.toArray(new IResource[list.size()]);
    }

    public String getMemento() throws CoreException {
        IPath relativePath = null;
        IFile file = this.getFile();
        boolean local = true;
        if (file == null) {
            relativePath = new Path(this.getName());
        } else {
            local = false;
            relativePath = file.getFullPath();
        }
        Exception e = null;
        try {
            Document doc = LaunchManager.getDocument();
            Element node = doc.createElement("launchConfiguration");
            doc.appendChild(node);
            node.setAttribute("local", Boolean.valueOf(local).toString());
            node.setAttribute("path", relativePath.toString());
            return LaunchManager.serializeDocument(doc);
        }
        catch (IOException ioe) {
            e = ioe;
        }
        catch (ParserConfigurationException pce) {
            e = pce;
        }
        catch (TransformerException te) {
            e = te;
        }
        IStatus status = this.newStatus(DebugCoreMessages.LaunchConfiguration_16, 5013, e);
        throw new CoreException(status);
    }

    public String getName() {
        return this.fName;
    }

    protected IContainer getContainer() {
        return this.fContainer;
    }

    public Set getModes() throws CoreException {
        Set options = this.getAttribute(ATTR_LAUNCH_MODES, (Set)null);
        return options != null ? new HashSet(options) : new HashSet(0);
    }

    public ILaunchConfigurationType getType() throws CoreException {
        return this.getInfo().getType();
    }

    public ILaunchConfigurationWorkingCopy getWorkingCopy() throws CoreException {
        return new LaunchConfigurationWorkingCopy(this);
    }

    public int hashCode() {
        IContainer container = this.getContainer();
        if (container == null) {
            return this.getName().hashCode();
        }
        return this.getName().hashCode() + container.hashCode();
    }

    public boolean hasAttribute(String attributeName) throws CoreException {
        return this.getInfo().hasAttribute(attributeName);
    }

    protected void initializeSourceLocator(ILaunch launch) throws CoreException {
        if (launch.getSourceLocator() == null) {
            String type = this.getAttribute(ATTR_SOURCE_LOCATOR_ID, (String)null);
            if (type == null) {
                type = this.getType().getSourceLocatorId();
            }
            if (type != null) {
                IPersistableSourceLocator locator = this.getLaunchManager().newSourceLocator(type);
                String memento = this.getAttribute(ATTR_SOURCE_LOCATOR_MEMENTO, (String)null);
                if (memento == null) {
                    locator.initializeDefaults(this);
                } else if (locator instanceof IPersistableSourceLocator2) {
                    ((IPersistableSourceLocator2)locator).initializeFromMemento(memento, this);
                } else {
                    locator.initializeFromMemento(memento);
                }
                launch.setSourceLocator(locator);
            }
        }
    }

    public boolean isLocal() {
        return this.getContainer() == null;
    }

    public boolean isMigrationCandidate() throws CoreException {
        return ((LaunchConfigurationType)this.getType()).isMigrationCandidate(this);
    }

    public boolean isWorkingCopy() {
        return false;
    }

    public ILaunch launch(String mode, IProgressMonitor monitor) throws CoreException {
        return this.launch(mode, monitor, false);
    }

    public ILaunch launch(String mode, IProgressMonitor monitor, boolean build) throws CoreException {
        return this.launch(mode, monitor, build, true);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public ILaunch launch(String mode, IProgressMonitor monitor, boolean build, boolean register) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        if (build) {
            monitor.beginTask("", 23);
        } else {
            monitor.beginTask("", 13);
        }
        monitor.subTask(DebugCoreMessages.LaunchConfiguration_9);
        try {
            Status status;
            ILaunchConfigurationDelegate delegate;
            block41: {
                Set modes = this.getModes();
                modes.add(mode);
                ILaunchDelegate[] delegates = this.getType().getDelegates(modes);
                delegate = null;
                if (delegates.length == 1) {
                    delegate = delegates[0].getDelegate();
                } else {
                    if (delegates.length == 0) {
                        IStatusHandler handler = DebugPlugin.getDefault().getStatusHandler(promptStatus);
                        if (handler != null) {
                            handler.handleStatus(delegateNotAvailable, new Object[]{this, mode});
                        }
                        Status status2 = new Status(8, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.LaunchConfiguration_11, null);
                        throw new CoreException((IStatus)status2);
                    }
                    ILaunchDelegate del = this.getPreferredDelegate(modes);
                    if (del == null) {
                        del = this.getType().getPreferredDelegate(modes);
                    }
                    if (del == null) {
                        IStatusHandler handler = DebugPlugin.getDefault().getStatusHandler(promptStatus);
                        status = null;
                        if (handler != null) {
                            status = (IStatus)handler.handleStatus(duplicateDelegates, new Object[]{this, mode});
                        }
                        if (status != null && status.isOK()) {
                            del = this.getPreferredDelegate(modes);
                            if (del == null) {
                                del = this.getType().getPreferredDelegate(modes);
                            }
                            if (del == null) {
                                status = new Status(8, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.LaunchConfiguration_13, null);
                                throw new CoreException((IStatus)status);
                            }
                            delegate = del.getDelegate();
                            break block41;
                        } else {
                            status = new Status(8, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.LaunchConfiguration_13, null);
                            throw new CoreException((IStatus)status);
                        }
                    }
                    delegate = del.getDelegate();
                }
            }
            ILaunchConfigurationDelegate2 delegate2 = null;
            if (delegate instanceof ILaunchConfigurationDelegate2) {
                delegate2 = (ILaunchConfigurationDelegate2)delegate;
            }
            ILaunch launch = null;
            if (delegate2 != null) {
                launch = delegate2.getLaunch(this, mode);
            }
            if (launch == null) {
                launch = new Launch(this, mode, null);
            } else if (!mode.equals(launch.getLaunchMode())) {
                status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, MessageFormat.format((String)DebugCoreMessages.LaunchConfiguration_14, (Object[])new String[]{mode, launch.getLaunchMode()}), null);
                throw new CoreException((IStatus)status);
            }
            launch.setAttribute("org.eclipse.debug.core.launch.timestamp", Long.toString(System.currentTimeMillis()));
            boolean captureOutput = this.getAttribute("org.eclipse.debug.core.capture_output", true);
            if (!captureOutput) {
                launch.setAttribute("org.eclipse.debug.core.capture_output", "false");
            } else {
                launch.setAttribute("org.eclipse.debug.core.capture_output", null);
            }
            launch.setAttribute("org.eclipse.debug.ui.ATTR_CONSOLE_ENCODING", this.getLaunchManager().getEncoding(this));
            monitor.subTask(DebugCoreMessages.LaunchConfiguration_8);
            if (delegate2 != null) {
                if (!delegate2.preLaunchCheck(this, mode, (IProgressMonitor)new SubProgressMonitor(monitor, 1))) {
                    ILaunch iLaunch = launch;
                    return iLaunch;
                }
            } else {
                monitor.worked(1);
            }
            if (build) {
                SubProgressMonitor buildMonitor = new SubProgressMonitor(monitor, 10, 4);
                buildMonitor.beginTask(DebugCoreMessages.LaunchConfiguration_7, 10);
                buildMonitor.subTask(DebugCoreMessages.LaunchConfiguration_6);
                if (delegate2 != null) {
                    build = delegate2.buildForLaunch(this, mode, (IProgressMonitor)new SubProgressMonitor((IProgressMonitor)buildMonitor, 7));
                }
                if (build) {
                    buildMonitor.subTask(DebugCoreMessages.LaunchConfiguration_5);
                    ResourcesPlugin.getWorkspace().build(10, (IProgressMonitor)new SubProgressMonitor((IProgressMonitor)buildMonitor, 3));
                } else {
                    buildMonitor.worked(3);
                }
            }
            monitor.subTask(DebugCoreMessages.LaunchConfiguration_4);
            if (delegate2 != null) {
                if (!delegate2.finalLaunchCheck(this, mode, (IProgressMonitor)new SubProgressMonitor(monitor, 1))) {
                    ILaunch iLaunch = launch;
                    return iLaunch;
                }
            } else {
                monitor.worked(1);
            }
            if (register) {
                this.getLaunchManager().addLaunch(launch);
            }
            try {
                monitor.subTask(DebugCoreMessages.LaunchConfiguration_3);
                this.initializeSourceLocator(launch);
                monitor.worked(1);
                monitor.subTask(DebugCoreMessages.LaunchConfiguration_2);
                delegate.launch(this, mode, launch, (IProgressMonitor)new SubProgressMonitor(monitor, 10));
            }
            catch (CoreException e) {
                if (launch.hasChildren()) throw e;
                this.getLaunchManager().removeLaunch(launch);
                throw e;
            }
            catch (RuntimeException e) {
                if (launch.hasChildren()) throw e;
                this.getLaunchManager().removeLaunch(launch);
                throw e;
            }
            if (monitor.isCanceled()) {
                this.getLaunchManager().removeLaunch(launch);
            }
            ILaunch iLaunch = launch;
            return iLaunch;
        }
        finally {
            monitor.done();
        }
    }

    public void migrate() throws CoreException {
        ((LaunchConfigurationType)this.getType()).migrate(this);
    }

    protected IStatus newStatus(String message, int code, Throwable e) {
        return new Status(4, DebugPlugin.getUniqueIdentifier(), code, message, e);
    }

    protected void setName(String name) {
        this.fName = name;
    }

    protected void setContainer(IContainer container) {
        this.fContainer = container;
    }

    public boolean supportsMode(String mode) throws CoreException {
        return this.getType().supportsMode(mode);
    }

    public boolean isReadOnly() {
        try {
            IFileStore fileStore = this.getFileStore();
            if (fileStore != null) {
                return fileStore.fetchInfo().getAttribute(2);
            }
        }
        catch (CoreException coreException) {}
        return true;
    }

    public ILaunchDelegate getPreferredDelegate(Set modes) throws CoreException {
        String id;
        Map delegates = this.getAttribute(ATTR_PREFERRED_LAUNCHERS, (Map)null);
        if (delegates != null && (id = (String)delegates.get(modes.toString())) != null) {
            return this.getLaunchManager().getLaunchDelegate(id);
        }
        return null;
    }

    public String toString() {
        return this.getName();
    }
}

