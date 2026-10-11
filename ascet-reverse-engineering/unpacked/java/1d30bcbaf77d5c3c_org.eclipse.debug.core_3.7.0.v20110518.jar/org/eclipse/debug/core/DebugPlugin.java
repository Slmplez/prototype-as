/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.resources.ISaveContext
 *  org.eclipse.core.resources.ISaveParticipant
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IAdapterFactory
 *  org.eclipse.core.runtime.IAdapterManager
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.PlatformObject
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.debug.core;

import com.ibm.icu.text.MessageFormat;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerException;
import org.eclipse.core.resources.ISaveContext;
import org.eclipse.core.resources.ISaveParticipant;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IAdapterFactory;
import org.eclipse.core.runtime.IAdapterManager;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.PlatformObject;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.debug.core.DebugEvent;
import org.eclipse.debug.core.IBreakpointManager;
import org.eclipse.debug.core.IDebugEventFilter;
import org.eclipse.debug.core.IDebugEventSetListener;
import org.eclipse.debug.core.IExpressionManager;
import org.eclipse.debug.core.ILaunch;
import org.eclipse.debug.core.ILaunchConfiguration;
import org.eclipse.debug.core.ILaunchManager;
import org.eclipse.debug.core.ILogicalStructureType;
import org.eclipse.debug.core.IMemoryBlockManager;
import org.eclipse.debug.core.IProcessFactory;
import org.eclipse.debug.core.IStatusHandler;
import org.eclipse.debug.core.model.IProcess;
import org.eclipse.debug.core.model.IValue;
import org.eclipse.debug.core.model.RuntimeProcess;
import org.eclipse.debug.internal.core.BreakpointManager;
import org.eclipse.debug.internal.core.DebugCoreMessages;
import org.eclipse.debug.internal.core.DebugOptions;
import org.eclipse.debug.internal.core.ExpressionManager;
import org.eclipse.debug.internal.core.IInternalDebugCoreConstants;
import org.eclipse.debug.internal.core.LaunchManager;
import org.eclipse.debug.internal.core.LogicalStructureManager;
import org.eclipse.debug.internal.core.MemoryBlockManager;
import org.eclipse.debug.internal.core.Preferences;
import org.eclipse.debug.internal.core.StepFilterManager;
import org.eclipse.debug.internal.core.commands.CommandAdapterFactory;
import org.eclipse.debug.internal.core.sourcelookup.SourceLookupUtils;
import org.osgi.framework.BundleContext;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class DebugPlugin
extends Plugin {
    private static final String PI_DEBUG_CORE = "org.eclipse.debug.core";
    public static final String EXTENSION_POINT_LAUNCH_CONFIGURATION_TYPES = "launchConfigurationTypes";
    public static final String EXTENSION_POINT_LAUNCH_CONFIGURATION_COMPARATORS = "launchConfigurationComparators";
    public static final String EXTENSION_POINT_BREAKPOINTS = "breakpoints";
    public static final String EXTENSION_POINT_STATUS_HANDLERS = "statusHandlers";
    public static final String EXTENSION_POINT_SOURCE_LOCATORS = "sourceLocators";
    public static final String EXTENSION_POINT_LAUNCH_MODES = "launchModes";
    public static final String EXTENSION_POINT_LAUNCH_DELEGATES = "launchDelegates";
    public static final String EXTENSION_POINT_PROCESS_FACTORIES = "processFactories";
    public static final String EXTENSION_POINT_LOGICAL_STRUCTURE_TYPES = "logicalStructureTypes";
    public static final String EXTENSION_POINT_LOGICAL_STRUCTURE_PROVIDERS = "logicalStructureProviders";
    public static final String EXTENSION_POINT_SOURCE_CONTAINER_TYPES = "sourceContainerTypes";
    public static final String EXTENSION_POINT_SOURCE_PATH_COMPUTERS = "sourcePathComputers";
    public static final String EXTENSION_POINT_LAUNCH_OPTIONS = "launchOptions";
    public static final String EXTENSION_POINT_BREAKPOINT_IMPORT_PARTICIPANTS = "breakpointImportParticipants";
    public static final int ERROR = 125;
    public static final int INTERNAL_ERROR = 120;
    public static final int ERR_WORKING_DIRECTORY_NOT_SUPPORTED = 115;
    public static final String ATTR_PROCESS_FACTORY_ID = "process_factory_id";
    public static final String ATTR_CAPTURE_OUTPUT = "org.eclipse.debug.core.capture_output";
    public static final String ATTR_LAUNCH_TIMESTAMP = "org.eclipse.debug.core.launch.timestamp";
    public static final String ATTR_CONSOLE_ENCODING = "org.eclipse.debug.ui.ATTR_CONSOLE_ENCODING";
    public static final String PREF_DELETE_CONFIGS_ON_PROJECT_DELETE = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".PREF_DELETE_CONFIGS_ON_PROJECT_DELETE";
    public static final String ATTR_BREAKPOINT_IS_DELETED = String.valueOf(DebugPlugin.getUniqueIdentifier()) + ".breakpointIsDeleted";
    private static DebugPlugin fgDebugPlugin = null;
    private BreakpointManager fBreakpointManager;
    private ExpressionManager fExpressionManager;
    private LaunchManager fLaunchManager;
    private MemoryBlockManager fMemoryBlockManager;
    private ListenerList fEventListeners = new ListenerList();
    private ListenerList fEventFilters = new ListenerList();
    private boolean fShuttingDown = false;
    private HashMap fStatusHandlers = null;
    private HashMap fProcessFactories = null;
    private static final int NOTIFY_FILTERS = 0;
    private static final int NOTIFY_EVENTS = 1;
    private List fEventQueue = new ArrayList();
    private EventDispatchJob fEventDispatchJob = new EventDispatchJob();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;

    public static DebugPlugin getDefault() {
        return fgDebugPlugin;
    }

    private static void setDefault(DebugPlugin plugin) {
        fgDebugPlugin = plugin;
    }

    public static String getUniqueIdentifier() {
        return PI_DEBUG_CORE;
    }

    public DebugPlugin() {
        DebugPlugin.setDefault(this);
    }

    public void addDebugEventListener(IDebugEventSetListener listener) {
        this.fEventListeners.add((Object)listener);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void fireDebugEventSet(DebugEvent[] events) {
        if (this.isShuttingDown() || events == null || this.fEventListeners.isEmpty()) {
            return;
        }
        List list = this.fEventQueue;
        synchronized (list) {
            this.fEventQueue.add(events);
        }
        this.fEventDispatchJob.schedule();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void asyncExec(Runnable r) {
        List list = this.fEventQueue;
        synchronized (list) {
            this.fEventQueue.add(r);
        }
        this.fEventDispatchJob.schedule();
    }

    public synchronized IBreakpointManager getBreakpointManager() {
        if (this.fBreakpointManager == null) {
            this.fBreakpointManager = new BreakpointManager();
        }
        return this.fBreakpointManager;
    }

    public synchronized ILaunchManager getLaunchManager() {
        if (this.fLaunchManager == null) {
            this.fLaunchManager = new LaunchManager();
        }
        return this.fLaunchManager;
    }

    public synchronized IMemoryBlockManager getMemoryBlockManager() {
        if (this.fMemoryBlockManager == null) {
            this.fMemoryBlockManager = new MemoryBlockManager();
        }
        return this.fMemoryBlockManager;
    }

    public IStatusHandler getStatusHandler(IStatus status) {
        IConfigurationElement config;
        boolean enabled = Platform.getPreferencesService().getBoolean(DebugPlugin.getUniqueIdentifier(), IInternalDebugCoreConstants.PREF_ENABLE_STATUS_HANDLERS, true, null);
        if (!enabled) {
            return null;
        }
        StatusHandlerKey key = new StatusHandlerKey(status.getPlugin(), status.getCode());
        if (this.fStatusHandlers == null) {
            this.initializeStatusHandlers();
        }
        if ((config = (IConfigurationElement)this.fStatusHandlers.get(key)) != null) {
            try {
                Object handler = config.createExecutableExtension("class");
                if (handler instanceof IStatusHandler) {
                    return (IStatusHandler)handler;
                }
                this.invalidStatusHandler(null, MessageFormat.format((String)"Registered status handler {0} does not implement required interface IStatusHandler.", (Object[])new String[]{config.getDeclaringExtension().getUniqueIdentifier()}));
            }
            catch (CoreException e) {
                DebugPlugin.log(e);
            }
        }
        return null;
    }

    public synchronized IExpressionManager getExpressionManager() {
        if (this.fExpressionManager == null) {
            this.fExpressionManager = new ExpressionManager();
        }
        return this.fExpressionManager;
    }

    public void removeDebugEventListener(IDebugEventSetListener listener) {
        this.fEventListeners.remove((Object)listener);
    }

    public void stop(BundleContext context) throws Exception {
        try {
            this.setShuttingDown(true);
            if (this.fLaunchManager != null) {
                this.fLaunchManager.shutdown();
            }
            if (this.fBreakpointManager != null) {
                this.fBreakpointManager.shutdown();
            }
            if (this.fMemoryBlockManager != null) {
                this.fMemoryBlockManager.shutdown();
            }
            this.fEventListeners.clear();
            this.fEventFilters.clear();
            SourceLookupUtils.shutdown();
            Preferences.savePreferences(DebugPlugin.getUniqueIdentifier());
            ResourcesPlugin.getWorkspace().removeSaveParticipant(DebugPlugin.getUniqueIdentifier());
        }
        finally {
            super.stop(context);
            DebugPlugin.setDefault(null);
        }
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        DebugOptions.initDebugOptions();
        ResourcesPlugin.getWorkspace().addSaveParticipant(DebugPlugin.getUniqueIdentifier(), new ISaveParticipant(){

            public void saving(ISaveContext saveContext) throws CoreException {
                if (DebugPlugin.this.fExpressionManager != null) {
                    DebugPlugin.this.fExpressionManager.storeWatchExpressions();
                }
                Preferences.savePreferences(DebugPlugin.getUniqueIdentifier());
            }

            public void rollback(ISaveContext saveContext) {
            }

            public void prepareToSave(ISaveContext saveContext) throws CoreException {
            }

            public void doneSaving(ISaveContext saveContext) {
            }
        });
        IAdapterManager manager = Platform.getAdapterManager();
        CommandAdapterFactory actionFactory = new CommandAdapterFactory();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.debug.core.model.IDisconnect");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.debug.core.model.IDropToFrame");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz2);
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.debug.core.model.IStep");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz3);
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.debug.core.model.IStepFilters");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz4);
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.debug.core.model.ISuspendResume");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz5);
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("org.eclipse.debug.core.model.ITerminate");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz6);
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("org.eclipse.debug.core.ILaunch");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz7);
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("org.eclipse.debug.core.model.IProcess");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz8);
        Class<?> clazz9 = class$8;
        if (clazz9 == null) {
            try {
                clazz9 = class$8 = Class.forName("org.eclipse.debug.core.model.IDebugElement");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        manager.registerAdapters((IAdapterFactory)actionFactory, (Class)clazz9);
    }

    public static IProcess newProcess(ILaunch launch, Process process, String label) {
        return DebugPlugin.newProcess(launch, process, label, null);
    }

    public static IProcess newProcess(ILaunch launch, Process process, String label, Map attributes) {
        ILaunchConfiguration config = launch.getLaunchConfiguration();
        String processFactoryID = null;
        if (config != null) {
            try {
                processFactoryID = config.getAttribute(ATTR_PROCESS_FACTORY_ID, (String)null);
            }
            catch (CoreException coreException) {}
        }
        if (processFactoryID != null) {
            IConfigurationElement element;
            DebugPlugin plugin = DebugPlugin.getDefault();
            if (plugin.fProcessFactories == null) {
                plugin.initializeProcessFactories();
            }
            if ((element = (IConfigurationElement)plugin.fProcessFactories.get(processFactoryID)) == null) {
                return null;
            }
            IProcessFactory processFactory = null;
            try {
                processFactory = (IProcessFactory)element.createExecutableExtension("class");
            }
            catch (CoreException exception) {
                DebugPlugin.log(exception);
                return null;
            }
            return processFactory.newProcess(launch, process, label, attributes);
        }
        return new RuntimeProcess(launch, process, label, attributes);
    }

    public static ILogicalStructureType[] getLogicalStructureTypes(IValue value) {
        return LogicalStructureManager.getDefault().getLogicalStructureTypes(value);
    }

    public static ILogicalStructureType getDefaultStructureType(ILogicalStructureType[] types) {
        return LogicalStructureManager.getDefault().getSelectedStructureType(types);
    }

    public static void setDefaultStructureType(ILogicalStructureType[] types, ILogicalStructureType def) {
        LogicalStructureManager.getDefault().setEnabledType(types, def);
    }

    public static Process exec(String[] cmdLine, File workingDirectory) throws CoreException {
        return DebugPlugin.exec(cmdLine, workingDirectory, null);
    }

    public static Process exec(String[] cmdLine, File workingDirectory, String[] envp) throws CoreException {
        Process p;
        block3: {
            p = null;
            try {
                p = workingDirectory == null ? Runtime.getRuntime().exec(cmdLine, envp) : Runtime.getRuntime().exec(cmdLine, envp, workingDirectory);
            }
            catch (IOException e) {
                Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.DebugPlugin_0, (Throwable)e);
                throw new CoreException((IStatus)status);
            }
            catch (NoSuchMethodError e) {
                Object result;
                Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 115, DebugCoreMessages.DebugPlugin_Eclipse_runtime_does_not_support_working_directory_2, (Throwable)e);
                IStatusHandler handler = DebugPlugin.getDefault().getStatusHandler((IStatus)status);
                if (handler == null || !((result = handler.handleStatus((IStatus)status, null)) instanceof Boolean) || !((Boolean)result).booleanValue()) break block3;
                p = DebugPlugin.exec(cmdLine, null);
            }
        }
        return p;
    }

    private boolean isShuttingDown() {
        return this.fShuttingDown;
    }

    private void setShuttingDown(boolean value) {
        this.fShuttingDown = value;
    }

    private Object[] getEventListeners() {
        return this.fEventListeners.getListeners();
    }

    public void addDebugEventFilter(IDebugEventFilter filter) {
        this.fEventFilters.add((Object)filter);
    }

    public void removeDebugEventFilter(IDebugEventFilter filter) {
        this.fEventFilters.remove((Object)filter);
    }

    public static void logDebugMessage(String message) {
        if (DebugPlugin.getDefault().isDebugging()) {
            DebugPlugin.log((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, MessageFormat.format((String)DebugCoreMessages.DebugPlugin_2, (Object[])new String[]{message}), null));
        }
    }

    public static void logMessage(String message, Throwable throwable) {
        DebugPlugin.log((IStatus)new Status(4, DebugPlugin.getUniqueIdentifier(), 125, message, throwable));
    }

    public static void log(IStatus status) {
        DebugPlugin.getDefault().getLog().log(status);
    }

    public static void log(Throwable t) {
        Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.DebugPlugin_3, t);
        DebugPlugin.log((IStatus)status);
    }

    private void initializeStatusHandlers() {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PI_DEBUG_CORE, EXTENSION_POINT_STATUS_HANDLERS);
        IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
        this.fStatusHandlers = new HashMap(infos.length);
        int i = 0;
        while (i < infos.length) {
            IConfigurationElement configurationElement = infos[i];
            String id = configurationElement.getAttribute("plugin");
            String code = configurationElement.getAttribute("code");
            if (id != null && code != null) {
                try {
                    StatusHandlerKey key = new StatusHandlerKey(id, Integer.parseInt(code));
                    this.fStatusHandlers.put(key, configurationElement);
                }
                catch (NumberFormatException e) {
                    this.invalidStatusHandler(e, configurationElement.getAttribute("id"));
                }
            } else {
                this.invalidStatusHandler(null, configurationElement.getAttribute("id"));
            }
            ++i;
        }
    }

    private void initializeProcessFactories() {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PI_DEBUG_CORE, EXTENSION_POINT_PROCESS_FACTORIES);
        IConfigurationElement[] infos = extensionPoint.getConfigurationElements();
        this.fProcessFactories = new HashMap(infos.length);
        int i = 0;
        while (i < infos.length) {
            IConfigurationElement configurationElement = infos[i];
            String id = configurationElement.getAttribute("id");
            String clss = configurationElement.getAttribute("class");
            if (id != null && clss != null) {
                this.fProcessFactories.put(id, configurationElement);
            } else {
                String badDefiner = infos[i].getContributor().getName();
                DebugPlugin.log((IStatus)new Status(4, PI_DEBUG_CORE, 125, MessageFormat.format((String)DebugCoreMessages.DebugPlugin_4, (Object[])new String[]{badDefiner, id}), null));
            }
            ++i;
        }
    }

    private void invalidStatusHandler(Exception e, String id) {
        DebugPlugin.log((IStatus)new Status(4, PI_DEBUG_CORE, 125, MessageFormat.format((String)DebugCoreMessages.DebugPlugin_5, (Object[])new String[]{id}), (Throwable)e));
    }

    public static Document newDocument() throws CoreException {
        try {
            return LaunchManager.getDocument();
        }
        catch (ParserConfigurationException e) {
            DebugPlugin.abort("Unable to create new XML document.", e);
            return null;
        }
    }

    public static String serializeDocument(Document document) throws CoreException {
        try {
            return LaunchManager.serializeDocument(document);
        }
        catch (TransformerException e) {
            DebugPlugin.abort("Unable to serialize XML document.", e);
        }
        catch (IOException e) {
            DebugPlugin.abort("Unable to serialize XML document.", e);
        }
        return null;
    }

    /*
     * Exception decompiling
     */
    public static Element parseDocument(String document) throws CoreException {
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

    private static void abort(String message, Throwable exception) throws CoreException {
        Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, message, exception);
        throw new CoreException((IStatus)status);
    }

    public static String[] parseArguments(String args) {
        if (args == null) {
            return new String[0];
        }
        ArgumentParser parser = new ArgumentParser(args);
        String[] res = parser.parseArguments();
        return res;
    }

    public static void setUseStepFilters(boolean useStepFilters) {
        DebugPlugin.getStepFilterManager().setUseStepFilters(useStepFilters);
    }

    public static boolean isUseStepFilters() {
        return DebugPlugin.getStepFilterManager().isUseStepFilters();
    }

    private static StepFilterManager getStepFilterManager() {
        return ((LaunchManager)DebugPlugin.getDefault().getLaunchManager()).getStepFilterManager();
    }

    public static Object getAdapter(Object element, Class type) {
        Object adapter = null;
        if (element != null) {
            if (type.isInstance(element)) {
                return element;
            }
            if (element instanceof IAdaptable) {
                adapter = ((IAdaptable)element).getAdapter(type);
            }
            if (adapter == null && !(element instanceof PlatformObject)) {
                adapter = Platform.getAdapterManager().getAdapter(element, type);
            }
            if (adapter == null) {
                adapter = Platform.getAdapterManager().loadAdapter(element, type.getName());
            }
        }
        return adapter;
    }

    private static class ArgumentParser {
        private String fArgs;
        private int fIndex = 0;
        private int ch = -1;

        public ArgumentParser(String args) {
            this.fArgs = args;
        }

        public String[] parseArguments() {
            ArrayList<String> v = new ArrayList<String>();
            this.ch = this.getNext();
            while (this.ch > 0) {
                if (Character.isWhitespace((char)this.ch)) {
                    this.ch = this.getNext();
                    continue;
                }
                if (this.ch == 34) {
                    StringBuffer buf = new StringBuffer();
                    buf.append(this.parseString());
                    if (buf.length() == 0 && Platform.getOS().equals("win32")) {
                        buf.append("\"\"");
                    }
                    v.add(buf.toString());
                    continue;
                }
                v.add(this.parseToken());
            }
            String[] result = new String[v.size()];
            v.toArray(result);
            return result;
        }

        private int getNext() {
            if (this.fIndex < this.fArgs.length()) {
                return this.fArgs.charAt(this.fIndex++);
            }
            return -1;
        }

        private String parseString() {
            this.ch = this.getNext();
            if (this.ch == 34) {
                this.ch = this.getNext();
                return "";
            }
            StringBuffer buf = new StringBuffer();
            while (this.ch > 0 && this.ch != 34) {
                if (this.ch == 92) {
                    this.ch = this.getNext();
                    if (this.ch != 34) {
                        buf.append('\\');
                    } else if (Platform.getOS().equals("win32")) {
                        buf.append('\\');
                    }
                }
                if (this.ch <= 0) continue;
                buf.append((char)this.ch);
                this.ch = this.getNext();
            }
            this.ch = this.getNext();
            return buf.toString();
        }

        private String parseToken() {
            StringBuffer buf = new StringBuffer();
            while (this.ch > 0 && !Character.isWhitespace((char)this.ch)) {
                if (this.ch == 92) {
                    this.ch = this.getNext();
                    if (Character.isWhitespace((char)this.ch)) {
                        buf.append('\\');
                        return buf.toString();
                    }
                    if (this.ch > 0) {
                        if (this.ch != 34) {
                            buf.append('\\');
                        } else if (Platform.getOS().equals("win32")) {
                            buf.append('\\');
                        }
                        buf.append((char)this.ch);
                        this.ch = this.getNext();
                        continue;
                    }
                    if (this.ch != -1) continue;
                    buf.append('\\');
                    continue;
                }
                if (this.ch == 34) {
                    buf.append(this.parseString());
                    continue;
                }
                buf.append((char)this.ch);
                this.ch = this.getNext();
            }
            return buf.toString();
        }
    }

    class AsynchRunner
    implements ISafeRunnable {
        private Runnable fRunnable = null;

        AsynchRunner() {
        }

        void async(Runnable runnable) {
            this.fRunnable = runnable;
            SafeRunner.run((ISafeRunnable)this);
            this.fRunnable = null;
        }

        public void handleException(Throwable exception) {
            Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.DebugPlugin_6, exception);
            DebugPlugin.log((IStatus)status);
        }

        public void run() throws Exception {
            this.fRunnable.run();
        }
    }

    class EventDispatchJob
    extends Job {
        EventNotifier fNotifier;
        AsynchRunner fRunner;

        public EventDispatchJob() {
            super(DebugCoreMessages.DebugPlugin_1);
            this.fNotifier = new EventNotifier();
            this.fRunner = new AsynchRunner();
            this.setPriority(10);
            this.setSystem(true);
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        protected IStatus run(IProgressMonitor monitor) {
            while (!DebugPlugin.this.fEventQueue.isEmpty()) {
                Object next = null;
                List list = DebugPlugin.this.fEventQueue;
                synchronized (list) {
                    if (!DebugPlugin.this.fEventQueue.isEmpty()) {
                        next = DebugPlugin.this.fEventQueue.remove(0);
                    }
                }
                if (next instanceof Runnable) {
                    this.fRunner.async(next);
                    continue;
                }
                if (next == null) continue;
                this.fNotifier.dispatch(next);
            }
            return Status.OK_STATUS;
        }

        public boolean shouldRun() {
            return this.shouldSchedule();
        }

        public boolean shouldSchedule() {
            return !DebugPlugin.this.isShuttingDown() && !DebugPlugin.this.fEventListeners.isEmpty();
        }
    }

    class EventNotifier
    implements ISafeRunnable {
        private DebugEvent[] fEvents;
        private IDebugEventSetListener fListener;
        private IDebugEventFilter fFilter;
        private int fMode;

        EventNotifier() {
        }

        public void handleException(Throwable exception) {
            switch (this.fMode) {
                case 0: {
                    Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.DebugPlugin_7, exception);
                    DebugPlugin.log((IStatus)status);
                    break;
                }
                case 1: {
                    Status status = new Status(4, DebugPlugin.getUniqueIdentifier(), 125, DebugCoreMessages.DebugPlugin_8, exception);
                    DebugPlugin.log((IStatus)status);
                }
            }
        }

        public void run() throws Exception {
            switch (this.fMode) {
                case 0: {
                    this.fEvents = this.fFilter.filterDebugEvents(this.fEvents);
                    break;
                }
                case 1: {
                    this.fListener.handleDebugEvents(this.fEvents);
                }
            }
        }

        void dispatch(DebugEvent[] events) {
            int i;
            this.fEvents = events;
            Object[] filters = DebugPlugin.this.fEventFilters.getListeners();
            if (filters.length > 0) {
                this.fMode = 0;
                int i2 = 0;
                while (i2 < filters.length) {
                    this.fFilter = (IDebugEventFilter)filters[i2];
                    SafeRunner.run((ISafeRunnable)this);
                    if (this.fEvents == null || this.fEvents.length == 0) {
                        return;
                    }
                    ++i2;
                }
            }
            this.fMode = 1;
            Object[] listeners = DebugPlugin.this.getEventListeners();
            if (DebugOptions.DEBUG_EVENTS) {
                i = 0;
                while (i < this.fEvents.length) {
                    System.out.println(this.fEvents[i]);
                    ++i;
                }
            }
            i = 0;
            while (i < listeners.length) {
                this.fListener = (IDebugEventSetListener)listeners[i];
                SafeRunner.run((ISafeRunnable)this);
                ++i;
            }
            this.fEvents = null;
            this.fFilter = null;
            this.fListener = null;
        }
    }

    class StatusHandlerKey {
        String fPluginId;
        int fCode;

        StatusHandlerKey(String pluginId, int code) {
            this.fPluginId = pluginId;
            this.fCode = code;
        }

        public int hashCode() {
            return this.fPluginId.hashCode() + this.fCode;
        }

        public boolean equals(Object obj) {
            if (obj instanceof StatusHandlerKey) {
                StatusHandlerKey s = (StatusHandlerKey)obj;
                return this.fCode == s.fCode && this.fPluginId.equals(s.fPluginId);
            }
            return false;
        }
    }
}

