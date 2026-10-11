/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.ISaveContext
 *  org.eclipse.core.resources.ISaveParticipant
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$IPreferenceChangeListener
 *  org.eclipse.core.runtime.preferences.IEclipsePreferences$PreferenceChangeEvent
 *  org.eclipse.core.runtime.preferences.InstanceScope
 *  org.eclipse.debug.core.DebugEvent
 *  org.eclipse.debug.core.DebugPlugin
 *  org.eclipse.debug.core.IDebugEventSetListener
 *  org.eclipse.debug.core.ILaunch
 *  org.eclipse.debug.core.ILaunchConfiguration
 *  org.eclipse.debug.core.ILaunchConfigurationWorkingCopy
 *  org.eclipse.debug.core.ILaunchesListener
 *  org.eclipse.debug.core.model.IDebugTarget
 *  org.eclipse.debug.core.model.IProcess
 *  org.eclipse.jdt.core.IClasspathEntry
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.JavaCore
 *  org.osgi.framework.BundleContext
 *  org.osgi.service.prefs.BackingStoreException
 */
package org.eclipse.jdt.internal.launching;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.preferences.IEclipsePreferences;
import org.eclipse.core.runtime.preferences.InstanceScope;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationWorkingCopy;
import org.eclipse.debug.core.ILaunchesListener;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.launching.JREContainerInitializer;
import org.eclipse.jdt.internal.launching.JavaClasspathVariablesInitializer;
import org.eclipse.jdt.internal.launching.LaunchingMessages;
import org.eclipse.jdt.internal.launching.LibraryInfo;
import org.eclipse.jdt.internal.launching.VMDefinitionsContainer;
import org.eclipse.jdt.launching.IRuntimeClasspathEntry2;
import org.eclipse.jdt.launching.IVMConnector;
import org.eclipse.jdt.launching.IVMInstall;
import org.eclipse.jdt.launching.IVMInstallChangedListener;
import org.eclipse.jdt.launching.JavaRuntime;
import org.eclipse.jdt.launching.PropertyChangeEvent;
import org.eclipse.jdt.launching.VMStandin;
import org.eclipse.jdt.launching.sourcelookup.ArchiveSourceLocation;
import org.osgi.framework.BundleContext;
import org.osgi.service.prefs.BackingStoreException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class LaunchingPlugin
extends Plugin
implements IEclipsePreferences.IPreferenceChangeListener,
IVMInstallChangedListener,
IResourceChangeListener,
ILaunchesListener,
IDebugEventSetListener {
    public static final String ID_PLUGIN = "org.eclipse.jdt.launching";
    public static final String ID_EXTENSION_POINT_VM_CONNECTORS = "vmConnectors";
    public static final String ID_EXTENSION_POINT_RUNTIME_CLASSPATH_ENTRIES = "runtimeClasspathEntries";
    private static LaunchingPlugin fgLaunchingPlugin;
    private HashMap fVMConnectors = null;
    private HashMap fClasspathEntryExtensions = null;
    private String fOldVMPrefString = "";
    private boolean fIgnoreVMDefPropertyChangeEvents = false;
    private static final String EMPTY_STRING = "";
    private static Map fgLibraryInfoMap;
    private static Map fgInstallTimeMap;
    private static HashSet fgHasChanged;
    private static Object installLock;
    private boolean fBatchingChanges = false;
    private static DocumentBuilder fgXMLParser;
    public static boolean DEBUG;

    static {
        fgLibraryInfoMap = null;
        fgInstallTimeMap = null;
        fgHasChanged = new HashSet();
        installLock = new Object();
        fgXMLParser = null;
        DEBUG = false;
    }

    public LaunchingPlugin() {
        fgLaunchingPlugin = this;
    }

    public static LibraryInfo getLibraryInfo(String javaInstallPath) {
        if (fgLibraryInfoMap == null) {
            LaunchingPlugin.restoreLibraryInfo();
        }
        return (LibraryInfo)fgLibraryInfoMap.get(javaInstallPath);
    }

    public static void setLibraryInfo(String javaInstallPath, LibraryInfo info) {
        if (fgLibraryInfoMap == null) {
            LaunchingPlugin.restoreLibraryInfo();
        }
        if (info == null) {
            fgLibraryInfoMap.remove(javaInstallPath);
            if (fgInstallTimeMap != null) {
                fgInstallTimeMap.remove(javaInstallPath);
                LaunchingPlugin.writeInstallInfo();
            }
        } else {
            fgLibraryInfoMap.put(javaInstallPath, info);
        }
        fgHasChanged.remove(javaInstallPath);
        LaunchingPlugin.saveLibraryInfo();
    }

    public static File getFileInPlugin(IPath path) {
        try {
            URL installURL = new URL(LaunchingPlugin.getDefault().getBundle().getEntry("/"), path.toString());
            URL localURL = FileLocator.toFileURL((URL)installURL);
            return new File(localURL.getFile());
        }
        catch (IOException iOException) {
            return null;
        }
    }

    public static String getUniqueIdentifier() {
        return ID_PLUGIN;
    }

    public static LaunchingPlugin getDefault() {
        if (fgLaunchingPlugin == null) {
            fgLaunchingPlugin = new LaunchingPlugin();
        }
        return fgLaunchingPlugin;
    }

    public static void log(IStatus status) {
        LaunchingPlugin.getDefault().getLog().log(status);
    }

    public static void log(String message) {
        LaunchingPlugin.log((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), 4, message, null));
    }

    public static void log(Throwable e) {
        LaunchingPlugin.log((IStatus)new Status(4, LaunchingPlugin.getUniqueIdentifier(), 4, e.getMessage(), e));
    }

    public void stop(BundleContext context) throws Exception {
        try {
            DebugPlugin.getDefault().getLaunchManager().removeLaunchListener((ILaunchesListener)this);
            DebugPlugin.getDefault().removeDebugEventListener((IDebugEventSetListener)this);
            ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
            ArchiveSourceLocation.closeArchives();
            InstanceScope.INSTANCE.getNode(ID_PLUGIN).removePreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
            JavaRuntime.removeVMInstallChangedListener(this);
            JavaRuntime.saveVMConfiguration();
            fgXMLParser = null;
            ResourcesPlugin.getWorkspace().removeSaveParticipant(ID_PLUGIN);
        }
        finally {
            super.stop(context);
        }
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        DEBUG = "true".equals(Platform.getDebugOption((String)"org.eclipse.jdt.launching/debug"));
        ResourcesPlugin.getWorkspace().addSaveParticipant(ID_PLUGIN, new ISaveParticipant(){

            public void doneSaving(ISaveContext context1) {
            }

            public void prepareToSave(ISaveContext context1) throws CoreException {
            }

            public void rollback(ISaveContext context1) {
            }

            public void saving(ISaveContext context1) throws CoreException {
                try {
                    InstanceScope.INSTANCE.getNode(LaunchingPlugin.ID_PLUGIN).flush();
                }
                catch (BackingStoreException e) {
                    LaunchingPlugin.log(e);
                }
                LaunchingPlugin.writeInstallInfo();
            }
        });
        InstanceScope.INSTANCE.getNode(ID_PLUGIN).addPreferenceChangeListener((IEclipsePreferences.IPreferenceChangeListener)this);
        JavaRuntime.addVMInstallChangedListener(this);
        ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 6);
        DebugPlugin.getDefault().getLaunchManager().addLaunchListener((ILaunchesListener)this);
        DebugPlugin.getDefault().addDebugEventListener((IDebugEventSetListener)this);
    }

    public IVMConnector getVMConnector(String id) {
        if (this.fVMConnectors == null) {
            this.initializeVMConnectors();
        }
        return (IVMConnector)this.fVMConnectors.get(id);
    }

    public IVMConnector[] getVMConnectors() {
        if (this.fVMConnectors == null) {
            this.initializeVMConnectors();
        }
        return this.fVMConnectors.values().toArray(new IVMConnector[this.fVMConnectors.size()]);
    }

    private void initializeVMConnectors() {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ID_PLUGIN, ID_EXTENSION_POINT_VM_CONNECTORS);
        IConfigurationElement[] configs = extensionPoint.getConfigurationElements();
        MultiStatus status = new MultiStatus(LaunchingPlugin.getUniqueIdentifier(), 0, "Exception occurred reading vmConnectors extensions.", null);
        this.fVMConnectors = new HashMap(configs.length);
        int i = 0;
        while (i < configs.length) {
            try {
                IVMConnector vmConnector = (IVMConnector)configs[i].createExecutableExtension("class");
                this.fVMConnectors.put(vmConnector.getIdentifier(), vmConnector);
            }
            catch (CoreException e) {
                status.add(e.getStatus());
            }
            ++i;
        }
        if (!status.isOK()) {
            LaunchingPlugin.log((IStatus)status);
        }
    }

    public IRuntimeClasspathEntry2 newRuntimeClasspathEntry(String id) throws CoreException {
        IConfigurationElement config;
        if (this.fClasspathEntryExtensions == null) {
            this.initializeRuntimeClasspathExtensions();
        }
        if ((config = (IConfigurationElement)this.fClasspathEntryExtensions.get(id)) != null) {
            return (IRuntimeClasspathEntry2)config.createExecutableExtension("class");
        }
        LaunchingPlugin.abort(MessageFormat.format((String)LaunchingMessages.LaunchingPlugin_32, (Object[])new String[]{id}), null);
        return null;
    }

    private void initializeRuntimeClasspathExtensions() {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(ID_PLUGIN, ID_EXTENSION_POINT_RUNTIME_CLASSPATH_ENTRIES);
        IConfigurationElement[] configs = extensionPoint.getConfigurationElements();
        this.fClasspathEntryExtensions = new HashMap(configs.length);
        int i = 0;
        while (i < configs.length) {
            this.fClasspathEntryExtensions.put(configs[i].getAttribute("id"), configs[i]);
            ++i;
        }
    }

    protected void processVMPrefsChanged(String oldValue, String newValue) {
        VMChanges vmChanges;
        block12: {
            block13: {
                this.fBatchingChanges = true;
                vmChanges = null;
                if (newValue != null && !newValue.equals(EMPTY_STRING)) break block12;
                this.fOldVMPrefString = oldValue;
                this.fBatchingChanges = false;
                if (vmChanges == null) break block13;
                JavaRuntime.removeVMInstallChangedListener(vmChanges);
                vmChanges.process();
            }
            return;
        }
        try {
            IVMInstall newDefaultVM;
            String newPrefString;
            String oldPrefString;
            if (oldValue == null || oldValue.equals(EMPTY_STRING)) {
                oldPrefString = this.fOldVMPrefString;
                newPrefString = newValue;
            } else {
                oldPrefString = oldValue;
                newPrefString = newValue;
            }
            vmChanges = new VMChanges();
            JavaRuntime.addVMInstallChangedListener(vmChanges);
            VMDefinitionsContainer oldResults = this.getVMDefinitions(oldPrefString);
            VMDefinitionsContainer newResults = this.getVMDefinitions(newPrefString);
            List deleted = oldResults.getVMList();
            List current = newResults.getValidVMList();
            deleted.removeAll(current);
            Iterator deletedIterator = deleted.iterator();
            while (deletedIterator.hasNext()) {
                VMStandin deletedVMStandin = (VMStandin)deletedIterator.next();
                deletedVMStandin.getVMInstallType().disposeVMInstall(deletedVMStandin.getId());
            }
            Iterator iter = current.iterator();
            while (iter.hasNext()) {
                VMStandin standin = (VMStandin)iter.next();
                standin.convertToRealVM();
            }
            String newDefaultId = newResults.getDefaultVMInstallCompositeID();
            if (newDefaultId != null && (newDefaultVM = JavaRuntime.getVMFromCompositeId(newDefaultId)) != null) {
                try {
                    JavaRuntime.setDefaultVMInstall(newDefaultVM, null, false);
                }
                catch (CoreException ce) {
                    LaunchingPlugin.log(ce);
                }
            }
        }
        catch (Throwable throwable) {
            this.fBatchingChanges = false;
            if (vmChanges != null) {
                JavaRuntime.removeVMInstallChangedListener(vmChanges);
                vmChanges.process();
            }
            throw throwable;
        }
        this.fBatchingChanges = false;
        if (vmChanges != null) {
            JavaRuntime.removeVMInstallChangedListener(vmChanges);
            vmChanges.process();
        }
    }

    private VMDefinitionsContainer getVMDefinitions(String xml) {
        if (xml.length() > 0) {
            try {
                ByteArrayInputStream stream = new ByteArrayInputStream(xml.getBytes("UTF8"));
                return VMDefinitionsContainer.parseXMLIntoContainer(stream);
            }
            catch (IOException e) {
                LaunchingPlugin.log(e);
            }
        }
        return new VMDefinitionsContainer();
    }

    public void defaultVMInstallChanged(IVMInstall previous, IVMInstall current) {
        if (!this.fBatchingChanges) {
            VMChanges changes = new VMChanges();
            changes.defaultVMInstallChanged(previous, current);
            changes.process();
        }
    }

    public void vmAdded(IVMInstall vm) {
    }

    public void vmChanged(PropertyChangeEvent event) {
        if (!this.fBatchingChanges) {
            VMChanges changes = new VMChanges();
            changes.vmChanged(event);
            changes.process();
        }
    }

    public void vmRemoved(IVMInstall vm) {
        if (!this.fBatchingChanges) {
            VMChanges changes = new VMChanges();
            changes.vmRemoved(vm);
            changes.process();
        }
    }

    public void resourceChanged(IResourceChangeEvent event) {
        ArchiveSourceLocation.closeArchives();
    }

    public void setIgnoreVMDefPropertyChangeEvents(boolean ignore) {
        this.fIgnoreVMDefPropertyChangeEvents = ignore;
    }

    public boolean isIgnoreVMDefPropertyChangeEvents() {
        return this.fIgnoreVMDefPropertyChangeEvents;
    }

    private static String getLibraryInfoAsXML() throws CoreException {
        Document doc = DebugPlugin.newDocument();
        Element config = doc.createElement("libraryInfos");
        doc.appendChild(config);
        Iterator locations = fgLibraryInfoMap.keySet().iterator();
        while (locations.hasNext()) {
            String home = (String)locations.next();
            LibraryInfo info = (LibraryInfo)fgLibraryInfoMap.get(home);
            Element locationElemnet = LaunchingPlugin.infoAsElement(doc, info);
            locationElemnet.setAttribute("home", home);
            config.appendChild(locationElemnet);
        }
        return DebugPlugin.serializeDocument((Document)doc);
    }

    private static Element infoAsElement(Document doc, LibraryInfo info) {
        Element libraryElement = doc.createElement("libraryInfo");
        libraryElement.setAttribute("version", info.getVersion());
        LaunchingPlugin.appendPathElements(doc, "bootpath", libraryElement, info.getBootpath());
        LaunchingPlugin.appendPathElements(doc, "extensionDirs", libraryElement, info.getExtensionDirs());
        LaunchingPlugin.appendPathElements(doc, "endorsedDirs", libraryElement, info.getEndorsedDirs());
        return libraryElement;
    }

    private static void appendPathElements(Document doc, String elementType, Element libraryElement, String[] paths) {
        if (paths.length > 0) {
            Element child = doc.createElement(elementType);
            libraryElement.appendChild(child);
            int i = 0;
            while (i < paths.length) {
                String path = paths[i];
                Element entry = doc.createElement("entry");
                child.appendChild(entry);
                entry.setAttribute("path", path);
                ++i;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void saveLibraryInfo() {
        OutputStream stream = null;
        try {
            String xml = LaunchingPlugin.getLibraryInfoAsXML();
            IPath libPath = LaunchingPlugin.getDefault().getStateLocation();
            libPath = libPath.append("libraryInfos.xml");
            File file = libPath.toFile();
            if (!file.exists()) {
                file.createNewFile();
            }
            stream = new BufferedOutputStream(new FileOutputStream(file));
            stream.write(xml.getBytes("UTF8"));
        }
        catch (IOException e) {
            LaunchingPlugin.log(e);
            if (stream == null) return;
            try {
                stream.close();
                return;
            }
            catch (IOException iOException) {}
            return;
        }
        catch (CoreException e) {
            try {
                LaunchingPlugin.log(e);
                if (stream == null) return;
            }
            catch (Throwable throwable) {
                if (stream == null) throw throwable;
                try {
                    stream.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                stream.close();
                return;
            }
            catch (IOException iOException) {}
            return;
        }
        if (stream == null) return;
        try {
            stream.close();
            return;
        }
        catch (IOException iOException) {}
    }

    private static void restoreLibraryInfo() {
        fgLibraryInfoMap = new HashMap(10);
        IPath libPath = LaunchingPlugin.getDefault().getStateLocation();
        File file = (libPath = libPath.append("libraryInfos.xml")).toFile();
        if (file.exists()) {
            try {
                BufferedInputStream stream = new BufferedInputStream(new FileInputStream(file));
                DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                parser.setErrorHandler(new DefaultHandler());
                Element root = parser.parse(new InputSource(stream)).getDocumentElement();
                if (!root.getNodeName().equals("libraryInfos")) {
                    return;
                }
                NodeList list = root.getChildNodes();
                int length = list.getLength();
                int i = 0;
                while (i < length) {
                    Element element;
                    String nodeName;
                    Node node = list.item(i);
                    short type = node.getNodeType();
                    if (type == 1 && (nodeName = (element = (Element)node).getNodeName()).equalsIgnoreCase("libraryInfo")) {
                        String version = element.getAttribute("version");
                        String location = element.getAttribute("home");
                        String[] bootpath = LaunchingPlugin.getPathsFromXML(element, "bootpath");
                        String[] extDirs = LaunchingPlugin.getPathsFromXML(element, "extensionDirs");
                        String[] endDirs = LaunchingPlugin.getPathsFromXML(element, "endorsedDirs");
                        if (location != null) {
                            LibraryInfo info = new LibraryInfo(version, bootpath, extDirs, endDirs);
                            fgLibraryInfoMap.put(location, info);
                        }
                    }
                    ++i;
                }
            }
            catch (IOException e) {
                LaunchingPlugin.log(e);
            }
            catch (ParserConfigurationException e) {
                LaunchingPlugin.log(e);
            }
            catch (SAXException e) {
                LaunchingPlugin.log(e);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public static boolean timeStampChanged(String location) {
        Object object = installLock;
        synchronized (object) {
            block8: {
                long fstamp;
                Long stamp;
                block9: {
                    block7: {
                        if (!fgHasChanged.contains(location)) break block7;
                        return true;
                    }
                    File file = new File(location);
                    if (!file.exists()) break block8;
                    if (fgInstallTimeMap == null) {
                        LaunchingPlugin.readInstallInfo();
                    }
                    stamp = (Long)fgInstallTimeMap.get(location);
                    fstamp = file.lastModified();
                    if (stamp == null || stamp != fstamp) break block9;
                    return false;
                }
                stamp = new Long(fstamp);
                fgInstallTimeMap.put(location, stamp);
                LaunchingPlugin.writeInstallInfo();
                fgHasChanged.add(location);
                return true;
            }
        }
        return false;
    }

    private static void readInstallInfo() {
        block9: {
            fgInstallTimeMap = new HashMap();
            IPath libPath = LaunchingPlugin.getDefault().getStateLocation();
            File file = (libPath = libPath.append(".install.xml")).toFile();
            if (file.exists()) {
                try {
                    BufferedInputStream stream = new BufferedInputStream(new FileInputStream(file));
                    DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                    parser.setErrorHandler(new DefaultHandler());
                    Element root = parser.parse(new InputSource(stream)).getDocumentElement();
                    if (!root.getNodeName().equalsIgnoreCase("dirs")) break block9;
                    NodeList nodes = root.getChildNodes();
                    Node node = null;
                    Element element = null;
                    int i = 0;
                    while (i < nodes.getLength()) {
                        node = nodes.item(i);
                        if (node.getNodeType() == 1 && (element = (Element)node).getNodeName().equalsIgnoreCase("entry")) {
                            String loc = element.getAttribute("loc");
                            String stamp = element.getAttribute("stamp");
                            try {
                                Long l = new Long(stamp);
                                fgInstallTimeMap.put(loc, l);
                            }
                            catch (NumberFormatException numberFormatException) {}
                        }
                        ++i;
                    }
                }
                catch (IOException e) {
                    LaunchingPlugin.log(e);
                }
                catch (ParserConfigurationException e) {
                    LaunchingPlugin.log(e);
                }
                catch (SAXException e) {
                    LaunchingPlugin.log(e);
                }
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static void writeInstallInfo() {
        if (fgInstallTimeMap == null) return;
        OutputStream stream = null;
        try {
            Document doc = DebugPlugin.newDocument();
            Element root = doc.createElement("dirs");
            doc.appendChild(root);
            Map.Entry entry = null;
            Element e = null;
            String key = null;
            Iterator i = fgInstallTimeMap.entrySet().iterator();
            while (i.hasNext()) {
                entry = i.next();
                key = (String)entry.getKey();
                if (fgLibraryInfoMap != null && !fgLibraryInfoMap.containsKey(key)) continue;
                e = doc.createElement("entry");
                root.appendChild(e);
                e.setAttribute("loc", key);
                e.setAttribute("stamp", entry.getValue().toString());
            }
            String xml = DebugPlugin.serializeDocument((Document)doc);
            IPath libPath = LaunchingPlugin.getDefault().getStateLocation();
            File file = (libPath = libPath.append(".install.xml")).toFile();
            if (!file.exists()) {
                file.createNewFile();
            }
            stream = new BufferedOutputStream(new FileOutputStream(file));
            stream.write(xml.getBytes("UTF8"));
        }
        catch (IOException e) {
            LaunchingPlugin.log(e);
            if (stream == null) return;
            try {
                stream.close();
                return;
            }
            catch (IOException iOException) {}
            return;
        }
        catch (CoreException e) {
            try {
                LaunchingPlugin.log(e);
                if (stream == null) return;
            }
            catch (Throwable throwable) {
                if (stream == null) throw throwable;
                try {
                    stream.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                stream.close();
                return;
            }
            catch (IOException iOException) {}
            return;
        }
        if (stream == null) return;
        try {
            stream.close();
            return;
        }
        catch (IOException iOException) {}
    }

    private static String[] getPathsFromXML(Element lib, String pathType) {
        ArrayList<String> paths = new ArrayList<String>();
        NodeList list = lib.getChildNodes();
        int length = list.getLength();
        int i = 0;
        while (i < length) {
            Element element;
            String nodeName;
            Node node = list.item(i);
            short type = node.getNodeType();
            if (type == 1 && (nodeName = (element = (Element)node).getNodeName()).equalsIgnoreCase(pathType)) {
                NodeList entries = element.getChildNodes();
                int numEntries = entries.getLength();
                int j = 0;
                while (j < numEntries) {
                    String path;
                    Element entryElement;
                    String name;
                    Node n = entries.item(j);
                    short t = n.getNodeType();
                    if (t == 1 && (name = (entryElement = (Element)n).getNodeName()).equals("entry") && (path = entryElement.getAttribute("path")) != null && path.length() > 0) {
                        paths.add(path);
                    }
                    ++j;
                }
            }
            ++i;
        }
        return paths.toArray(new String[paths.size()]);
    }

    public void launchesRemoved(ILaunch[] launches) {
        ArchiveSourceLocation.closeArchives();
    }

    public void launchesAdded(ILaunch[] launches) {
    }

    public void launchesChanged(ILaunch[] launches) {
    }

    public void handleDebugEvents(DebugEvent[] events) {
        int i = 0;
        while (i < events.length) {
            Object source;
            DebugEvent event = events[i];
            if (event.getKind() == 8 && ((source = event.getSource()) instanceof IDebugTarget || source instanceof IProcess)) {
                ArchiveSourceLocation.closeArchives();
            }
            ++i;
        }
    }

    public static DocumentBuilder getParser() throws CoreException {
        if (fgXMLParser == null) {
            try {
                fgXMLParser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                fgXMLParser.setErrorHandler(new DefaultHandler());
            }
            catch (ParserConfigurationException e) {
                LaunchingPlugin.abort(LaunchingMessages.LaunchingPlugin_34, e);
            }
            catch (FactoryConfigurationError e) {
                LaunchingPlugin.abort(LaunchingMessages.LaunchingPlugin_34, e);
            }
        }
        return fgXMLParser;
    }

    protected static void abort(String message, Throwable exception) throws CoreException {
        Status status = new Status(4, LaunchingPlugin.getUniqueIdentifier(), 0, message, exception);
        throw new CoreException((IStatus)status);
    }

    public static boolean sameURL(URL url1, URL url2) {
        if (url1 == url2) {
            return true;
        }
        if (url1 == null ^ url2 == null) {
            return false;
        }
        boolean isFile1 = "file".equalsIgnoreCase(url1.getProtocol());
        boolean isFile2 = "file".equalsIgnoreCase(url2.getProtocol());
        if (isFile1 && isFile2) {
            File file1 = new File(url1.getFile());
            File file2 = new File(url2.getFile());
            return file1.equals(file2);
        }
        if (isFile1 ^ isFile2) {
            return false;
        }
        return LaunchingPlugin.getExternalForm(url1).equals(LaunchingPlugin.getExternalForm(url2));
    }

    private static String getExternalForm(URL url) {
        String externalForm = url.toExternalForm();
        if (externalForm == null) {
            return EMPTY_STRING;
        }
        if ((externalForm = externalForm.trim()).endsWith("/")) {
            externalForm = externalForm.substring(0, externalForm.length() - 1);
        }
        return externalForm.toLowerCase();
    }

    public void preferenceChange(IEclipsePreferences.PreferenceChangeEvent event) {
        String property = event.getKey();
        if (property.equals(JavaRuntime.PREF_VM_XML) && !this.isIgnoreVMDefPropertyChangeEvents()) {
            this.processVMPrefsChanged((String)event.getOldValue(), (String)event.getNewValue());
        }
    }

    class JREUpdateJob
    extends Job {
        private VMChanges fChanges;

        public JREUpdateJob(VMChanges changes) {
            super(LaunchingMessages.LaunchingPlugin_1);
            this.fChanges = changes;
            this.setSystem(true);
        }

        protected IStatus run(IProgressMonitor monitor) {
            try {
                this.fChanges.doit(monitor);
            }
            catch (CoreException e) {
                return e.getStatus();
            }
            return Status.OK_STATUS;
        }
    }

    class VMChanges
    implements IVMInstallChangedListener {
        private boolean fDefaultChanged = false;
        private HashMap fRenamedContainerIds = new HashMap();

        VMChanges() {
        }

        private IPath getContainerId(IVMInstall vm) {
            String name;
            if (vm != null && (name = vm.getName()) != null) {
                Path path = new Path(JavaRuntime.JRE_CONTAINER);
                path = path.append((IPath)new Path(vm.getVMInstallType().getId()));
                path = path.append((IPath)new Path(name));
                return path;
            }
            return null;
        }

        public void defaultVMInstallChanged(IVMInstall previous, IVMInstall current) {
            this.fDefaultChanged = true;
        }

        public void vmAdded(IVMInstall vm) {
        }

        public void vmChanged(PropertyChangeEvent event) {
            String property = event.getProperty();
            IVMInstall vm = (IVMInstall)event.getSource();
            if (property.equals(IVMInstallChangedListener.PROPERTY_NAME)) {
                IPath newId = this.getContainerId(vm);
                Path oldId = new Path(JavaRuntime.JRE_CONTAINER);
                oldId = oldId.append(vm.getVMInstallType().getId());
                String oldName = (String)event.getOldValue();
                if (oldName != null) {
                    oldId = oldId.append(oldName);
                    this.fRenamedContainerIds.put(oldId, newId);
                    try {
                        ILaunchConfiguration[] configs = DebugPlugin.getDefault().getLaunchManager().getLaunchConfigurations();
                        String container = null;
                        ILaunchConfigurationWorkingCopy wc = null;
                        Path cpath = null;
                        int i = 0;
                        while (i < configs.length) {
                            container = configs[i].getAttribute(JavaRuntime.JRE_CONTAINER, null);
                            if (container != null && (cpath = new Path(container)).lastSegment().equals(oldName)) {
                                cpath = cpath.removeLastSegments(1).append(newId.lastSegment()).addTrailingSeparator();
                                wc = configs[i].getWorkingCopy();
                                wc.setAttribute(JavaRuntime.JRE_CONTAINER, cpath.toString());
                                wc.doSave();
                            }
                            ++i;
                        }
                    }
                    catch (CoreException coreException) {}
                }
            }
        }

        public void vmRemoved(IVMInstall vm) {
        }

        public void process() {
            JREUpdateJob job = new JREUpdateJob(this);
            job.schedule();
        }

        protected void doit(IProgressMonitor monitor) throws CoreException {
            IWorkspaceRunnable runnable = new IWorkspaceRunnable(this){
                final /* synthetic */ VMChanges this$1;
                {
                    this.this$1 = vMChanges;
                }

                public void run(IProgressMonitor monitor1) throws CoreException {
                    IJavaProject[] projects = JavaCore.create((IWorkspaceRoot)ResourcesPlugin.getWorkspace().getRoot()).getJavaProjects();
                    monitor1.beginTask(LaunchingMessages.LaunchingPlugin_0, projects.length + 1);
                    VMChanges.access$0(this.this$1, monitor1, projects);
                    monitor1.done();
                }
            };
            JavaCore.run((IWorkspaceRunnable)runnable, null, (IProgressMonitor)monitor);
        }

        private void rebind(IProgressMonitor monitor, IJavaProject[] projects) throws CoreException {
            if (this.fDefaultChanged) {
                JavaClasspathVariablesInitializer initializer = new JavaClasspathVariablesInitializer();
                initializer.initialize("JRE_LIB");
                initializer.initialize("JRE_SRC");
                initializer.initialize("JRE_SRCROOT");
            }
            monitor.worked(1);
            int length = projects.length;
            HashMap<IPath, ArrayList<IJavaProject>> projectsMap = new HashMap<IPath, ArrayList<IJavaProject>>();
            int i = 0;
            while (i < length) {
                IJavaProject project = projects[i];
                IClasspathEntry[] entries = project.getRawClasspath();
                boolean replace = false;
                int j = 0;
                while (j < entries.length) {
                    IClasspathEntry entry = entries[j];
                    switch (entry.getEntryKind()) {
                        case 5: {
                            IClasspathEntry newEntry;
                            IPath renamed;
                            IPath reference = entry.getPath();
                            IPath newBinding = null;
                            String firstSegment = reference.segment(0);
                            if (!JavaRuntime.JRE_CONTAINER.equals(firstSegment)) break;
                            if (reference.segmentCount() > 1 && (renamed = (IPath)this.fRenamedContainerIds.get(reference)) != null) {
                                newBinding = renamed;
                            }
                            if (newBinding == null) {
                                ArrayList<IJavaProject> projectsList = (ArrayList<IJavaProject>)projectsMap.get(reference);
                                if (projectsList == null) {
                                    projectsList = new ArrayList<IJavaProject>(length);
                                    projectsMap.put(reference, projectsList);
                                }
                                projectsList.add(project);
                                break;
                            }
                            entries[j] = newEntry = JavaCore.newContainerEntry(newBinding, (boolean)entry.isExported());
                            replace = true;
                            break;
                        }
                    }
                    ++j;
                }
                if (replace) {
                    project.setRawClasspath(entries, null);
                }
                monitor.worked(1);
                ++i;
            }
            Iterator references = projectsMap.keySet().iterator();
            while (references.hasNext()) {
                IPath reference = (IPath)references.next();
                List projectsList = (List)projectsMap.get(reference);
                IJavaProject[] referenceProjects = new IJavaProject[projectsList.size()];
                projectsList.toArray(referenceProjects);
                JREContainerInitializer initializer = new JREContainerInitializer();
                initializer.initialize(reference, referenceProjects);
            }
        }

        static /* synthetic */ void access$0(VMChanges vMChanges, IProgressMonitor iProgressMonitor, IJavaProject[] iJavaProjectArray) throws CoreException {
            vMChanges.rebind(iProgressMonitor, iJavaProjectArray);
        }
    }
}

