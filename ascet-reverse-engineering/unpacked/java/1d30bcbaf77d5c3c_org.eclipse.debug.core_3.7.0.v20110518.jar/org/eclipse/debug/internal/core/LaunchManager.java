/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.filesystem.IFileStore
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeEvent
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IResourceDelta
 *  org.eclipse.core.resources.IResourceDeltaVisitor
 *  org.eclipse.core.resources.IResourceProxy
 *  org.eclipse.core.resources.IResourceProxyVisitor
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.variables.VariablesPlugin
 */
package org.eclipse.debug.internal.core;

import com.ibm.icu.text.MessageFormat;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.StringTokenizer;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.eclipse.core.filesystem.IFileStore;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeEvent;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IResourceDelta;
import org.eclipse.core.resources.IResourceDeltaVisitor;
import org.eclipse.core.resources.IResourceProxy;
import org.eclipse.core.resources.IResourceProxyVisitor;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.variables.VariablesPlugin;
import org.eclipse.debug.core.DebugException;
import org.eclipse.debug.core.DebugPlugin;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchConfigurationListener;
import org.eclipse.debug.core.ILaunchConfigurationType;
import org.eclipse.debug.core.ILaunchDelegate;
import org.eclipse.debug.core.ILaunchListener;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.ILaunchMode;
import org.eclipse.debug.core.ILaunchesListener;
import org.eclipse.debug.core.ILaunchesListener2;
import org.eclipse.debug.core.model.IDebugTarget;
import org.eclipse.debug.core.model.IDisconnect;
import org.eclipse.debug.core.model.IPersistableSourceLocator;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.sourcelookup.AbstractSourceLookupDirector;
import org.eclipse.debug.core.sourcelookup.ISourceContainerType;
import org.eclipse.debug.core.sourcelookup.ISourcePathComputer;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.LaunchConfiguration;
import org.eclipse.debug.internal.core.LaunchConfigurationComparator;
import org.eclipse.debug.internal.core.LaunchConfigurationInfo;
import org.eclipse.debug.internal.core.LaunchConfigurationType;
import org.eclipse.debug.internal.core.LaunchDelegate;
import org.eclipse.debug.internal.core.LaunchMode;
import org.eclipse.debug.internal.core.Preferences;
import org.eclipse.debug.internal.core.StepFilterManager;
import org.eclipse.debug.internal.core.sourcelookup.SourceContainerType;
import org.eclipse.debug.internal.core.sourcelookup.SourcePathComputer;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class LaunchManager
extends PlatformObject
implements ILaunchManager,
IResourceChangeListener {
    protected static final String PREF_PREFERRED_DELEGATES = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".PREFERRED_DELEGATES";
    private static final String DEBUG_UI = "org.eclipse.debug.ui";
    static final String[] UNSUPPORTED_WIN32_CONFIG_NAMES = new String[]{"aux", "clock$", "com1", "com2", "com3", "com4", "com5", "com6", "com7", "com8", "com9", "con", "lpt1", "lpt2", "lpt3", "lpt4", "lpt5", "lpt6", "lpt7", "lpt8", "lpt9", "nul", "prn"};
    static final char[] DISALLOWED_CONFIG_NAME_CHARS;
    protected static final IStatus promptStatus;
    private StepFilterManager fStepFilterManager = null;
    public static final int ADDED = 0;
    public static final int REMOVED = 1;
    public static final int CHANGED = 2;
    public static final int TERMINATE = 3;
    private static HashMap fgNativeEnv;
    private static HashMap fgNativeEnvCasePreserved;
    public static final IPath LOCAL_LAUNCH_CONFIGURATION_CONTAINER_PATH;
    private List fLaunchConfigurationTypes = null;
    private Map fLaunchConfigurations = new HashMap(10);
    private String[] fSortedConfigNames = null;
    private List fLaunchConfigurationIndex = null;
    private Map fComparators = null;
    private Map fLaunchModes = null;
    private HashMap fLaunchDelegates = null;
    private Set fPreferredDelegates = null;
    private List fLaunches = new ArrayList(10);
    private Set fLaunchSet = new HashSet(10);
    private ListenerList fListeners = new ListenerList();
    private ListenerList fLaunchesListeners = new ListenerList();
    private LaunchManagerVisitor fgVisitor;
    private MappedResourceVisitor fgMRVisitor;
    private boolean fListening = false;
    private ListenerList fLaunchConfigurationListeners = new ListenerList();
    private Map fSourceLocators = null;
    private ILaunchConfiguration fFrom;
    private ILaunchConfiguration fTo;
    private Map sourceContainerTypes;
    private Map sourcePathComputers;
    private Set fActiveModes;

    static {
        char[] cArray = new char[12];
        cArray[0] = 64;
        cArray[1] = 38;
        cArray[2] = 92;
        cArray[3] = 47;
        cArray[4] = 58;
        cArray[5] = 42;
        cArray[6] = 63;
        cArray[7] = 34;
        cArray[8] = 60;
        cArray[9] = 62;
        cArray[10] = 124;
        DISALLOWED_CONFIG_NAME_CHARS = cArray;
        promptStatus = new Status(1, DEBUG_UI, 200, "", null);
        fgNativeEnv = null;
        fgNativeEnvCasePreserved = null;
        LOCAL_LAUNCH_CONFIGURATION_CONTAINER_PATH = DebugPlugin.getDefault().getStateLocation().append(".launches");
    }

    public static Document getDocument() throws ParserConfigurationException {
        DocumentBuilderFactory dfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder docBuilder = dfactory.newDocumentBuilder();
        Document doc = docBuilder.newDocument();
        return doc;
    }

    public static String serializeDocument(Document doc) throws TransformerException, IOException {
        ByteArrayOutputStream s = new ByteArrayOutputStream();
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer();
        transformer.setOutputProperty("method", "xml");
        transformer.setOutputProperty("indent", "yes");
        DOMSource source = new DOMSource(doc);
        StreamResult outputTarget = new StreamResult(s);
        transformer.transform(source, outputTarget);
        return s.toString("UTF8");
    }

    public void addLaunch(ILaunch launch) {
        if (this.internalAddLaunch(launch)) {
            this.fireUpdate(launch, 0);
            this.fireUpdate(new ILaunch[]{launch}, 0);
        }
    }

    public void addLaunchConfigurationListener(ILaunchConfigurationListener listener) {
        this.fLaunchConfigurationListeners.add((Object)listener);
    }

    public void addLaunches(ILaunch[] launches) {
        ArrayList<ILaunch> added = new ArrayList<ILaunch>(launches.length);
        int i = 0;
        while (i < launches.length) {
            if (this.internalAddLaunch(launches[i])) {
                added.add(launches[i]);
            }
            ++i;
        }
        if (!added.isEmpty()) {
            ILaunch[] addedLaunches = added.toArray(new ILaunch[added.size()]);
            this.fireUpdate(addedLaunches, 0);
            int i2 = 0;
            while (i2 < addedLaunches.length) {
                this.fireUpdate(launches[i2], 0);
                ++i2;
            }
        }
    }

    public void addLaunchListener(ILaunchesListener listener) {
        this.fLaunchesListeners.add((Object)listener);
    }

    public void addLaunchListener(ILaunchListener listener) {
        this.fListeners.add((Object)listener);
    }

    private void cacheNativeEnvironment(Map cache) {
        try {
            String nativeCommand = null;
            boolean isWin9xME = false;
            String fileName = null;
            if (Platform.getOS().equals("win32")) {
                String osName = System.getProperty("os.name");
                boolean bl = isWin9xME = osName != null && (osName.startsWith("Windows 9") || osName.startsWith("Windows ME"));
                if (isWin9xME) {
                    IPath stateLocation = DebugPlugin.getDefault().getStateLocation();
                    fileName = String.valueOf(stateLocation.toOSString()) + File.separator + "env.txt";
                    nativeCommand = "command.com /C set > " + fileName;
                } else {
                    nativeCommand = "cmd.exe /C set";
                }
            } else if (!Platform.getOS().equals("unknown")) {
                nativeCommand = "env";
            }
            if (nativeCommand == null) {
                return;
            }
            Process process = Runtime.getRuntime().exec(nativeCommand);
            if (isWin9xME) {
                Properties p = new Properties();
                File file = new File(fileName);
                BufferedInputStream stream = new BufferedInputStream(new FileInputStream(file));
                p.load(stream);
                ((InputStream)stream).close();
                if (!file.delete()) {
                    file.deleteOnExit();
                }
                Enumeration enumeration = p.keys();
                while (enumeration.hasMoreElements()) {
                    String key = (String)enumeration.nextElement();
                    cache.put(key, p.get(key));
                }
            } else {
                InputStream stream = process.getInputStream();
                InputStreamReader isreader = new InputStreamReader(stream);
                BufferedReader reader = new BufferedReader(isreader);
                String line = reader.readLine();
                String key = null;
                String value = null;
                String newLine = System.getProperty("line.separator");
                while (line != null) {
                    int func = line.indexOf("=()");
                    if (func > 0) {
                        key = line.substring(0, func);
                        value = line.substring(func + 1);
                        while (line != null && !line.equals("}")) {
                            line = reader.readLine();
                            if (line == null) continue;
                            value = String.valueOf(value) + newLine + line;
                        }
                        line = reader.readLine();
                    } else {
                        int separator = line.indexOf(61);
                        if (separator > 0) {
                            key = line.substring(0, separator);
                            value = line.substring(separator + 1);
                            line = reader.readLine();
                            if (line != null) {
                                while (line.indexOf(61) < 0 || line.length() > 0 && !Character.isJavaIdentifierStart(line.charAt(0))) {
                                    value = String.valueOf(value) + newLine + line;
                                    line = reader.readLine();
                                    if (line == null) break;
                                }
                            }
                        }
                    }
                    if (key != null) {
                        cache.put(key, value);
                        key = null;
                        value = null;
                        continue;
                    }
                    line = reader.readLine();
                }
                reader.close();
            }
        }
        catch (IOException iOException) {}
    }

    private void clearAllLaunchConfigurations() {
        if (this.fLaunchConfigurationTypes != null) {
            this.fLaunchConfigurationTypes.clear();
        }
        if (this.fLaunchConfigurationIndex != null) {
            this.fLaunchConfigurationIndex.clear();
        }
    }

    public String getEncoding(ILaunchConfiguration configuration) throws CoreException {
        String encoding = configuration.getAttribute("org.eclipse.debug.ui.ATTR_CONSOLE_ENCODING", (String)null);
        if (encoding == null) {
            IResource[] resources = configuration.getMappedResources();
            if (resources != null && resources.length > 0) {
                IResource res = resources[0];
                if (res instanceof IFile) {
                    return ((IFile)res).getCharset();
                }
                if (res instanceof IContainer) {
                    return ((IContainer)res).getDefaultCharset();
                }
            } else {
                return ResourcesPlugin.getEncoding();
            }
        }
        return encoding;
    }

    protected void clearConfigNameCache() {
        this.fSortedConfigNames = null;
    }

    protected DebugException createDebugException(String message, Throwable throwable) {
        return new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, message, throwable));
    }

    protected LaunchConfigurationInfo createInfoFromXML(InputStream stream) throws CoreException, ParserConfigurationException, IOException, SAXException {
        Element root = null;
        DocumentBuilder parser = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        parser.setErrorHandler(new DefaultHandler());
        root = parser.parse(new InputSource(stream)).getDocumentElement();
        LaunchConfigurationInfo info = new LaunchConfigurationInfo();
        info.initializeFromXML(root);
        return info;
    }

    protected List findLaunchConfigurations(IContainer container) {
        ArrayList list = new ArrayList(10);
        if (container instanceof IProject && !((IProject)container).isOpen()) {
            return list;
        }
        ResourceProxyVisitor visitor = new ResourceProxyVisitor(list);
        try {
            container.accept((IResourceProxyVisitor)visitor, 0);
        }
        catch (CoreException coreException) {}
        Iterator iter = list.iterator();
        ArrayList<ILaunchConfiguration> configs = new ArrayList<ILaunchConfiguration>(list.size());
        ILaunchConfiguration config = null;
        while (iter.hasNext()) {
            config = this.getLaunchConfiguration((IFile)iter.next());
            if (config == null || !config.exists()) continue;
            configs.add(config);
        }
        return configs;
    }

    protected List findLocalLaunchConfigurations() {
        IPath containerPath = LOCAL_LAUNCH_CONFIGURATION_CONTAINER_PATH;
        ArrayList<LaunchConfiguration> configs = new ArrayList<LaunchConfiguration>(10);
        final File directory = containerPath.toFile();
        if (directory.isDirectory()) {
            FilenameFilter filter = new FilenameFilter(){

                public boolean accept(File dir, String name) {
                    return dir.equals(directory) && name.endsWith("launch");
                }
            };
            File[] files = directory.listFiles(filter);
            LaunchConfiguration config = null;
            int i = 0;
            while (i < files.length) {
                config = new LaunchConfiguration(LaunchConfiguration.getSimpleName(files[i].getName()), null);
                configs.add(config);
                ++i;
            }
        }
        return configs;
    }

    public void fireUpdate(ILaunch launch, int update) {
        new LaunchNotifier().notify(launch, update);
    }

    public void fireUpdate(ILaunch[] launches, int update) {
        new LaunchesNotifier().notify(launches, update);
    }

    public String generateUniqueLaunchConfigurationNameFrom(String baseName) {
        String trailer;
        int index = 1;
        int length = baseName.length();
        int copyIndex = baseName.lastIndexOf(" (");
        if (copyIndex > -1 && length > copyIndex + 2 && baseName.charAt(length - 1) == ')' && this.isNumber(trailer = baseName.substring(copyIndex + 2, length - 1))) {
            try {
                index = Integer.parseInt(trailer);
                baseName = baseName.substring(0, copyIndex);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        String newName = baseName;
        while (this.isExistingLaunchConfigurationName(newName)) {
            newName = MessageFormat.format((String)DebugCoreMessages.LaunchManager_31, (Object[])new String[]{baseName, Integer.toString(index)});
            ++index;
        }
        return newName;
    }

    public String generateUniqueLaunchConfigurationNameFrom(String basename, Set reservednames) {
        String trailer;
        if (reservednames == null) {
            return this.generateUniqueLaunchConfigurationNameFrom(basename);
        }
        int index = 1;
        int length = basename.length();
        String base = basename;
        int copyIndex = base.lastIndexOf(" (");
        if (copyIndex > -1 && length > copyIndex + 2 && base.charAt(length - 1) == ')' && this.isNumber(trailer = base.substring(copyIndex + 2, length - 1))) {
            try {
                index = Integer.parseInt(trailer);
                base = base.substring(0, copyIndex);
            }
            catch (NumberFormatException numberFormatException) {}
        }
        String newname = base;
        StringBuffer buffer = null;
        while (this.isExistingLaunchConfigurationName(newname) || reservednames.contains(newname)) {
            buffer = new StringBuffer(base);
            buffer.append(" (");
            buffer.append(String.valueOf(index));
            ++index;
            buffer.append(')');
            newname = buffer.toString();
        }
        return newname;
    }

    private synchronized List getAllLaunchConfigurations() {
        if (this.fLaunchConfigurationIndex == null) {
            try {
                this.fLaunchConfigurationIndex = new ArrayList(20);
                List configs = this.findLocalLaunchConfigurations();
                this.verifyConfigurations(configs, this.fLaunchConfigurationIndex);
                configs = this.findLaunchConfigurations((IContainer)ResourcesPlugin.getWorkspace().getRoot());
                this.verifyConfigurations(configs, this.fLaunchConfigurationIndex);
            }
            finally {
                this.hookResourceChangeListener();
            }
        }
        return this.fLaunchConfigurationIndex;
    }

    protected synchronized String[] getAllSortedConfigNames() {
        if (this.fSortedConfigNames == null) {
            ILaunchConfiguration[] configs = this.getLaunchConfigurations();
            this.fSortedConfigNames = new String[configs.length];
            int i = 0;
            while (i < configs.length) {
                this.fSortedConfigNames[i] = configs[i].getName();
                ++i;
            }
            Arrays.sort(this.fSortedConfigNames);
        }
        return this.fSortedConfigNames;
    }

    protected Comparator getComparator(String attributeName) {
        Map map = this.getComparators();
        return (Comparator)map.get(attributeName);
    }

    protected Map getComparators() {
        this.initializeComparators();
        return this.fComparators;
    }

    protected List getConfigsFromXML(Element root) throws CoreException {
        DebugException invalidFormat = new DebugException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5012, DebugCoreMessages.LaunchManager_Invalid_launch_configuration_index__18, null));
        if (!root.getNodeName().equalsIgnoreCase("launchConfigurations")) {
            throw invalidFormat;
        }
        ArrayList<ILaunchConfiguration> configs = new ArrayList<ILaunchConfiguration>(4);
        NodeList list = root.getChildNodes();
        int length = list.getLength();
        Node node = null;
        Element entry = null;
        String memento = null;
        int i = 0;
        while (i < length) {
            node = list.item(i);
            short type = node.getNodeType();
            if (type == 1) {
                entry = (Element)node;
                if (!entry.getNodeName().equals("launchConfiguration")) {
                    throw invalidFormat;
                }
                memento = entry.getAttribute("memento");
                if (memento == null) {
                    throw invalidFormat;
                }
                configs.add(this.getLaunchConfiguration(memento));
            }
            ++i;
        }
        return configs;
    }

    protected ConfigurationNotifier getConfigurationNotifier() {
        return new ConfigurationNotifier();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IDebugTarget[] getDebugTargets() {
        List list = this.fLaunches;
        synchronized (list) {
            ArrayList<IDebugTarget> allTargets = new ArrayList<IDebugTarget>(this.fLaunches.size());
            if (this.fLaunches.size() > 0) {
                Iterator e = this.fLaunches.iterator();
                IDebugTarget[] targets = null;
                while (e.hasNext()) {
                    targets = ((ILaunch)e.next()).getDebugTargets();
                    int i = 0;
                    while (i < targets.length) {
                        allTargets.add(targets[i]);
                        ++i;
                    }
                }
            }
            return allTargets.toArray(new IDebugTarget[allTargets.size()]);
        }
    }

    private LaunchManagerVisitor getDeltaVisitor() {
        if (this.fgVisitor == null) {
            this.fgVisitor = new LaunchManagerVisitor();
        }
        return this.fgVisitor;
    }

    private MappedResourceVisitor getMappedResourceVisitor() {
        if (this.fgMRVisitor == null) {
            this.fgMRVisitor = new MappedResourceVisitor();
        }
        return this.fgMRVisitor;
    }

    public String[] getEnvironment(ILaunchConfiguration configuration) throws CoreException {
        Map configEnv = configuration.getAttribute(ATTR_ENVIRONMENT_VARIABLES, (Map)null);
        if (configEnv == null) {
            return null;
        }
        HashMap<String, String> env = new HashMap<String, String>();
        boolean append = configuration.getAttribute(ATTR_APPEND_ENVIRONMENT_VARIABLES, true);
        if (append) {
            env.putAll(this.getNativeEnvironmentCasePreserved());
        }
        Iterator iter = configEnv.entrySet().iterator();
        boolean win32 = Platform.getOS().equals("win32");
        Map.Entry entry = null;
        String key = null;
        String value = null;
        Object nativeValue = null;
        Iterator envIter = null;
        Map.Entry nativeEntry = null;
        String nativeKey = null;
        while (iter.hasNext()) {
            entry = iter.next();
            key = (String)entry.getKey();
            value = (String)entry.getValue();
            if (value != null) {
                value = VariablesPlugin.getDefault().getStringVariableManager().performStringSubstitution(value);
            }
            boolean added = false;
            if (win32) {
                nativeValue = env.get(key);
                if (nativeValue != null) {
                    env.put(key, value);
                } else {
                    envIter = env.entrySet().iterator();
                    while (envIter.hasNext()) {
                        nativeEntry = envIter.next();
                        nativeKey = (String)nativeEntry.getKey();
                        if (!nativeKey.equalsIgnoreCase(key)) continue;
                        nativeEntry.setValue(value);
                        added = true;
                        break;
                    }
                }
            }
            if (added) continue;
            env.put(key, value);
        }
        iter = env.entrySet().iterator();
        ArrayList<String> strings = new ArrayList<String>(env.size());
        StringBuffer buffer = null;
        while (iter.hasNext()) {
            entry = iter.next();
            buffer = new StringBuffer((String)entry.getKey());
            buffer.append('=').append((String)entry.getValue());
            strings.add(buffer.toString());
        }
        return strings.toArray(new String[strings.size()]);
    }

    /*
     * Exception decompiling
     */
    protected LaunchConfigurationInfo getInfo(LaunchConfiguration config) throws CoreException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:412)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:487)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    public ILaunchConfiguration getLaunchConfiguration(IFile file) {
        this.hookResourceChangeListener();
        return new LaunchConfiguration(file);
    }

    public ILaunchConfiguration getLaunchConfiguration(String memento) throws CoreException {
        this.hookResourceChangeListener();
        return new LaunchConfiguration(memento);
    }

    public synchronized ILaunchConfiguration[] getLaunchConfigurations() {
        List allConfigs = this.getAllLaunchConfigurations();
        return allConfigs.toArray(new ILaunchConfiguration[allConfigs.size()]);
    }

    public synchronized ILaunchConfiguration[] getLaunchConfigurations(ILaunchConfigurationType type) throws CoreException {
        Iterator iter = this.getAllLaunchConfigurations().iterator();
        ArrayList<ILaunchConfiguration> configs = new ArrayList<ILaunchConfiguration>();
        ILaunchConfiguration config = null;
        while (iter.hasNext()) {
            config = (ILaunchConfiguration)iter.next();
            if (!config.getType().equals(type)) continue;
            configs.add(config);
        }
        return configs.toArray(new ILaunchConfiguration[configs.size()]);
    }

    protected synchronized List getLaunchConfigurations(IProject project) {
        Iterator iter = this.getAllLaunchConfigurations().iterator();
        ArrayList<ILaunchConfiguration> configs = new ArrayList<ILaunchConfiguration>();
        ILaunchConfiguration config = null;
        IFile file = null;
        while (iter.hasNext()) {
            config = (ILaunchConfiguration)iter.next();
            file = config.getFile();
            if (file == null || !file.getProject().equals((Object)project)) continue;
            configs.add(config);
        }
        return configs;
    }

    public ILaunchConfigurationType getLaunchConfigurationType(String id) {
        ILaunchConfigurationType[] types = this.getLaunchConfigurationTypes();
        int i = 0;
        while (i < types.length) {
            if (types[i].getIdentifier().equals(id)) {
                return types[i];
            }
            ++i;
        }
        return null;
    }

    public ILaunchConfigurationType[] getLaunchConfigurationTypes() {
        this.initializeLaunchConfigurationTypes();
        return this.fLaunchConfigurationTypes.toArray(new ILaunchConfigurationType[this.fLaunchConfigurationTypes.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ILaunch[] getLaunches() {
        List list = this.fLaunches;
        synchronized (list) {
            return this.fLaunches.toArray(new ILaunch[this.fLaunches.size()]);
        }
    }

    public ILaunchMode getLaunchMode(String mode) {
        this.initializeLaunchModes();
        return (ILaunchMode)this.fLaunchModes.get(mode);
    }

    public ILaunchMode[] getLaunchModes() {
        this.initializeLaunchModes();
        Collection collection = this.fLaunchModes.values();
        return collection.toArray(new ILaunchMode[collection.size()]);
    }

    public ILaunchDelegate[] getLaunchDelegates() {
        this.initializeLaunchDelegates();
        Collection col = this.fLaunchDelegates.values();
        return col.toArray(new ILaunchDelegate[col.size()]);
    }

    public LaunchDelegate[] getLaunchDelegates(String typeid) {
        this.initializeLaunchDelegates();
        ArrayList<LaunchDelegate> list = new ArrayList<LaunchDelegate>();
        LaunchDelegate ld = null;
        Iterator iter = this.fLaunchDelegates.keySet().iterator();
        while (iter.hasNext()) {
            ld = (LaunchDelegate)this.fLaunchDelegates.get(iter.next());
            if (!ld.getLaunchConfigurationTypeId().equals(typeid)) continue;
            list.add(ld);
        }
        return list.toArray(new LaunchDelegate[list.size()]);
    }

    public ILaunchDelegate getLaunchDelegate(String id) {
        if (id != null) {
            ILaunchDelegate[] delegates = this.getLaunchDelegates();
            int i = 0;
            while (i < delegates.length) {
                if (id.equals(delegates[i].getId())) {
                    return delegates[i];
                }
                ++i;
            }
        }
        return null;
    }

    private synchronized void initializeLaunchDelegates() {
        if (this.fLaunchDelegates == null) {
            this.fLaunchDelegates = new HashMap();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "launchDelegates");
            IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
            LaunchDelegate delegate = null;
            int i = 0;
            while (i < infos.length) {
                delegate = new LaunchDelegate(infos[i]);
                this.fLaunchDelegates.put(delegate.getId(), delegate);
                ++i;
            }
            extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "launchConfigurationTypes");
            infos = extensionPoint.getConfigurationElements();
            i = 0;
            while (i < infos.length) {
                if (infos[i].getAttribute("delegate") != null) {
                    delegate = new LaunchDelegate(infos[i]);
                    this.fLaunchDelegates.put(delegate.getId(), delegate);
                }
                ++i;
            }
        }
    }

    private synchronized void initializePreferredDelegates() {
        if (this.fPreferredDelegates == null) {
            this.fPreferredDelegates = new HashSet();
            String preferred = Platform.getPreferencesService().getString(DebugPlugin.getUniqueIdentifier(), PREF_PREFERRED_DELEGATES, "", null);
            if (!"".equals(preferred)) {
                try {
                    Element root = DebugPlugin.parseDocument(preferred);
                    NodeList nodes = root.getElementsByTagName("delegate");
                    Element element = null;
                    String typeid = null;
                    HashSet<String> modeset = null;
                    int i = 0;
                    while (i < nodes.getLength()) {
                        String[] modes;
                        element = (Element)nodes.item(i);
                        String delegateid = element.getAttribute("id");
                        typeid = element.getAttribute("typeid");
                        LaunchDelegate delegate = this.getLaunchDelegateExtension(typeid, delegateid, modeset = new HashSet<String>(Arrays.asList(modes = element.getAttribute("modes").split(","))));
                        if (delegate != null && !"".equals(typeid) & modeset != null) {
                            this.fPreferredDelegates.add(new PreferredDelegate(delegate, typeid, modeset));
                        }
                        ++i;
                    }
                }
                catch (CoreException e) {
                    DebugPlugin.log(e);
                }
            }
        }
    }

    protected void resetPreferredDelegates() {
        this.fPreferredDelegates = null;
    }

    protected ILaunchDelegate getPreferredDelegate(String typeid, Set modes) {
        this.initializePreferredDelegates();
        PreferredDelegate pd = null;
        Iterator iter = this.fPreferredDelegates.iterator();
        while (iter.hasNext()) {
            pd = (PreferredDelegate)iter.next();
            if (!(pd.getModes().equals(modes) & pd.getTypeId().equals(typeid))) continue;
            return pd.getDelegate();
        }
        String preferred = Platform.getPreferencesService().getString(DebugPlugin.getUniqueIdentifier(), "//" + PREF_PREFERRED_DELEGATES + '/' + typeid, "", null);
        if (preferred != null && preferred.length() != 0) {
            StringTokenizer tokenizer = new StringTokenizer(preferred, ";");
            while (tokenizer.hasMoreTokens()) {
                StringTokenizer tokenizer2 = new StringTokenizer(tokenizer.nextToken(), ",");
                String delegateId = tokenizer2.nextToken();
                HashSet<String> modeset = new HashSet<String>();
                while (tokenizer2.hasMoreTokens()) {
                    modeset.add(tokenizer2.nextToken());
                }
                LaunchDelegate delegate = this.getLaunchDelegateExtension(typeid, delegateId, modeset);
                if (delegate == null || !modeset.equals(modes)) continue;
                return delegate;
            }
        }
        return null;
    }

    private LaunchDelegate getLaunchDelegateExtension(String typeId, String id, Set modeset) {
        LaunchDelegate[] extensions = this.getLaunchDelegates(typeId);
        int j = 0;
        while (j < extensions.length) {
            List modesets;
            if (id.equals(extensions[j].getId()) && (modesets = extensions[j].getModes()).contains(modeset)) {
                return extensions[j];
            }
            ++j;
        }
        return null;
    }

    protected synchronized List getLocalLaunchConfigurations() {
        Iterator iter = this.getAllLaunchConfigurations().iterator();
        ArrayList<ILaunchConfiguration> configs = new ArrayList<ILaunchConfiguration>();
        ILaunchConfiguration config = null;
        while (iter.hasNext()) {
            config = (ILaunchConfiguration)iter.next();
            if (!config.isLocal()) continue;
            configs.add(config);
        }
        return configs;
    }

    public ILaunchConfiguration[] getMappedConfigurations(IResource resource) {
        ArrayList<ILaunchConfiguration> configurations = new ArrayList<ILaunchConfiguration>();
        try {
            ILaunchConfiguration[] configs = this.getLaunchConfigurations();
            IResource[] resources = null;
            int i = 0;
            while (i < configs.length) {
                resources = configs[i].getMappedResources();
                if (resources != null) {
                    int j = 0;
                    while (j < resources.length) {
                        if (resources[j].equals((Object)resource)) {
                            configurations.add(configs[i]);
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
        }
        return configurations.toArray(new ILaunchConfiguration[configurations.size()]);
    }

    public ILaunchConfiguration[] getMigrationCandidates() throws CoreException {
        ArrayList<ILaunchConfiguration> configs = new ArrayList<ILaunchConfiguration>();
        ILaunchConfiguration[] candidates = this.getLaunchConfigurations();
        int i = 0;
        while (i < candidates.length) {
            if (!candidates[i].isReadOnly() && candidates[i].isMigrationCandidate()) {
                configs.add(candidates[i]);
            }
            ++i;
        }
        return configs.toArray(new ILaunchConfiguration[configs.size()]);
    }

    public ILaunchConfiguration getMovedFrom(ILaunchConfiguration addedConfiguration) {
        if (addedConfiguration.equals(this.fTo)) {
            return this.fFrom;
        }
        return null;
    }

    public ILaunchConfiguration getMovedTo(ILaunchConfiguration removedConfiguration) {
        if (removedConfiguration.equals(this.fFrom)) {
            return this.fTo;
        }
        return null;
    }

    public synchronized Map getNativeEnvironment() {
        if (fgNativeEnv == null) {
            Map casePreserved = this.getNativeEnvironmentCasePreserved();
            if (Platform.getOS().equals("win32")) {
                fgNativeEnv = new HashMap();
                Iterator entries = casePreserved.entrySet().iterator();
                Map.Entry entry = null;
                String key = null;
                while (entries.hasNext()) {
                    entry = entries.next();
                    key = ((String)entry.getKey()).toUpperCase();
                    fgNativeEnv.put(key, entry.getValue());
                }
            } else {
                fgNativeEnv = new HashMap(casePreserved);
            }
        }
        return new HashMap(fgNativeEnv);
    }

    public synchronized Map getNativeEnvironmentCasePreserved() {
        if (fgNativeEnvCasePreserved == null) {
            fgNativeEnvCasePreserved = new HashMap();
            this.cacheNativeEnvironment(fgNativeEnvCasePreserved);
        }
        return new HashMap(fgNativeEnvCasePreserved);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IProcess[] getProcesses() {
        List list = this.fLaunches;
        synchronized (list) {
            ArrayList<IProcess> allProcesses = new ArrayList<IProcess>(this.fLaunches.size());
            Iterator e = this.fLaunches.iterator();
            IProcess[] processes = null;
            while (e.hasNext()) {
                processes = ((ILaunch)e.next()).getProcesses();
                int i = 0;
                while (i < processes.length) {
                    allProcesses.add(processes[i]);
                    ++i;
                }
            }
            return allProcesses.toArray(new IProcess[allProcesses.size()]);
        }
    }

    public ISourceContainerType getSourceContainerType(String id) {
        this.initializeSourceContainerTypes();
        return (ISourceContainerType)this.sourceContainerTypes.get(id);
    }

    public ISourceContainerType[] getSourceContainerTypes() {
        this.initializeSourceContainerTypes();
        Collection containers = this.sourceContainerTypes.values();
        return containers.toArray(new ISourceContainerType[containers.size()]);
    }

    public ISourcePathComputer getSourcePathComputer(ILaunchConfiguration configuration) throws CoreException {
        String id = null;
        id = configuration.getAttribute(ISourcePathComputer.ATTR_SOURCE_PATH_COMPUTER_ID, (String)null);
        if (id == null) {
            return configuration.getType().getSourcePathComputer();
        }
        return this.getSourcePathComputer(id);
    }

    public ISourcePathComputer getSourcePathComputer(String id) {
        this.initializeSourceContainerTypes();
        return (ISourcePathComputer)this.sourcePathComputers.get(id);
    }

    private synchronized void hookResourceChangeListener() {
        if (!this.fListening) {
            ResourcesPlugin.getWorkspace().addResourceChangeListener((IResourceChangeListener)this, 5);
            this.fListening = true;
        }
    }

    private synchronized void initializeComparators() {
        if (this.fComparators == null) {
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "launchConfigurationComparators");
            IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
            this.fComparators = new HashMap(infos.length);
            IConfigurationElement configurationElement = null;
            String attr = null;
            int i = 0;
            while (i < infos.length) {
                configurationElement = infos[i];
                attr = configurationElement.getAttribute("attribute");
                if (attr != null) {
                    this.fComparators.put(attr, new LaunchConfigurationComparator(configurationElement));
                } else {
                    Status s = new Status(4, DebugPlugin.getUniqueIdentifier(), 5013, MessageFormat.format((String)"Invalid launch configuration comparator extension defined by plug-in {0} - attribute not specified.", (Object[])new String[]{configurationElement.getContributor().getName()}), null);
                    DebugPlugin.log((IStatus)s);
                }
                ++i;
            }
        }
    }

    private synchronized void initializeLaunchConfigurationTypes() {
        if (this.fLaunchConfigurationTypes == null) {
            this.hookResourceChangeListener();
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "launchConfigurationTypes");
            IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
            this.fLaunchConfigurationTypes = new ArrayList(infos.length);
            int i = 0;
            while (i < infos.length) {
                this.fLaunchConfigurationTypes.add(new LaunchConfigurationType(infos[i]));
                ++i;
            }
        }
    }

    private synchronized void initializeLaunchModes() {
        if (this.fLaunchModes == null) {
            try {
                IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "launchModes");
                IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
                this.fLaunchModes = new HashMap();
                LaunchMode mode = null;
                int i = 0;
                while (i < infos.length) {
                    mode = new LaunchMode(infos[i]);
                    this.fLaunchModes.put(mode.getIdentifier(), mode);
                    ++i;
                }
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }
    }

    private synchronized void initializeSourceContainerTypes() {
        if (this.sourceContainerTypes == null) {
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "sourceContainerTypes");
            IConfigurationElement[] extensions = extensionPoint.getConfigurationElements();
            this.sourceContainerTypes = new HashMap();
            int i = 0;
            while (i < extensions.length) {
                this.sourceContainerTypes.put(extensions[i].getAttribute("id"), new SourceContainerType(extensions[i]));
                ++i;
            }
            extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "sourcePathComputers");
            extensions = extensionPoint.getConfigurationElements();
            this.sourcePathComputers = new HashMap();
            i = 0;
            while (i < extensions.length) {
                this.sourcePathComputers.put(extensions[i].getAttribute("id"), new SourcePathComputer(extensions[i]));
                ++i;
            }
        }
    }

    private synchronized void initializeSourceLocators() {
        if (this.fSourceLocators == null) {
            IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(DebugPlugin.getUniqueIdentifier(), "sourceLocators");
            IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
            this.fSourceLocators = new HashMap(infos.length);
            IConfigurationElement configurationElement = null;
            String id = null;
            int i = 0;
            while (i < infos.length) {
                configurationElement = infos[i];
                id = configurationElement.getAttribute("id");
                if (id != null) {
                    this.fSourceLocators.put(id, configurationElement);
                } else {
                    Status s = new Status(4, DebugPlugin.getUniqueIdentifier(), 5013, MessageFormat.format((String)"Invalid source locator extension defined by plug-in \"{0}\": \"id\" not specified.", (Object[])new String[]{configurationElement.getContributor().getName()}), null);
                    DebugPlugin.log((IStatus)s);
                }
                ++i;
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected boolean internalAddLaunch(ILaunch launch) {
        this.getStepFilterManager();
        List list = this.fLaunches;
        synchronized (list) {
            block4: {
                if (!this.fLaunches.contains(launch)) break block4;
                return false;
            }
            this.fLaunches.add(launch);
            this.fLaunchSet.add(launch);
            return true;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected boolean internalRemoveLaunch(ILaunch launch) {
        if (launch == null) {
            return false;
        }
        List list = this.fLaunches;
        synchronized (list) {
            this.fLaunchSet.remove(launch);
            return this.fLaunches.remove(launch);
        }
    }

    public boolean isExistingLaunchConfigurationName(String name) {
        Object[] sortedConfigNames = this.getAllSortedConfigNames();
        int index = Arrays.binarySearch(sortedConfigNames, name);
        return index >= 0;
    }

    private boolean isNumber(String string) {
        int numChars = string.length();
        if (numChars == 0) {
            return false;
        }
        int i = 0;
        while (i < numChars) {
            if (!Character.isDigit(string.charAt(i))) {
                return false;
            }
            ++i;
        }
        return true;
    }

    private boolean isDeleteConfigurations() {
        return Platform.getPreferencesService().getBoolean(DebugPlugin.getUniqueIdentifier(), DebugPlugin.PREF_DELETE_CONFIGS_ON_PROJECT_DELETE, true, null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isRegistered(ILaunch launch) {
        List list = this.fLaunches;
        synchronized (list) {
            return this.fLaunchSet.contains(launch);
        }
    }

    protected boolean isValid(ILaunchConfiguration config) {
        try {
            config.getType();
        }
        catch (CoreException e) {
            if (e.getStatus().getCode() != 5020) {
                DebugPlugin.log(e);
            }
            return false;
        }
        return true;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void launchConfigurationAdded(ILaunchConfiguration config) {
        if (config.isWorkingCopy()) {
            return;
        }
        if (this.isValid(config)) {
            boolean added = false;
            LaunchManager launchManager = this;
            synchronized (launchManager) {
                List allConfigs = this.getAllLaunchConfigurations();
                if (!allConfigs.contains(config)) {
                    allConfigs.add(config);
                    added = true;
                }
            }
            if (added) {
                this.getConfigurationNotifier().notify(config, 0);
                this.clearConfigNameCache();
            }
        } else {
            this.launchConfigurationDeleted(config);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void launchConfigurationChanged(ILaunchConfiguration config) {
        LaunchManager launchManager = this;
        synchronized (launchManager) {
            this.fLaunchConfigurations.remove(config);
        }
        this.clearConfigNameCache();
        if (this.isValid(config)) {
            this.launchConfigurationAdded(config);
            this.getConfigurationNotifier().notify(config, 2);
        } else {
            this.launchConfigurationDeleted(config);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void launchConfigurationDeleted(ILaunchConfiguration config) {
        boolean removed = false;
        LaunchManager launchManager = this;
        synchronized (launchManager) {
            Object key = this.fLaunchConfigurations.remove(config);
            removed = key != null;
            this.getAllLaunchConfigurations().remove(config);
        }
        if (removed) {
            this.getConfigurationNotifier().notify(config, 1);
            this.clearConfigNameCache();
        }
    }

    public IPersistableSourceLocator newSourceLocator(String identifier) throws CoreException {
        this.initializeSourceLocators();
        IConfigurationElement config = (IConfigurationElement)this.fSourceLocators.get(identifier);
        if (config == null) {
            throw new CoreException((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 5013, MessageFormat.format((String)DebugCoreMessages.LaunchManager_Source_locator_does_not_exist___0__13, (Object[])new String[]{identifier}), null));
        }
        IPersistableSourceLocator sourceLocator = (IPersistableSourceLocator)config.createExecutableExtension("class");
        if (sourceLocator instanceof AbstractSourceLookupDirector) {
            ((AbstractSourceLookupDirector)sourceLocator).setId(identifier);
        }
        return sourceLocator;
    }

    protected void projectClosed(IProject project) {
        List configs = this.getLaunchConfigurations(project);
        if (!configs.isEmpty()) {
            Iterator iterator = configs.iterator();
            while (iterator.hasNext()) {
                this.launchConfigurationDeleted((ILaunchConfiguration)iterator.next());
            }
        }
        this.terminateMappedConfigurations((IResource)project);
    }

    protected void projectOpened(IProject project) {
        List configs = this.findLaunchConfigurations((IContainer)project);
        if (!configs.isEmpty()) {
            Iterator iterator = configs.iterator();
            while (iterator.hasNext()) {
                this.launchConfigurationAdded((ILaunchConfiguration)iterator.next());
            }
        }
    }

    public void removeLaunch(ILaunch launch) {
        if (this.internalRemoveLaunch(launch)) {
            this.fireUpdate(launch, 1);
            this.fireUpdate(new ILaunch[]{launch}, 1);
        }
    }

    public void removeLaunchConfigurationListener(ILaunchConfigurationListener listener) {
        this.fLaunchConfigurationListeners.remove((Object)listener);
    }

    public void removeLaunches(ILaunch[] launches) {
        ArrayList<ILaunch> removed = new ArrayList<ILaunch>(launches.length);
        int i = 0;
        while (i < launches.length) {
            if (this.internalRemoveLaunch(launches[i])) {
                removed.add(launches[i]);
            }
            ++i;
        }
        if (!removed.isEmpty()) {
            ILaunch[] removedLaunches = removed.toArray(new ILaunch[removed.size()]);
            this.fireUpdate(removedLaunches, 1);
            int i2 = 0;
            while (i2 < removedLaunches.length) {
                this.fireUpdate(removedLaunches[i2], 1);
                ++i2;
            }
        }
    }

    public void removeLaunchListener(ILaunchesListener listener) {
        this.fLaunchesListeners.remove((Object)listener);
    }

    public void removeLaunchListener(ILaunchListener listener) {
        this.fListeners.remove((Object)listener);
    }

    public void resourceChanged(IResourceChangeEvent event) {
        IResourceDelta delta = event.getDelta();
        if (delta != null) {
            LaunchManagerVisitor visitor = this.getDeltaVisitor();
            MappedResourceVisitor v = null;
            if (this.isDeleteConfigurations()) {
                v = this.getMappedResourceVisitor();
            }
            try {
                delta.accept((IResourceDeltaVisitor)visitor);
                if (v != null) {
                    delta.accept((IResourceDeltaVisitor)v);
                }
            }
            catch (CoreException e) {
                DebugPlugin.log(e.getStatus());
            }
        }
    }

    private ArrayList collectAssociatedLaunches(IResource resource) {
        ArrayList<ILaunchConfiguration> list = new ArrayList<ILaunchConfiguration>();
        try {
            ILaunchConfiguration[] configs = DebugPlugin.getDefault().getLaunchManager().getLaunchConfigurations();
            IResource[] resources = null;
            int i = 0;
            while (i < configs.length) {
                if (configs[i].isLocal() && (resources = configs[i].getMappedResources()) != null) {
                    int j = 0;
                    while (j < resources.length) {
                        if (resource.equals((Object)resources[j]) || resource.getFullPath().isPrefixOf(resources[j].getFullPath())) {
                            list.add(configs[i]);
                            break;
                        }
                        ++j;
                    }
                }
                ++i;
            }
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
        }
        return list;
    }

    protected void setMovedFromTo(ILaunchConfiguration from, ILaunchConfiguration to) {
        this.fFrom = from;
        this.fTo = to;
    }

    public void shutdown() {
        this.fListeners = new ListenerList();
        this.fLaunchesListeners = new ListenerList();
        this.fLaunchConfigurationListeners = new ListenerList();
        ILaunch[] launches = this.getLaunches();
        ILaunch launch = null;
        int i = 0;
        while (i < launches.length) {
            launch = launches[i];
            try {
                IDisconnect disconnect;
                if (launch instanceof IDisconnect && (disconnect = (IDisconnect)((Object)launch)).canDisconnect()) {
                    disconnect.disconnect();
                }
                if (launch.canTerminate()) {
                    launch.terminate();
                }
            }
            catch (DebugException e) {
                DebugPlugin.log((Throwable)((Object)e));
            }
            ++i;
        }
        this.persistPreferredLaunchDelegates();
        this.clearAllLaunchConfigurations();
        this.fStepFilterManager = null;
        ResourcesPlugin.getWorkspace().removeResourceChangeListener((IResourceChangeListener)this);
    }

    public void persistPreferredLaunchDelegates() {
        ILaunchConfigurationType[] types = this.getLaunchConfigurationTypes();
        int i = 0;
        while (i < types.length) {
            this.persistPreferredLaunchDelegate((LaunchConfigurationType)types[i]);
            ++i;
        }
    }

    public void persistPreferredLaunchDelegate(LaunchConfigurationType type) {
        String preferenceName = String.valueOf(PREF_PREFERRED_DELEGATES) + '/' + type.getIdentifier();
        Map preferred = type.getPreferredDelegates();
        if (preferred != null && preferred.size() > 0) {
            StringBuffer str = new StringBuffer();
            Iterator iter = preferred.keySet().iterator();
            while (iter.hasNext()) {
                Set modes = (Set)iter.next();
                ILaunchDelegate delegate = (ILaunchDelegate)preferred.get(modes);
                if (delegate == null) continue;
                str.append(delegate.getId());
                str.append(',');
                Iterator iter2 = modes.iterator();
                while (iter2.hasNext()) {
                    str.append(iter2.next());
                    if (!iter2.hasNext()) continue;
                    str.append(',');
                }
                if (!iter.hasNext()) continue;
                str.append(';');
            }
            Preferences.setString(DebugPlugin.getUniqueIdentifier(), preferenceName, str.toString(), null);
        } else {
            Preferences.setToDefault(DebugPlugin.getUniqueIdentifier(), preferenceName);
        }
        Preferences.setToDefault(DebugPlugin.getUniqueIdentifier(), PREF_PREFERRED_DELEGATES);
    }

    protected void terminateMappedConfigurations(IResource resource) {
        ILaunch[] launches = this.getLaunches();
        ILaunchConfiguration[] configs = this.getMappedConfigurations(resource);
        try {
            int i = 0;
            while (i < launches.length) {
                int j = 0;
                while (j < configs.length) {
                    if (configs[j].equals(launches[i].getLaunchConfiguration()) & launches[i].canTerminate()) {
                        launches[i].terminate();
                    }
                    ++j;
                }
                ++i;
            }
        }
        catch (CoreException e) {
            DebugPlugin.log(e);
        }
    }

    private void throwException(LaunchConfiguration config, Throwable e) throws DebugException {
        String uri = config.getName();
        try {
            IFileStore store = config.getFileStore();
            if (store != null) {
                uri = store.toString();
            }
        }
        catch (CoreException coreException) {}
        throw this.createDebugException(MessageFormat.format((String)DebugCoreMessages.LaunchManager__0__occurred_while_reading_launch_configuration_file__1___1, (Object[])new String[]{e.toString(), uri}), e);
    }

    protected void verifyConfigurations(List verify, List valid) {
        Iterator configs = verify.iterator();
        ILaunchConfiguration config = null;
        while (configs.hasNext()) {
            config = (ILaunchConfiguration)configs.next();
            if (valid.contains(config) || !this.isValid(config)) continue;
            valid.add(config);
        }
    }

    public String getLaunchModeName(String id) {
        ILaunchMode launchMode = this.getLaunchMode(id);
        if (launchMode != null) {
            return LaunchManager.removeAccelerators(launchMode.getLabel());
        }
        return null;
    }

    public static String removeAccelerators(String label) {
        String title = label;
        if (title != null) {
            int index = title.indexOf(38);
            if (index == 0) {
                title = title.substring(1);
            } else if (index > 0) {
                if (title.charAt(index - 1) == '(' && title.length() >= index + 3 && title.charAt(index + 2) == ')') {
                    String first = title.substring(0, index - 1);
                    String last = title.substring(index + 3);
                    title = String.valueOf(first) + last;
                } else if (index < title.length() - 1) {
                    String first = title.substring(0, index);
                    String last = title.substring(index + 1);
                    title = String.valueOf(first) + last;
                }
            }
        }
        return title;
    }

    public synchronized StepFilterManager getStepFilterManager() {
        if (this.fStepFilterManager == null) {
            this.fStepFilterManager = new StepFilterManager();
        }
        return this.fStepFilterManager;
    }

    public void importConfigurations(File[] files, IProgressMonitor monitor) throws CoreException {
        if (monitor == null) {
            monitor = new NullProgressMonitor();
        }
        HashMap<String, ILaunchConfiguration> sharedConfigs = new HashMap<String, ILaunchConfiguration>();
        ArrayList<Status> stati = null;
        Iterator iterator = this.getAllLaunchConfigurations().iterator();
        while (iterator.hasNext()) {
            ILaunchConfiguration config = (ILaunchConfiguration)iterator.next();
            if (config.isLocal()) continue;
            StringBuffer buf = new StringBuffer(config.getName());
            buf.append('.');
            buf.append("launch");
            sharedConfigs.put(buf.toString(), config);
        }
        monitor.beginTask(DebugCoreMessages.LaunchManager_29, files.length);
        int i = 0;
        while (i < files.length) {
            if (monitor.isCanceled()) break;
            File source = files[i];
            monitor.subTask(MessageFormat.format((String)DebugCoreMessages.LaunchManager_28, (Object[])new String[]{source.getName()}));
            IPath location = new Path(LOCAL_LAUNCH_CONFIGURATION_CONTAINER_PATH.toOSString()).append(source.getName());
            File target = location.toFile();
            IPath locationdir = location.removeLastSegments(1);
            if (!locationdir.toFile().exists()) {
                locationdir.toFile().mkdirs();
            }
            boolean added = !target.exists();
            try {
                this.copyFile(source, target);
                LaunchConfiguration configuration = new LaunchConfiguration(LaunchConfiguration.getSimpleName(source.getName()), null);
                ILaunchConfiguration shared = (ILaunchConfiguration)sharedConfigs.get(target.getName());
                if (shared != null) {
                    this.setMovedFromTo(shared, configuration);
                    shared.delete();
                    this.launchConfigurationChanged(configuration);
                } else if (added) {
                    this.launchConfigurationAdded(configuration);
                } else {
                    this.launchConfigurationChanged(configuration);
                }
            }
            catch (IOException e) {
                if (stati == null) {
                    stati = new ArrayList<Status>();
                }
                stati.add(new Status(4, DebugPlugin.getUniqueIdentifier(), 125, MessageFormat.format((String)DebugCoreMessages.LaunchManager_27, (Object[])new String[]{source.getPath()}), (Throwable)e));
            }
            monitor.worked(1);
            ++i;
        }
        if (!monitor.isCanceled()) {
            monitor.done();
        }
        if (stati != null) {
            if (stati.size() > 1) {
                MultiStatus multi = new MultiStatus(DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.LaunchManager_26, null);
                Iterator it = stati.iterator();
                while (it.hasNext()) {
                    multi.add((IStatus)it.next());
                }
                throw new CoreException((IStatus)multi);
            }
            throw new CoreException((IStatus)stati.get(0));
        }
    }

    private void copyFile(File in, File out) throws IOException {
        FileInputStream fis = new FileInputStream(in);
        FileOutputStream fos = new FileOutputStream(out);
        byte[] buf = new byte[1024];
        int i = 0;
        while ((i = fis.read(buf)) != -1) {
            fos.write(buf, 0, i);
        }
        fis.close();
        fos.close();
    }

    public synchronized boolean launchModeAvailable(String mode) {
        if (this.fActiveModes == null) {
            ILaunchConfigurationType[] types = this.getLaunchConfigurationTypes();
            ILaunchMode[] modes = this.getLaunchModes();
            this.fActiveModes = new HashSet(3);
            int i = 0;
            while (i < types.length) {
                int j = 0;
                while (j < modes.length) {
                    if (types[i].supportsMode(modes[j].getIdentifier())) {
                        this.fActiveModes.add(modes[j].getIdentifier());
                    }
                    ++j;
                }
                ++i;
            }
        }
        return this.fActiveModes.contains(mode);
    }

    /*
     * Unable to fully structure code
     */
    public String generateLaunchConfigurationName(String namePrefix) {
        block5: {
            name = this.generateUniqueLaunchConfigurationNameFrom(namePrefix);
            try {
                this.isValidLaunchConfigurationName(name);
                return name;
            }
            catch (IllegalArgumentException v0) {
                if (!"win32".equals(Platform.getOS())) break block5;
                i = 0;
                ** while (i < LaunchManager.UNSUPPORTED_WIN32_CONFIG_NAMES.length)
            }
lbl-1000:
            // 1 sources

            {
                if (LaunchManager.UNSUPPORTED_WIN32_CONFIG_NAMES[i].equals(name)) {
                    name = "launch_configuration";
                }
                ++i;
                continue;
            }
        }
        i = 0;
        while (i < LaunchManager.DISALLOWED_CONFIG_NAME_CHARS.length) {
            name = name.replace(LaunchManager.DISALLOWED_CONFIG_NAME_CHARS[i], '_');
            ++i;
        }
        return this.generateUniqueLaunchConfigurationNameFrom(name);
    }

    public boolean isValidLaunchConfigurationName(String configname) throws IllegalArgumentException {
        int i;
        if ("win32".equals(Platform.getOS())) {
            i = 0;
            while (i < UNSUPPORTED_WIN32_CONFIG_NAMES.length) {
                if (configname.equals(UNSUPPORTED_WIN32_CONFIG_NAMES[i])) {
                    throw new IllegalArgumentException(MessageFormat.format((String)DebugCoreMessages.LaunchManager_invalid_config_name, (Object[])new String[]{configname}));
                }
                ++i;
            }
        }
        i = 0;
        while (i < DISALLOWED_CONFIG_NAME_CHARS.length) {
            if (configname.indexOf(DISALLOWED_CONFIG_NAME_CHARS[i]) > -1) {
                throw new IllegalArgumentException(MessageFormat.format((String)DebugCoreMessages.LaunchManager_invalid_config_name_char, (Object[])new String[]{String.valueOf(DISALLOWED_CONFIG_NAME_CHARS[i])}));
            }
            ++i;
        }
        return true;
    }

    class ConfigurationNotifier
    implements ISafeRunnable {
        private ILaunchConfigurationListener fListener;
        private int fType;
        private ILaunchConfiguration fConfiguration;

        ConfigurationNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during launch configuration change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void notify(ILaunchConfiguration configuration, int update) {
            this.fConfiguration = configuration;
            this.fType = update;
            if (LaunchManager.this.fLaunchConfigurationListeners.size() > 0) {
                Object[] listeners = LaunchManager.this.fLaunchConfigurationListeners.getListeners();
                int i = 0;
                while (i < listeners.length) {
                    this.fListener = (ILaunchConfigurationListener)listeners[i];
                    SafeRunner.run((ISafeRunnable)this);
                    ++i;
                }
            }
            this.fConfiguration = null;
            this.fListener = null;
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.launchConfigurationAdded(this.fConfiguration);
                    break;
                }
                case 1: {
                    this.fListener.launchConfigurationRemoved(this.fConfiguration);
                    break;
                }
                case 2: {
                    this.fListener.launchConfigurationChanged(this.fConfiguration);
                }
            }
        }
    }

    class LaunchManagerVisitor
    implements IResourceDeltaVisitor {
        LaunchManagerVisitor() {
        }

        public boolean visit(IResourceDelta delta) {
            if (delta == null) {
                return false;
            }
            if ((delta.getFlags() & 0x4000) != 0) {
                if (delta.getResource() instanceof IProject) {
                    IProject project = (IProject)delta.getResource();
                    if (project.isOpen()) {
                        LaunchManager.this.projectOpened(project);
                    } else {
                        LaunchManager.this.projectClosed(project);
                    }
                }
                return false;
            }
            IResource resource = delta.getResource();
            if (resource instanceof IFile) {
                IFile file = (IFile)resource;
                if ("launch".equals(file.getFileExtension())) {
                    LaunchConfiguration handle = new LaunchConfiguration(file);
                    switch (delta.getKind()) {
                        case 1: {
                            LaunchManager.this.launchConfigurationAdded(handle);
                            break;
                        }
                        case 2: {
                            LaunchManager.this.launchConfigurationDeleted(handle);
                            break;
                        }
                        case 4: {
                            LaunchManager.this.launchConfigurationChanged(handle);
                        }
                    }
                }
                return false;
            }
            return true;
        }
    }

    class LaunchNotifier
    implements ISafeRunnable {
        private ILaunchListener fListener;
        private int fType;
        private ILaunch fLaunch;

        LaunchNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during launch change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void notify(ILaunch launch, int update) {
            this.fLaunch = launch;
            this.fType = update;
            Object[] copiedListeners = LaunchManager.this.fListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (ILaunchListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fLaunch = null;
            this.fListener = null;
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.launchAdded(this.fLaunch);
                    break;
                }
                case 1: {
                    this.fListener.launchRemoved(this.fLaunch);
                    break;
                }
                case 2: {
                    if (!LaunchManager.this.isRegistered(this.fLaunch)) break;
                    this.fListener.launchChanged(this.fLaunch);
                }
            }
        }
    }

    class LaunchesNotifier
    implements ISafeRunnable {
        private ILaunchesListener fListener;
        private int fType;
        private ILaunch[] fNotifierLaunches;
        private ILaunch[] fRegistered;

        LaunchesNotifier() {
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 120, "An exception occurred during launch change notification.", exception);
            DebugPlugin.log((IStatus)status);
        }

        public void notify(ILaunch[] launches, int update) {
            this.fNotifierLaunches = launches;
            this.fType = update;
            this.fRegistered = null;
            Object[] copiedListeners = LaunchManager.this.fLaunchesListeners.getListeners();
            int i = 0;
            while (i < copiedListeners.length) {
                this.fListener = (ILaunchesListener)copiedListeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fNotifierLaunches = null;
            this.fRegistered = null;
            this.fListener = null;
        }

        public void run() throws Exception {
            switch (this.fType) {
                case 0: {
                    this.fListener.launchesAdded(this.fNotifierLaunches);
                    break;
                }
                case 1: {
                    this.fListener.launchesRemoved(this.fNotifierLaunches);
                    break;
                }
                case 2: 
                case 3: {
                    if (this.fRegistered == null) {
                        ArrayList<ILaunch> registered = null;
                        int j = 0;
                        while (j < this.fNotifierLaunches.length) {
                            if (LaunchManager.this.isRegistered(this.fNotifierLaunches[j])) {
                                if (registered != null) {
                                    registered.add(this.fNotifierLaunches[j]);
                                }
                            } else if (registered == null) {
                                registered = new ArrayList<ILaunch>(this.fNotifierLaunches.length);
                                int k = 0;
                                while (k < j) {
                                    registered.add(this.fNotifierLaunches[k]);
                                    ++k;
                                }
                            }
                            ++j;
                        }
                        this.fRegistered = registered == null ? this.fNotifierLaunches : registered.toArray(new ILaunch[registered.size()]);
                    }
                    if (this.fRegistered.length <= 0) break;
                    if (this.fType == 2) {
                        this.fListener.launchesChanged(this.fRegistered);
                    }
                    if (this.fType != 3 || !(this.fListener instanceof ILaunchesListener2)) break;
                    ((ILaunchesListener2)this.fListener).launchesTerminated(this.fRegistered);
                }
            }
        }
    }

    class MappedResourceVisitor
    implements IResourceDeltaVisitor {
        MappedResourceVisitor() {
        }

        public boolean visit(IResourceDelta delta) throws CoreException {
            if ((delta.getFlags() & 0x4000) != 0) {
                return false;
            }
            if (delta.getKind() == 2 && delta.getFlags() != 8192) {
                ArrayList configs = LaunchManager.this.collectAssociatedLaunches(delta.getResource());
                if (configs.size() > 0) {
                    Iterator iter = configs.iterator();
                    while (iter.hasNext()) {
                        try {
                            ((ILaunchConfiguration)iter.next()).delete();
                        }
                        catch (CoreException e) {
                            DebugPlugin.log(e.getStatus());
                        }
                    }
                }
                return false;
            }
            return true;
        }
    }

    class PreferredDelegate {
        private ILaunchDelegate fDelegate = null;
        private String fTypeid = null;
        private Set fModes = null;

        public PreferredDelegate(ILaunchDelegate delegate, String typeid, Set modes) {
            this.fDelegate = delegate;
            this.fTypeid = typeid;
            this.fModes = modes;
        }

        public String getTypeId() {
            return this.fTypeid;
        }

        public Set getModes() {
            return this.fModes;
        }

        public ILaunchDelegate getDelegate() {
            return this.fDelegate;
        }
    }

    class ResourceProxyVisitor
    implements IResourceProxyVisitor {
        private List fList;

        protected ResourceProxyVisitor(List list) {
            this.fList = list;
        }

        public boolean visit(IResourceProxy proxy) {
            if (proxy.getType() == 1) {
                if ("launch".equalsIgnoreCase(proxy.requestFullPath().getFileExtension())) {
                    this.fList.add(proxy.requestResource());
                }
                return false;
            }
            return true;
        }
    }
}

