/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Bidi
 *  com.ibm.icu.text.MessageFormat
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.ImageRegistry
 *  org.eclipse.jface.window.Window
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Shell
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleException
 *  org.osgi.framework.BundleListener
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.SynchronousBundleListener
 */
package org.eclipse.ui.internal;

import com.ibm.icu.text.Bidi;
import com.ibm.icu.text.MessageFormat;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.HashSet;
import java.util.Locale;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.ImageRegistry;
import org.eclipse.jface.window.Window;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.DragCursors;
import org.eclipse.ui.internal.JFaceUtil;
import org.eclipse.ui.internal.ProductInfo;
import org.eclipse.ui.internal.SharedImages;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkingSetManager;
import org.eclipse.ui.internal.decorators.DecoratorManager;
import org.eclipse.ui.internal.dialogs.WorkbenchPreferenceManager;
import org.eclipse.ui.internal.intro.IIntroRegistry;
import org.eclipse.ui.internal.intro.IntroRegistry;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.operations.WorkbenchOperationSupport;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.registry.ActionSetRegistry;
import org.eclipse.ui.internal.registry.EditorRegistry;
import org.eclipse.ui.internal.registry.PerspectiveRegistry;
import org.eclipse.ui.internal.registry.PreferencePageRegistryReader;
import org.eclipse.ui.internal.registry.ViewRegistry;
import org.eclipse.ui.internal.registry.WorkingSetRegistry;
import org.eclipse.ui.internal.themes.IThemeRegistry;
import org.eclipse.ui.internal.themes.ThemeRegistry;
import org.eclipse.ui.internal.themes.ThemeRegistryReader;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.wizards.ExportWizardRegistry;
import org.eclipse.ui.internal.wizards.ImportWizardRegistry;
import org.eclipse.ui.internal.wizards.NewWizardRegistry;
import org.eclipse.ui.operations.IWorkbenchOperationSupport;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.ui.presentations.AbstractPresentationFactory;
import org.eclipse.ui.views.IViewRegistry;
import org.eclipse.ui.wizards.IWizardRegistry;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleException;
import org.osgi.framework.BundleListener;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.SynchronousBundleListener;

public class WorkbenchPlugin
extends AbstractUIPlugin {
    private static final String DATA_SPLASH_SHELL = "org.eclipse.ui.workbench.splashShell";
    private static final String PROP_SPLASH_HANDLE = "org.eclipse.equinox.launcher.splash.handle";
    private static final String LEFT_TO_RIGHT = "ltr";
    private static final String RIGHT_TO_LEFT = "rtl";
    private static final String ORIENTATION_COMMAND_LINE = "-dir";
    private static final String ORIENTATION_PROPERTY = "eclipse.orientation";
    private static final String NL_USER_PROPERTY = "osgi.nl.user";
    private static WorkbenchPlugin inst;
    private EditorRegistry editorRegistry;
    private DecoratorManager decoratorManager;
    private ThemeRegistry themeRegistry;
    private WorkingSetManager workingSetManager;
    private WorkingSetRegistry workingSetRegistry;
    private BundleContext bundleContext;
    private Collection startingBundles = new HashSet();
    public static boolean DEBUG;
    public static String PI_WORKBENCH;
    public static char PREFERENCE_PAGE_CATEGORY_SEPARATOR;
    private WorkbenchPreferenceManager preferenceManager;
    private ViewRegistry viewRegistry;
    private PerspectiveRegistry perspRegistry;
    private ActionSetRegistry actionSetRegistry;
    private SharedImages sharedImages;
    private ProductInfo productInfo = null;
    private IntroRegistry introRegistry;
    private WorkbenchOperationSupport operationSupport;
    private BundleListener bundleListener;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    static {
        DEBUG = false;
        PI_WORKBENCH = "org.eclipse.ui";
        PREFERENCE_PAGE_CATEGORY_SEPARATOR = (char)47;
    }

    public WorkbenchPlugin() {
        inst = this;
    }

    void reset() {
        this.editorRegistry = null;
        if (this.decoratorManager != null) {
            this.decoratorManager.shutdown();
            this.decoratorManager = null;
        }
        ProgressManager.shutdownProgressManager();
        this.themeRegistry = null;
        if (this.workingSetManager != null) {
            this.workingSetManager.dispose();
            this.workingSetManager = null;
        }
        this.workingSetRegistry = null;
        this.preferenceManager = null;
        if (this.viewRegistry != null) {
            this.viewRegistry.dispose();
            this.viewRegistry = null;
        }
        if (this.perspRegistry != null) {
            this.perspRegistry.dispose();
            this.perspRegistry = null;
        }
        this.actionSetRegistry = null;
        this.sharedImages = null;
        this.productInfo = null;
        this.introRegistry = null;
        if (this.operationSupport != null) {
            this.operationSupport.dispose();
            this.operationSupport = null;
        }
        DragCursors.dispose();
        DEBUG = false;
    }

    public static Object createExtension(final IConfigurationElement element, final String classAttribute) throws CoreException {
        try {
            if (BundleUtility.isActivated(element.getDeclaringExtension().getNamespace())) {
                return element.createExecutableExtension(classAttribute);
            }
            final Object[] ret = new Object[1];
            final CoreException[] exc = new CoreException[1];
            BusyIndicator.showWhile(null, (Runnable)new Runnable(){

                public void run() {
                    try {
                        ret[0] = element.createExecutableExtension(classAttribute);
                    }
                    catch (CoreException e) {
                        exc[0] = e;
                    }
                }
            });
            if (exc[0] != null) {
                throw exc[0];
            }
            return ret[0];
        }
        catch (CoreException core) {
            throw core;
        }
        catch (Exception e) {
            throw new CoreException((IStatus)new Status(4, PI_WORKBENCH, 4, WorkbenchMessages.WorkbenchPlugin_extension, (Throwable)e));
        }
    }

    public static boolean hasExecutableExtension(IConfigurationElement element, String extensionName) {
        if (element.getAttribute(extensionName) != null) {
            return true;
        }
        String elementText = element.getValue();
        if (elementText != null && !elementText.equals("")) {
            return true;
        }
        IConfigurationElement[] children = element.getChildren(extensionName);
        return children.length == 1 && children[0].getAttribute("class") != null;
    }

    public static boolean isBundleLoadedForExecutableExtension(IConfigurationElement element, String extensionName) {
        Bundle bundle = WorkbenchPlugin.getBundleForExecutableExtension(element, extensionName);
        if (bundle == null) {
            return true;
        }
        return bundle.getState() == 32;
    }

    public static Bundle getBundleForExecutableExtension(IConfigurationElement element, String extensionName) {
        String prop = null;
        String contributorName = null;
        if (extensionName != null) {
            prop = element.getAttribute(extensionName);
        } else {
            prop = element.getValue();
            if (prop != null && (prop = prop.trim()).equals("")) {
                prop = null;
            }
        }
        if (prop == null) {
            IConfigurationElement[] exec = element.getChildren(extensionName);
            if (exec.length != 0) {
                contributorName = exec[0].getAttribute("plugin");
            }
        } else {
            int i = prop.indexOf(58);
            String executable = i != -1 ? prop.substring(0, i).trim() : prop;
            i = executable.indexOf(47);
            if (i != -1) {
                contributorName = executable.substring(0, i).trim();
            }
        }
        if (contributorName == null) {
            contributorName = element.getContributor().getName();
        }
        return Platform.getBundle(contributorName);
    }

    protected ImageRegistry createImageRegistry() {
        return WorkbenchImages.getImageRegistry();
    }

    public ActionSetRegistry getActionSetRegistry() {
        if (this.actionSetRegistry == null) {
            this.actionSetRegistry = new ActionSetRegistry();
        }
        return this.actionSetRegistry;
    }

    public static WorkbenchPlugin getDefault() {
        return inst;
    }

    public IEditorRegistry getEditorRegistry() {
        if (this.editorRegistry == null) {
            this.editorRegistry = new EditorRegistry();
        }
        return this.editorRegistry;
    }

    public IElementFactory getElementFactory(String targetID) {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PI_WORKBENCH, "elementFactories");
        if (extensionPoint == null) {
            WorkbenchPlugin.log("Unable to find element factory. Extension point: elementFactories not found");
            return null;
        }
        IConfigurationElement targetElement = null;
        IConfigurationElement[] configElements = extensionPoint.getConfigurationElements();
        int j = 0;
        while (j < configElements.length) {
            String strID = configElements[j].getAttribute("id");
            if (targetID.equals(strID)) {
                targetElement = configElements[j];
                break;
            }
            ++j;
        }
        if (targetElement == null) {
            WorkbenchPlugin.log("Unable to find element factory: " + targetID);
            return null;
        }
        IElementFactory factory = null;
        try {
            factory = (IElementFactory)WorkbenchPlugin.createExtension(targetElement, "class");
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Unable to create element factory.", e.getStatus());
            factory = null;
        }
        return factory;
    }

    public AbstractPresentationFactory getPresentationFactory(String targetID) {
        Object o = this.createExtension("presentationFactories", "factory", targetID);
        if (o instanceof AbstractPresentationFactory) {
            return (AbstractPresentationFactory)o;
        }
        WorkbenchPlugin.log("Error creating presentation factory: " + targetID + " -- class is not an AbstractPresentationFactory");
        return null;
    }

    private Object createExtension(String extensionPointId, String elementName, String targetID) {
        IExtensionPoint extensionPoint = Platform.getExtensionRegistry().getExtensionPoint(PI_WORKBENCH, extensionPointId);
        if (extensionPoint == null) {
            WorkbenchPlugin.log("Unable to find extension. Extension point: " + extensionPointId + " not found");
            return null;
        }
        IConfigurationElement targetElement = null;
        IConfigurationElement[] elements = extensionPoint.getConfigurationElements();
        int j = 0;
        while (j < elements.length) {
            String strID;
            IConfigurationElement element = elements[j];
            if ((elementName == null || elementName.equals(element.getName())) && targetID.equals(strID = element.getAttribute("id"))) {
                targetElement = element;
                break;
            }
            ++j;
        }
        if (targetElement == null) {
            WorkbenchPlugin.log("Unable to find extension: " + targetID + " in extension point: " + extensionPointId);
            return null;
        }
        try {
            return WorkbenchPlugin.createExtension(targetElement, "class");
        }
        catch (CoreException e) {
            WorkbenchPlugin.log("Unable to create extension: " + targetID + " in extension point: " + extensionPointId + ", status: ", e.getStatus());
            return null;
        }
    }

    public IPerspectiveRegistry getPerspectiveRegistry() {
        if (this.perspRegistry == null) {
            this.perspRegistry = new PerspectiveRegistry();
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    WorkbenchPlugin.this.perspRegistry.load();
                }
            });
        }
        return this.perspRegistry;
    }

    public IWorkingSetManager getWorkingSetManager() {
        if (this.workingSetManager == null) {
            this.workingSetManager = new WorkingSetManager(this.bundleContext);
            this.workingSetManager.restoreState();
        }
        return this.workingSetManager;
    }

    public WorkingSetRegistry getWorkingSetRegistry() {
        if (this.workingSetRegistry == null) {
            this.workingSetRegistry = new WorkingSetRegistry();
            this.workingSetRegistry.load();
        }
        return this.workingSetRegistry;
    }

    public IIntroRegistry getIntroRegistry() {
        if (this.introRegistry == null) {
            this.introRegistry = new IntroRegistry();
        }
        return this.introRegistry;
    }

    public IWorkbenchOperationSupport getOperationSupport() {
        if (this.operationSupport == null) {
            this.operationSupport = new WorkbenchOperationSupport();
        }
        return this.operationSupport;
    }

    public PreferenceManager getPreferenceManager() {
        if (this.preferenceManager == null) {
            this.preferenceManager = new WorkbenchPreferenceManager(PREFERENCE_PAGE_CATEGORY_SEPARATOR);
            PreferencePageRegistryReader registryReader = new PreferencePageRegistryReader(this.getWorkbench());
            registryReader.loadFromRegistry(Platform.getExtensionRegistry());
            this.preferenceManager.addPages(registryReader.getTopLevelNodes());
        }
        return this.preferenceManager;
    }

    public ISharedImages getSharedImages() {
        if (this.sharedImages == null) {
            this.sharedImages = new SharedImages();
        }
        return this.sharedImages;
    }

    public IThemeRegistry getThemeRegistry() {
        if (this.themeRegistry == null) {
            this.themeRegistry = new ThemeRegistry();
            ThemeRegistryReader reader = new ThemeRegistryReader();
            reader.readThemes(Platform.getExtensionRegistry(), this.themeRegistry);
        }
        return this.themeRegistry;
    }

    public IViewRegistry getViewRegistry() {
        if (this.viewRegistry == null) {
            this.viewRegistry = new ViewRegistry();
        }
        return this.viewRegistry;
    }

    public IWorkbench getWorkbench() {
        return PlatformUI.getWorkbench();
    }

    protected void initializeDefaultPreferences(IPreferenceStore store) {
    }

    public static void log(String message) {
        WorkbenchPlugin.getDefault().getLog().log(StatusUtil.newStatus(4, message, null));
    }

    public static void log(Throwable t) {
        WorkbenchPlugin.getDefault().getLog().log(WorkbenchPlugin.getStatus(t));
    }

    public static IStatus getStatus(Throwable t) {
        String message = StatusUtil.getLocalizedMessage(t);
        return WorkbenchPlugin.newError(message, t);
    }

    public static IStatus newError(String message, Throwable t) {
        String pluginId = "org.eclipse.ui.workbench";
        int errorCode = 0;
        if (t instanceof CoreException) {
            CoreException ce = (CoreException)t;
            pluginId = ce.getStatus().getPlugin();
            errorCode = ce.getStatus().getCode();
        }
        return new Status(4, pluginId, errorCode, message, StatusUtil.getCause(t));
    }

    public static void log(String message, Throwable t) {
        IStatus status = StatusUtil.newStatus(4, message, t);
        WorkbenchPlugin.log(message, status);
    }

    public static void log(Class clazz, String methodName, Throwable t) {
        String msg = MessageFormat.format((String)"Exception in {0}.{1}: {2}", (Object[])new Object[]{clazz.getName(), methodName, t});
        WorkbenchPlugin.log(msg, t);
    }

    public static void log(String message, IStatus status) {
        if (message != null) {
            WorkbenchPlugin.getDefault().getLog().log(StatusUtil.newStatus(4, message, null));
        }
        WorkbenchPlugin.getDefault().getLog().log(status);
    }

    public static void log(IStatus status) {
        WorkbenchPlugin.getDefault().getLog().log(status);
    }

    public DecoratorManager getDecoratorManager() {
        if (this.decoratorManager == null) {
            this.decoratorManager = new DecoratorManager();
        }
        return this.decoratorManager;
    }

    public void start(BundleContext context) throws Exception {
        context.addBundleListener(this.getBundleListener());
        super.start(context);
        this.bundleContext = context;
        JFaceUtil.initializeJFace();
        Window.setDefaultOrientation((int)this.getDefaultOrientation());
        Bundle uiBundle = Platform.getBundle((String)"org.eclipse.ui");
        try {
            if (uiBundle != null) {
                uiBundle.start(1);
            }
        }
        catch (BundleException e) {
            WorkbenchPlugin.log("Unable to load UI activator", e);
        }
    }

    private int getDefaultOrientation() {
        String[] commandLineArgs = Platform.getCommandLineArgs();
        int orientation = this.getCommandLineOrientation(commandLineArgs);
        if (orientation != 0) {
            return orientation;
        }
        orientation = this.getSystemPropertyOrientation();
        if (orientation != 0) {
            return orientation;
        }
        return this.checkCommandLineLocale();
    }

    private Boolean isBidiMessageText() {
        String message = WorkbenchMessages.Startup_Loading_Workbench;
        if (message == null) {
            return null;
        }
        try {
            boolean isBidi = Bidi.requiresBidi((char[])message.toCharArray(), (int)0, (int)message.length());
            return new Boolean(isBidi);
        }
        catch (NoClassDefFoundError noClassDefFoundError) {
            return null;
        }
    }

    private int checkCommandLineLocale() {
        if (System.getProperty(NL_USER_PROPERTY) == null) {
            Boolean needRTL = this.isBidiMessageText();
            if (needRTL != null && needRTL.booleanValue()) {
                return 0x4000000;
            }
        } else {
            boolean bidiLangauage;
            String lang = Locale.getDefault().getLanguage();
            boolean bl = bidiLangauage = "iw".equals(lang) || "he".equals(lang) || "ar".equals(lang) || "fa".equals(lang) || "ur".equals(lang);
            if (bidiLangauage) {
                Boolean needRTL = this.isBidiMessageText();
                if (needRTL == null) {
                    return 0x4000000;
                }
                if (needRTL.booleanValue()) {
                    return 0x4000000;
                }
            }
        }
        return 0;
    }

    private int getSystemPropertyOrientation() {
        String orientation = System.getProperty(ORIENTATION_PROPERTY);
        if (RIGHT_TO_LEFT.equals(orientation)) {
            return 0x4000000;
        }
        if (LEFT_TO_RIGHT.equals(orientation)) {
            return 0x2000000;
        }
        return 0;
    }

    private int getCommandLineOrientation(String[] commandLineArgs) {
        int i = 0;
        while (i < commandLineArgs.length - 1) {
            if (commandLineArgs[i].equalsIgnoreCase(ORIENTATION_COMMAND_LINE)) {
                String orientation = commandLineArgs[i + 1];
                if (orientation.equals(RIGHT_TO_LEFT)) {
                    System.setProperty(ORIENTATION_PROPERTY, RIGHT_TO_LEFT);
                    return 0x4000000;
                }
                if (orientation.equals(LEFT_TO_RIGHT)) {
                    System.setProperty(ORIENTATION_PROPERTY, LEFT_TO_RIGHT);
                    return 0x2000000;
                }
            }
            ++i;
        }
        return 0;
    }

    public Bundle[] getBundles() {
        return this.bundleContext == null ? new Bundle[]{} : this.bundleContext.getBundles();
    }

    public BundleContext getBundleContext() {
        return this.bundleContext;
    }

    public String getAppName() {
        return this.getProductInfo().getAppName();
    }

    public String getAppVersion() {
        return this.getProductInfo().getAppVersion();
    }

    public String getProductName() {
        return this.getProductInfo().getProductName();
    }

    public ImageDescriptor[] getWindowImages() {
        return this.getProductInfo().getWindowImages();
    }

    private ProductInfo getProductInfo() {
        if (this.productInfo == null) {
            this.productInfo = new ProductInfo(Platform.getProduct());
        }
        return this.productInfo;
    }

    public void stop(BundleContext context) throws Exception {
        if (this.bundleListener != null) {
            context.removeBundleListener(this.bundleListener);
            this.bundleListener = null;
        }
        super.stop(context);
    }

    public IWizardRegistry getNewWizardRegistry() {
        return NewWizardRegistry.getInstance();
    }

    public IWizardRegistry getImportWizardRegistry() {
        return ImportWizardRegistry.getInstance();
    }

    public IWizardRegistry getExportWizardRegistry() {
        return ExportWizardRegistry.getInstance();
    }

    public IPath getDataLocation() {
        try {
            return this.getStateLocation();
        }
        catch (IllegalStateException illegalStateException) {
            return null;
        }
    }

    void addBundleListener(BundleListener bundleListener) {
        this.bundleContext.addBundleListener(bundleListener);
    }

    void removeBundleListener(BundleListener bundleListener) {
        this.bundleContext.removeBundleListener(bundleListener);
    }

    int getBundleCount() {
        return this.bundleContext.getBundles().length;
    }

    OutputStream getSplashStream() {
        ServiceReference[] ref;
        try {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("java.io.OutputStream");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            ref = this.bundleContext.getServiceReferences(clazz.getName(), null);
        }
        catch (InvalidSyntaxException invalidSyntaxException) {
            return null;
        }
        if (ref == null) {
            return null;
        }
        int i = 0;
        while (i < ref.length) {
            String name = (String)ref[i].getProperty("name");
            if (name != null && name.equals("splashstream")) {
                Object result = this.bundleContext.getService(ref[i]);
                this.bundleContext.ungetService(ref[i]);
                return (OutputStream)result;
            }
            ++i;
        }
        return null;
    }

    private BundleListener getBundleListener() {
        if (this.bundleListener == null) {
            this.bundleListener = new SynchronousBundleListener(){

                public void bundleChanged(BundleEvent event) {
                    WorkbenchPlugin.this.bundleChanged(event);
                }
            };
        }
        return this.bundleListener;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void bundleChanged(BundleEvent event) {
        Collection collection = this.startingBundles;
        synchronized (collection) {
            switch (event.getType()) {
                case 128: {
                    this.startingBundles.add(event.getBundle());
                    break;
                }
                case 2: 
                case 4: {
                    this.startingBundles.remove(event.getBundle());
                    break;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean isStarting(Bundle bundle) {
        Collection collection = this.startingBundles;
        synchronized (collection) {
            return this.startingBundles.contains(bundle);
        }
    }

    public static boolean isSplashHandleSpecified() {
        return System.getProperty(PROP_SPLASH_HANDLE) != null;
    }

    public static Shell getSplashShell(Display display) throws NumberFormatException, IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Shell splashShell = (Shell)display.getData(DATA_SPLASH_SHELL);
        if (splashShell != null) {
            return splashShell;
        }
        String splashHandle = System.getProperty(PROP_SPLASH_HANDLE);
        if (splashHandle == null) {
            return null;
        }
        try {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.swt.widgets.Shell");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Class[] classArray = new Class[2];
            Class<?> clazz2 = class$2;
            if (clazz2 == null) {
                try {
                    clazz2 = class$2 = Class.forName("org.eclipse.swt.widgets.Display");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            classArray[0] = clazz2;
            classArray[1] = Integer.TYPE;
            Method method = clazz.getMethod("internal_new", classArray);
            splashShell = (Shell)method.invoke(null, display, new Integer(splashHandle));
        }
        catch (NoSuchMethodException noSuchMethodException) {
            try {
                Class<?> clazz = class$1;
                if (clazz == null) {
                    try {
                        clazz = class$1 = Class.forName("org.eclipse.swt.widgets.Shell");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                Class[] classArray = new Class[2];
                Class<?> clazz3 = class$2;
                if (clazz3 == null) {
                    try {
                        clazz3 = class$2 = Class.forName("org.eclipse.swt.widgets.Display");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz3;
                classArray[1] = Long.TYPE;
                Method method = clazz.getMethod("internal_new", classArray);
                splashShell = (Shell)method.invoke(null, display, new Long(splashHandle));
            }
            catch (NoSuchMethodException noSuchMethodException2) {}
        }
        display.setData(DATA_SPLASH_SHELL, (Object)splashShell);
        return splashShell;
    }

    public static void unsetSplashShell(Display display) {
        Shell splashShell = (Shell)display.getData(DATA_SPLASH_SHELL);
        if (splashShell != null) {
            if (!splashShell.isDisposed()) {
                splashShell.dispose();
            }
            display.setData(DATA_SPLASH_SHELL, null);
        }
    }
}

