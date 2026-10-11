/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.util.ULocale
 *  org.eclipse.core.commands.Command
 *  org.eclipse.core.commands.CommandManager
 *  org.eclipse.core.commands.common.EventManager
 *  org.eclipse.core.commands.contexts.ContextManager
 *  org.eclipse.core.databinding.observable.Realm
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IAdaptable
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionDelta
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProduct
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IRegistryChangeEvent
 *  org.eclipse.core.runtime.IRegistryChangeListener
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.core.runtime.jobs.LockListener
 *  org.eclipse.jface.action.ActionContributionItem
 *  org.eclipse.jface.action.ContributionManager
 *  org.eclipse.jface.action.ExternalActionManager
 *  org.eclipse.jface.action.ExternalActionManager$CommandCallback
 *  org.eclipse.jface.action.ExternalActionManager$IActiveChecker
 *  org.eclipse.jface.action.ExternalActionManager$ICallback
 *  org.eclipse.jface.action.ExternalActionManager$IExecuteApplicable
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.bindings.BindingManager
 *  org.eclipse.jface.bindings.BindingManagerEvent
 *  org.eclipse.jface.bindings.IBindingManagerListener
 *  org.eclipse.jface.databinding.swt.SWTObservables
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.IDialogConstants
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.dialogs.ProgressMonitorDialog
 *  org.eclipse.jface.operation.IRunnableContext
 *  org.eclipse.jface.operation.ModalContext
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceManager
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.util.OpenStrategy
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.jface.window.Window
 *  org.eclipse.jface.window.Window$IExceptionHandler
 *  org.eclipse.jface.window.WindowManager
 *  org.eclipse.osgi.service.runnable.StartupMonitor
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.SWTException
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.DeviceData
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.swt.widgets.Synchronizer
 *  org.eclipse.swt.widgets.TaskBar
 *  org.eclipse.swt.widgets.TaskItem
 *  org.osgi.framework.Bundle
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleListener
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.framework.SynchronousBundleListener
 */
package org.eclipse.ui.internal;

import com.ibm.icu.util.ULocale;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Dictionary;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Set;
import org.eclipse.core.commands.Command;
import org.eclipse.core.commands.CommandManager;
import org.eclipse.core.commands.common.EventManager;
import org.eclipse.core.commands.contexts.ContextManager;
import org.eclipse.core.databinding.observable.Realm;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionDelta;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProduct;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IRegistryChangeEvent;
import org.eclipse.core.runtime.IRegistryChangeListener;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.core.runtime.jobs.LockListener;
import org.eclipse.jface.action.ActionContributionItem;
import org.eclipse.jface.action.ContributionManager;
import org.eclipse.jface.action.ExternalActionManager;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.bindings.BindingManager;
import org.eclipse.jface.bindings.BindingManagerEvent;
import org.eclipse.jface.bindings.IBindingManagerListener;
import org.eclipse.jface.databinding.swt.SWTObservables;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.IDialogConstants;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.dialogs.ProgressMonitorDialog;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.ModalContext;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceManager;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.util.OpenStrategy;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.jface.window.Window;
import org.eclipse.jface.window.WindowManager;
import org.eclipse.osgi.service.runnable.StartupMonitor;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.DeviceData;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.swt.widgets.Synchronizer;
import org.eclipse.swt.widgets.TaskBar;
import org.eclipse.swt.widgets.TaskItem;
import org.eclipse.ui.IDecoratorManager;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IElementFactory;
import org.eclipse.ui.ILocalWorkingSetManager;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.IPerspectiveDescriptor;
import org.eclipse.ui.IPerspectiveRegistry;
import org.eclipse.ui.ISaveableFilter;
import org.eclipse.ui.ISaveablePart;
import org.eclipse.ui.ISharedImages;
import org.eclipse.ui.ISourceProvider;
import org.eclipse.ui.IWindowListener;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.IWorkbenchListener;
import org.eclipse.ui.IWorkbenchPage;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.IWorkingSetManager;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.WorkbenchException;
import org.eclipse.ui.XMLMemento;
import org.eclipse.ui.activities.IWorkbenchActivitySupport;
import org.eclipse.ui.application.WorkbenchAdvisor;
import org.eclipse.ui.browser.IWorkbenchBrowserSupport;
import org.eclipse.ui.commands.IWorkbenchCommandSupport;
import org.eclipse.ui.contexts.IContextActivation;
import org.eclipse.ui.contexts.IContextService;
import org.eclipse.ui.contexts.IWorkbenchContextSupport;
import org.eclipse.ui.handlers.IHandlerService;
import org.eclipse.ui.help.IWorkbenchHelpSystem;
import org.eclipse.ui.internal.ActionSetsEvent;
import org.eclipse.ui.internal.ActivityPersistanceHelper;
import org.eclipse.ui.internal.ApplicationMenuManager;
import org.eclipse.ui.internal.EarlyStartupRunnable;
import org.eclipse.ui.internal.EditorHistory;
import org.eclipse.ui.internal.EditorManager;
import org.eclipse.ui.internal.ExceptionHandler;
import org.eclipse.ui.internal.ExtensionEventHandler;
import org.eclipse.ui.internal.JFaceUtil;
import org.eclipse.ui.internal.LocalWorkingSetManager;
import org.eclipse.ui.internal.ObjectActionContributorManager;
import org.eclipse.ui.internal.Perspective;
import org.eclipse.ui.internal.SaveablesList;
import org.eclipse.ui.internal.SelectionConversionService;
import org.eclipse.ui.internal.StartupThreading;
import org.eclipse.ui.internal.UILockListener;
import org.eclipse.ui.internal.UISynchronizer;
import org.eclipse.ui.internal.WorkbenchColors;
import org.eclipse.ui.internal.WorkbenchConfigurer;
import org.eclipse.ui.internal.WorkbenchImages;
import org.eclipse.ui.internal.WorkbenchIntroManager;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPage;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.WorkbenchWindow;
import org.eclipse.ui.internal.actions.CommandAction;
import org.eclipse.ui.internal.activities.ws.WorkbenchActivitySupport;
import org.eclipse.ui.internal.browser.WorkbenchBrowserSupport;
import org.eclipse.ui.internal.commands.CommandImageManager;
import org.eclipse.ui.internal.commands.CommandImageService;
import org.eclipse.ui.internal.commands.CommandService;
import org.eclipse.ui.internal.commands.WorkbenchCommandSupport;
import org.eclipse.ui.internal.contexts.ActiveContextSourceProvider;
import org.eclipse.ui.internal.contexts.ContextService;
import org.eclipse.ui.internal.contexts.WorkbenchContextSupport;
import org.eclipse.ui.internal.dialogs.PropertyPageContributorManager;
import org.eclipse.ui.internal.help.WorkbenchHelpSystem;
import org.eclipse.ui.internal.intro.IIntroRegistry;
import org.eclipse.ui.internal.intro.IntroDescriptor;
import org.eclipse.ui.internal.keys.BindingService;
import org.eclipse.ui.internal.menus.FocusControlSourceProvider;
import org.eclipse.ui.internal.menus.WorkbenchMenuService;
import org.eclipse.ui.internal.misc.Policy;
import org.eclipse.ui.internal.misc.StatusUtil;
import org.eclipse.ui.internal.misc.UIStats;
import org.eclipse.ui.internal.model.ContributionService;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressManagerUtil;
import org.eclipse.ui.internal.registry.IActionSetDescriptor;
import org.eclipse.ui.internal.registry.UIExtensionTracker;
import org.eclipse.ui.internal.services.ActionSetSourceProvider;
import org.eclipse.ui.internal.services.EvaluationService;
import org.eclipse.ui.internal.services.MenuSourceProvider;
import org.eclipse.ui.internal.services.ServiceLocator;
import org.eclipse.ui.internal.services.ServiceLocatorCreator;
import org.eclipse.ui.internal.services.SourceProviderService;
import org.eclipse.ui.internal.services.WorkbenchLocationService;
import org.eclipse.ui.internal.services.WorkbenchServiceRegistry;
import org.eclipse.ui.internal.splash.EclipseSplashHandler;
import org.eclipse.ui.internal.splash.SplashHandlerFactory;
import org.eclipse.ui.internal.testing.ContributionInfoMessages;
import org.eclipse.ui.internal.testing.WorkbenchTestable;
import org.eclipse.ui.internal.themes.ColorDefinition;
import org.eclipse.ui.internal.themes.FontDefinition;
import org.eclipse.ui.internal.themes.ThemeElementHelper;
import org.eclipse.ui.internal.themes.WorkbenchThemeManager;
import org.eclipse.ui.internal.tweaklets.GrabFocus;
import org.eclipse.ui.internal.tweaklets.Tweaklets;
import org.eclipse.ui.internal.tweaklets.WorkbenchImplementation;
import org.eclipse.ui.internal.util.BundleUtility;
import org.eclipse.ui.internal.util.PrefUtil;
import org.eclipse.ui.internal.util.Util;
import org.eclipse.ui.intro.IIntroManager;
import org.eclipse.ui.keys.IBindingService;
import org.eclipse.ui.menus.IMenuService;
import org.eclipse.ui.operations.IWorkbenchOperationSupport;
import org.eclipse.ui.progress.IProgressService;
import org.eclipse.ui.services.IDisposable;
import org.eclipse.ui.services.IEvaluationService;
import org.eclipse.ui.splash.AbstractSplashHandler;
import org.eclipse.ui.statushandlers.StatusManager;
import org.eclipse.ui.testing.ContributionInfo;
import org.eclipse.ui.themes.IThemeManager;
import org.eclipse.ui.views.IViewRegistry;
import org.eclipse.ui.wizards.IWizardRegistry;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.SynchronousBundleListener;

public final class Workbench
extends EventManager
implements IWorkbench {
    public static final String EARLY_STARTUP_FAMILY = "earlyStartup";
    static final String[] VERSION_STRING = new String[]{"0.046", "2.0"};
    static final String DEFAULT_WORKBENCH_STATE_FILENAME = "workbench.xml";
    private static Workbench instance;
    private static WorkbenchTestable testableObject;
    private static boolean createSplash;
    private static AbstractSplashHandler splash;
    private Display display;
    private WindowManager windowManager;
    private WorkbenchWindow activatedWindow;
    private EditorHistory editorHistory;
    private boolean runEventLoop = true;
    private boolean isStarting = true;
    private boolean isClosing = false;
    private int returnCode = 2;
    private WorkbenchAdvisor advisor;
    private WorkbenchConfigurer workbenchConfigurer;
    private ExtensionEventHandler extensionEventHandler;
    private int largeUpdates = 0;
    private final ServiceLocator serviceLocator;
    private int progressCount = -1;
    private WorkbenchWindow[] createdWindows;
    private ListenerList workbenchListeners = new ListenerList(1);
    private ServiceRegistration workbenchService;
    private WorkbenchActivitySupport workbenchActivitySupport;
    private WorkbenchCommandSupport workbenchCommandSupport;
    private WorkbenchContextSupport workbenchContextSupport;
    private BindingManager bindingManager;
    private CommandManager commandManager;
    private ContextManager contextManager;
    private final IWindowListener windowListener = new IWindowListener(){

        public void windowActivated(IWorkbenchWindow window) {
            Workbench.this.updateActiveWorkbenchWindowMenuManager(true);
        }

        public void windowClosed(IWorkbenchWindow window) {
            Workbench.this.updateActiveWorkbenchWindowMenuManager(true);
        }

        public void windowDeactivated(IWorkbenchWindow window) {
            Workbench.this.updateActiveWorkbenchWindowMenuManager(true);
        }

        public void windowOpened(IWorkbenchWindow window) {
            Workbench.this.updateActiveWorkbenchWindowMenuManager(true);
        }
    };
    private final IBindingManagerListener bindingManagerListener = new IBindingManagerListener(){

        public void bindingManagerChanged(BindingManagerEvent bindingManagerEvent) {
            if (bindingManagerEvent.isActiveBindingsChanged()) {
                Workbench.this.updateActiveWorkbenchWindowMenuManager(true);
            }
        }
    };
    private ActionSetSourceProvider actionSetSourceProvider;
    private WorkbenchWindow activeWorkbenchWindow = null;
    private ActivityPersistanceHelper activityHelper;
    private WorkbenchIntroManager introManager;
    private IntroDescriptor introDescriptor;
    private IExtensionTracker tracker;
    private IRegistryChangeListener startupRegistryListener = new IRegistryChangeListener(){

        public void registryChanged(IRegistryChangeEvent event) {
            IExtensionDelta[] deltas = event.getExtensionDeltas("org.eclipse.ui", "startup");
            if (deltas.length == 0) {
                return;
            }
            String disabledPlugins = PrefUtil.getInternalPreferenceStore().getString("PLUGINS_NOT_ACTIVATED_ON_STARTUP");
            int i = 0;
            while (i < deltas.length) {
                IExtension extension = deltas[i].getExtension();
                if (deltas[i].getKind() != 2 && disabledPlugins.indexOf(extension.getNamespace()) == -1) {
                    SafeRunner.run((ISafeRunnable)new EarlyStartupRunnable(extension));
                }
                ++i;
            }
        }
    };
    private String factoryID;
    private MenuSourceProvider menuSourceProvider;
    private IContextActivation workbenchContext;
    private ApplicationMenuManager applicationMenuMgr;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;
    static /* synthetic */ Class class$13;
    static /* synthetic */ Class class$14;
    static /* synthetic */ Class class$15;
    static /* synthetic */ Class class$16;

    static {
        createSplash = true;
    }

    private Workbench(Display display, WorkbenchAdvisor advisor) {
        StartupThreading.setWorkbench(this);
        if (instance != null && instance.isRunning()) {
            throw new IllegalStateException(WorkbenchMessages.Workbench_CreatingWorkbenchTwice);
        }
        Assert.isNotNull((Object)display);
        Assert.isNotNull((Object)advisor);
        this.advisor = advisor;
        this.display = display;
        instance = this;
        this.extensionEventHandler = new ExtensionEventHandler(this);
        Platform.getExtensionRegistry().addRegistryChangeListener((IRegistryChangeListener)this.extensionEventHandler);
        ServiceLocatorCreator slc = new ServiceLocatorCreator();
        this.serviceLocator = (ServiceLocator)slc.createServiceLocator(null, null, new IDisposable(){

            public void dispose() {
                Display display = Workbench.this.getDisplay();
                if (display != null && !display.isDisposed()) {
                    MessageDialog.openInformation(null, (String)WorkbenchMessages.Workbench_NeedsClose_Title, (String)WorkbenchMessages.Workbench_NeedsClose_Message);
                    Workbench.this.close(1, true);
                }
            }
        });
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.ui.internal.services.IServiceLocatorCreator");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz, slc);
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.ui.internal.services.IWorkbenchLocationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz2, new WorkbenchLocationService("org.eclipse.ui.services.IWorkbench", this, null, null, null, null, 0));
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.ui.IWorkbench");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz3, this);
    }

    public static final Workbench getInstance() {
        return instance;
    }

    public static final int createAndRunWorkbench(final Display display, final WorkbenchAdvisor advisor) {
        final int[] returnCode = new int[1];
        Realm.runWithDefault((Realm)SWTObservables.getRealm((Display)display), (Runnable)new Runnable(){

            public void run() {
                ULocale.setDefault((ULocale)new ULocale(String.valueOf(Platform.getNL()) + Platform.getNLExtensions()));
                Workbench workbench = new Workbench(display, advisor, null);
                returnCode[0] = workbench.runUI();
            }
        });
        return returnCode[0];
    }

    public static Display createDisplay() {
        Display newDisplay;
        String appVersion;
        String applicationName = WorkbenchPlugin.getDefault().getAppName();
        if (applicationName != null) {
            Display.setAppName((String)applicationName);
        }
        if ((appVersion = WorkbenchPlugin.getDefault().getAppVersion()) != null) {
            Display.setAppVersion((String)appVersion);
        }
        if ((newDisplay = Display.getCurrent()) == null) {
            if (Policy.DEBUG_SWT_GRAPHICS || Policy.DEBUG_SWT_DEBUG) {
                DeviceData data = new DeviceData();
                if (Policy.DEBUG_SWT_GRAPHICS) {
                    data.tracking = true;
                }
                if (Policy.DEBUG_SWT_DEBUG) {
                    data.debug = true;
                }
                newDisplay = new Display(data);
            } else {
                newDisplay = new Display();
            }
        }
        newDisplay.setWarnings(false);
        Thread.currentThread().setPriority(Math.min(10, 6));
        Workbench.initializeImages();
        return newDisplay;
    }

    private void createSplashWrapper() {
        final Display display = this.getDisplay();
        String splashLoc = System.getProperty("org.eclipse.equinox.launcher.splash.location");
        final Image background = this.loadImage(splashLoc);
        SafeRunnable run = new SafeRunnable(){

            public void run() throws Exception {
                if (!WorkbenchPlugin.isSplashHandleSpecified()) {
                    createSplash = false;
                    return;
                }
                Workbench.getSplash();
                if (splash == null) {
                    createSplash = false;
                    return;
                }
                Shell splashShell = splash.getSplash();
                if (splashShell == null) {
                    splashShell = WorkbenchPlugin.getSplashShell(display);
                    if (splashShell == null) {
                        return;
                    }
                    if (background != null) {
                        splashShell.setBackgroundImage(background);
                    }
                }
                Hashtable<String, Integer> properties = new Hashtable<String, Integer>();
                ((Dictionary)properties).put("service.ranking", new Integer(Integer.MAX_VALUE));
                BundleContext context = WorkbenchPlugin.getDefault().getBundleContext();
                ServiceRegistration[] registration = new ServiceRegistration[1];
                StartupMonitor startupMonitor = new StartupMonitor(this, background, registration, display){
                    final /* synthetic */ 8 this$1;
                    private final /* synthetic */ Image val$background;
                    private final /* synthetic */ ServiceRegistration[] val$registration;
                    private final /* synthetic */ Display val$display;
                    {
                        this.this$1 = var1_1;
                        this.val$background = image;
                        this.val$registration = serviceRegistrationArray;
                        this.val$display = display;
                    }

                    public void applicationRunning() {
                        Workbench.access$7().dispose();
                        if (this.val$background != null) {
                            this.val$background.dispose();
                        }
                        this.val$registration[0].unregister();
                        WorkbenchPlugin.unsetSplashShell(this.val$display);
                    }

                    public void update() {
                    }
                };
                Class<?> clazz = class$3;
                if (clazz == null) {
                    try {
                        clazz = class$3 = Class.forName("org.eclipse.osgi.service.runnable.StartupMonitor");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                registration[0] = context.registerService(clazz.getName(), (Object)startupMonitor, properties);
                splash.init(splashShell);
            }

            public void handleException(Throwable e) {
                StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, "Could not instantiate splash", e));
                createSplash = false;
                splash = null;
                if (background != null) {
                    background.dispose();
                }
            }
        };
        SafeRunner.run((ISafeRunnable)run);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private Image loadImage(String splashLoc) {
        Image background = null;
        if (splashLoc == null) return background;
        InputStream input = null;
        try {
            input = new BufferedInputStream(new FileInputStream(splashLoc));
            background = new Image((Device)this.display, input);
        }
        catch (SWTException e) {
            StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, e));
            if (input == null) return background;
            try {
                input.close();
                return background;
            }
            catch (IOException iOException) {}
            return background;
        }
        catch (IOException e) {
            try {
                StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, e));
                if (input == null) return background;
            }
            catch (Throwable throwable) {
                if (input == null) throw throwable;
                try {
                    input.close();
                    throw throwable;
                }
                catch (IOException iOException) {}
                throw throwable;
            }
            try {
                input.close();
                return background;
            }
            catch (IOException iOException) {}
            return background;
        }
        if (input == null) return background;
        try {
            input.close();
            return background;
        }
        catch (IOException iOException) {}
        return background;
    }

    private static AbstractSplashHandler getSplash() {
        if (!createSplash) {
            return null;
        }
        if (splash == null) {
            IProduct product = Platform.getProduct();
            if (product != null) {
                splash = SplashHandlerFactory.findSplashHandlerFor(product);
            }
            if (splash == null) {
                splash = new EclipseSplashHandler();
            }
        }
        return splash;
    }

    public static WorkbenchTestable getWorkbenchTestable() {
        if (testableObject == null) {
            testableObject = new WorkbenchTestable();
        }
        return testableObject;
    }

    public void addWorkbenchListener(IWorkbenchListener listener) {
        this.workbenchListeners.add((Object)listener);
    }

    public void removeWorkbenchListener(IWorkbenchListener listener) {
        this.workbenchListeners.remove((Object)listener);
    }

    boolean firePreShutdown(final boolean forced) {
        Object[] list = this.workbenchListeners.getListeners();
        int i = 0;
        while (i < list.length) {
            final IWorkbenchListener l = (IWorkbenchListener)list[i];
            final boolean[] result = new boolean[1];
            SafeRunnable.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    result[0] = l.preShutdown(Workbench.this, forced);
                }
            });
            if (!result[0]) {
                return false;
            }
            ++i;
        }
        return true;
    }

    void firePostShutdown() {
        Object[] list = this.workbenchListeners.getListeners();
        int i = 0;
        while (i < list.length) {
            final IWorkbenchListener l = (IWorkbenchListener)list[i];
            SafeRunnable.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.postShutdown(Workbench.this);
                }
            });
            ++i;
        }
    }

    public void addWindowListener(IWindowListener l) {
        this.addListenerObject(l);
    }

    public void removeWindowListener(IWindowListener l) {
        this.removeListenerObject(l);
    }

    protected void fireWindowOpened(final IWorkbenchWindow window) {
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            final IWindowListener l = (IWindowListener)list[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.windowOpened(window);
                }
            });
            ++i;
        }
    }

    protected void fireWindowClosed(final IWorkbenchWindow window) {
        if (this.activatedWindow == window) {
            this.activatedWindow = null;
        }
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            final IWindowListener l = (IWindowListener)list[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.windowClosed(window);
                }
            });
            ++i;
        }
    }

    protected void fireWindowActivated(final IWorkbenchWindow window) {
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            final IWindowListener l = (IWindowListener)list[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.windowActivated(window);
                }
            });
            ++i;
        }
    }

    protected void fireWindowDeactivated(final IWorkbenchWindow window) {
        Object[] list = this.getListeners();
        int i = 0;
        while (i < list.length) {
            final IWindowListener l = (IWindowListener)list[i];
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    l.windowDeactivated(window);
                }
            });
            ++i;
        }
    }

    private boolean busyClose(final boolean force) {
        boolean closeEditors;
        this.isClosing = this.advisor.preShutdown();
        if (!force && !this.isClosing) {
            return false;
        }
        this.isClosing = this.firePreShutdown(force);
        if (!force && !this.isClosing) {
            return false;
        }
        this.isClosing = this.saveAllEditors(!force);
        if (!force && !this.isClosing) {
            return false;
        }
        boolean bl = closeEditors = !force && PrefUtil.getAPIPreferenceStore().getBoolean("CLOSE_EDITORS_ON_EXIT");
        if (closeEditors) {
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    IWorkbenchWindow[] windows = Workbench.this.getWorkbenchWindows();
                    int i = 0;
                    while (i < windows.length) {
                        IWorkbenchPage[] pages = windows[i].getPages();
                        int j = 0;
                        while (j < pages.length) {
                            Workbench.this.isClosing = Workbench.this.isClosing && pages[j].closeAllEditors(false);
                            ++j;
                        }
                        ++i;
                    }
                }
            });
            if (!force && !this.isClosing) {
                return false;
            }
        }
        if (this.getWorkbenchConfigurer().getSaveAndRestore()) {
            SafeRunner.run((ISafeRunnable)new SafeRunnable(){

                public void run() {
                    XMLMemento mem = Workbench.this.recordWorkbenchState();
                    Workbench.this.saveMementoToFile(mem);
                }

                public void handleException(Throwable e) {
                    String message = e.getMessage() == null ? WorkbenchMessages.ErrorClosingNoArg : NLS.bind((String)WorkbenchMessages.ErrorClosingOneArg, (Object)e.getMessage());
                    if (!MessageDialog.openQuestion(null, (String)WorkbenchMessages.Error, (String)message)) {
                        Workbench.this.isClosing = false;
                    }
                }
            });
        }
        if (!force && !this.isClosing) {
            return false;
        }
        SafeRunner.run((ISafeRunnable)new SafeRunnable(WorkbenchMessages.ErrorClosing){

            public void run() {
                if (Workbench.this.isClosing || force) {
                    Workbench.this.isClosing = Workbench.this.windowManager.close();
                }
            }
        });
        if (!force && !this.isClosing) {
            return false;
        }
        this.shutdown();
        this.runEventLoop = false;
        return true;
    }

    public boolean saveAllEditors(boolean confirm) {
        final boolean finalConfirm = confirm;
        final boolean[] result = new boolean[]{true};
        SafeRunner.run((ISafeRunnable)new SafeRunnable(WorkbenchMessages.ErrorClosing){

            public void run() {
                IWorkbenchWindow runnableContext;
                IWorkbenchWindow shellProvider;
                ArrayList<ISaveablePart> dirtyParts = new ArrayList<ISaveablePart>();
                ArrayList<IEditorInput> dirtyEditorsInput = new ArrayList<IEditorInput>();
                IWorkbenchWindow[] windows = Workbench.this.getWorkbenchWindows();
                int i = 0;
                while (i < windows.length) {
                    IWorkbenchPage[] pages = windows[i].getPages();
                    int j = 0;
                    while (j < pages.length) {
                        WorkbenchPage page = (WorkbenchPage)pages[j];
                        ISaveablePart[] parts = page.getDirtyParts();
                        int k = 0;
                        while (k < parts.length) {
                            ISaveablePart part = parts[k];
                            if (part.isSaveOnCloseNeeded()) {
                                if (part instanceof IEditorPart) {
                                    IEditorPart editor = (IEditorPart)part;
                                    if (!dirtyEditorsInput.contains(editor.getEditorInput())) {
                                        dirtyParts.add(editor);
                                        dirtyEditorsInput.add(editor.getEditorInput());
                                    }
                                } else {
                                    dirtyParts.add(part);
                                }
                            }
                            ++k;
                        }
                        ++j;
                    }
                    ++i;
                }
                IWorkbenchWindow w = Workbench.this.getActiveWorkbenchWindow();
                if (w == null && windows.length > 0) {
                    w = windows[0];
                }
                if (w != null) {
                    shellProvider = w;
                    runnableContext = w;
                } else {
                    shellProvider = new IShellProvider(this){
                        final /* synthetic */ 19 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public Shell getShell() {
                            return null;
                        }
                    };
                    runnableContext = new ProgressMonitorDialog(null);
                }
                result[0] = EditorManager.saveAll(dirtyParts, finalConfirm, false, true, runnableContext, shellProvider);
            }
        });
        return result[0];
    }

    private IWorkbenchWindow busyOpenWorkbenchWindow(final String perspID, final IAdaptable input) throws WorkbenchException {
        final WorkbenchWindow[] newWindowArray = new WorkbenchWindow[1];
        StartupThreading.runWithWorkbenchExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                newWindowArray[0] = Workbench.this.newWorkbenchWindow();
            }
        });
        final WorkbenchWindow newWindow = newWindowArray[0];
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                newWindow.create();
            }
        });
        this.windowManager.add((Window)newWindow);
        final WorkbenchException[] exceptions = new WorkbenchException[1];
        if (perspID != null) {
            StartupThreading.runWithWorkbenchExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() {
                    try {
                        newWindow.busyOpenPage(perspID, input);
                    }
                    catch (WorkbenchException e) {
                        Workbench.this.windowManager.remove((Window)newWindow);
                        exceptions[0] = e;
                    }
                }
            });
        }
        if (exceptions[0] != null) {
            throw exceptions[0];
        }
        StartupThreading.runWithWorkbenchExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                newWindow.open();
            }
        });
        return newWindow;
    }

    public boolean close() {
        return this.close(0, false);
    }

    boolean close(int returnCode, final boolean force) {
        this.returnCode = returnCode;
        final boolean[] ret = new boolean[1];
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                ret[0] = Workbench.this.busyClose(force);
            }
        });
        return ret[0];
    }

    public IWorkbenchWindow getActiveWorkbenchWindow() {
        if (Display.getCurrent() == null) {
            return null;
        }
        Shell shell = this.display.getActiveShell();
        while (shell != null) {
            Object data = shell.getData();
            if (data instanceof IWorkbenchWindow) {
                return (IWorkbenchWindow)data;
            }
            shell = shell.getParent();
        }
        WorkbenchWindow win = this.getActivatedWindow();
        if (win != null) {
            return win;
        }
        Shell[] shells = this.display.getShells();
        int i = 0;
        while (i < shells.length) {
            Object data = shells[i].getData();
            if (data instanceof IWorkbenchWindow) {
                return (IWorkbenchWindow)data;
            }
            ++i;
        }
        return null;
    }

    public EditorHistory getEditorHistory() {
        if (this.editorHistory == null) {
            this.editorHistory = new EditorHistory();
        }
        return this.editorHistory;
    }

    public IEditorRegistry getEditorRegistry() {
        return WorkbenchPlugin.getDefault().getEditorRegistry();
    }

    private int getNewWindowNumber() {
        Window[] windows = this.windowManager.getWindows();
        int count = windows.length;
        boolean[] checkArray = new boolean[count];
        int nX = 0;
        while (nX < count) {
            WorkbenchWindow ww;
            int index;
            if (windows[nX] instanceof WorkbenchWindow && (index = (ww = (WorkbenchWindow)windows[nX]).getNumber() - 1) >= 0 && index < count) {
                checkArray[index] = true;
            }
            ++nX;
        }
        int index = 0;
        while (index < count) {
            if (!checkArray[index]) {
                return index + 1;
            }
            ++index;
        }
        return count + 1;
    }

    public IWorkbenchOperationSupport getOperationSupport() {
        return WorkbenchPlugin.getDefault().getOperationSupport();
    }

    public IPerspectiveRegistry getPerspectiveRegistry() {
        return WorkbenchPlugin.getDefault().getPerspectiveRegistry();
    }

    public PreferenceManager getPreferenceManager() {
        return WorkbenchPlugin.getDefault().getPreferenceManager();
    }

    public IPreferenceStore getPreferenceStore() {
        return WorkbenchPlugin.getDefault().getPreferenceStore();
    }

    public ISharedImages getSharedImages() {
        return WorkbenchPlugin.getDefault().getSharedImages();
    }

    WindowManager getWindowManager() {
        return this.windowManager;
    }

    private File getWorkbenchStateFile() {
        IPath path = WorkbenchPlugin.getDefault().getDataLocation();
        if (path == null) {
            return null;
        }
        path = path.append(DEFAULT_WORKBENCH_STATE_FILENAME);
        return path.toFile();
    }

    public int getWorkbenchWindowCount() {
        if (this.windowManager == null) {
            return 0;
        }
        return this.windowManager.getWindowCount();
    }

    public IWorkbenchWindow[] getWorkbenchWindows() {
        if (this.windowManager == null) {
            return new IWorkbenchWindow[0];
        }
        Window[] windows = this.windowManager.getWindows();
        IWorkbenchWindow[] dwindows = new IWorkbenchWindow[windows.length];
        System.arraycopy(windows, 0, dwindows, 0, windows.length);
        return dwindows;
    }

    public IWorkingSetManager getWorkingSetManager() {
        return WorkbenchPlugin.getDefault().getWorkingSetManager();
    }

    public ILocalWorkingSetManager createLocalWorkingSetManager() {
        return new LocalWorkingSetManager(WorkbenchPlugin.getDefault().getBundleContext());
    }

    private boolean init() {
        IProduct product;
        if (WorkbenchPlugin.getDefault().isDebugging()) {
            WorkbenchPlugin.DEBUG = true;
            ModalContext.setDebugMode((boolean)true);
        }
        JFaceUtil.initializeJFacePreferences();
        this.windowManager = new WindowManager();
        IIntroRegistry introRegistry = WorkbenchPlugin.getDefault().getIntroRegistry();
        if (introRegistry.getIntroCount() > 0 && (product = Platform.getProduct()) != null) {
            this.introDescriptor = (IntroDescriptor)introRegistry.getIntroForProduct(product.getId());
        }
        final EvaluationService evaluationService = new EvaluationService();
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                ServiceLocator serviceLocator = Workbench.this.serviceLocator;
                Class<?> clazz = class$4;
                if (clazz == null) {
                    try {
                        clazz = class$4 = Class.forName("org.eclipse.ui.services.IEvaluationService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                serviceLocator.registerService(clazz, evaluationService);
            }
        });
        this.workbenchActivitySupport = new WorkbenchActivitySupport();
        this.activityHelper = ActivityPersistanceHelper.getInstance();
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                WorkbenchImages.getImageRegistry();
            }
        });
        this.initializeDefaultServices();
        this.initializeFonts();
        this.initializeColors();
        this.initializeApplicationColors();
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Workbench.this.advisor.internalBasicInitialize(Workbench.this.getWorkbenchConfigurer());
            }
        });
        boolean useColorIcons = PrefUtil.getInternalPreferenceStore().getBoolean("COLOR_ICONS");
        ActionContributionItem.setUseColorIconsInToolbars((boolean)useColorIcons);
        this.initializeSingleClickOption();
        this.initializeWorkbenchImages();
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                ((GrabFocus)Tweaklets.get(GrabFocus.KEY)).init(Workbench.this.getDisplay());
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Workbench.this.startSourceProviders();
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Workbench.this.activateWorkbenchContext();
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Workbench.this.createApplicationMenu();
            }
        });
        try {
            UIStats.start(4, "Workbench");
            final boolean[] bail = new boolean[1];
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    Workbench.this.advisor.preStartup();
                    if (Workbench.this.isClosing() || !Workbench.this.advisor.openWindows()) {
                        bail[0] = true;
                    }
                }
            });
            if (bail[0]) {
                return false;
            }
        }
        finally {
            UIStats.end(4, this, "Workbench");
        }
        this.forceOpenPerspective();
        return true;
    }

    private void initializeWorkbenchImages() {
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                WorkbenchImages.getDescriptors();
            }
        });
    }

    private void initializeCommandResolver() {
        ExternalActionManager.getInstance().setCallback((ExternalActionManager.ICallback)new ExternalActionManager.CommandCallback(this.bindingManager, this.commandManager, new ExternalActionManager.IActiveChecker(){

            public final boolean isActive(String commandId) {
                return Workbench.this.workbenchActivitySupport.getActivityManager().getIdentifier(commandId).isEnabled();
            }
        }, new ExternalActionManager.IExecuteApplicable(){

            public boolean isApplicable(IAction action) {
                return !(action instanceof CommandAction);
            }
        }));
    }

    private void initializeApplicationColors() {
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                ColorDefinition[] colorDefinitions = WorkbenchPlugin.getDefault().getThemeRegistry().getColors();
                ThemeElementHelper.populateRegistry(Workbench.this.getThemeManager().getTheme("org.eclipse.ui.defaultTheme"), colorDefinitions, PrefUtil.getInternalPreferenceStore());
            }
        });
    }

    private void initializeSingleClickOption() {
        int singleClickMethod;
        IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
        boolean openOnSingleClick = store.getBoolean("OPEN_ON_SINGLE_CLICK");
        boolean selectOnHover = store.getBoolean("SELECT_ON_HOVER");
        boolean openAfterDelay = store.getBoolean("OPEN_AFTER_DELAY");
        int n = singleClickMethod = openOnSingleClick ? 1 : 0;
        if (openOnSingleClick) {
            if (selectOnHover) {
                singleClickMethod |= 2;
            }
            if (openAfterDelay) {
                singleClickMethod |= 4;
            }
        }
        OpenStrategy.setOpenMethod((int)singleClickMethod);
    }

    private void initializeFonts() {
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                FontDefinition[] fontDefinitions = WorkbenchPlugin.getDefault().getThemeRegistry().getFonts();
                ThemeElementHelper.populateRegistry(Workbench.this.getThemeManager().getCurrentTheme(), fontDefinitions, PrefUtil.getInternalPreferenceStore());
            }
        });
    }

    private static void initializeImages() {
        ImageDescriptor[] windowImages = WorkbenchPlugin.getDefault().getWindowImages();
        if (windowImages == null) {
            return;
        }
        Image[] images = new Image[windowImages.length];
        int i = 0;
        while (i < windowImages.length) {
            images[i] = windowImages[i].createImage();
            ++i;
        }
        Window.setDefaultImages((Image[])images);
    }

    private void uninitializeImages() {
        WorkbenchImages.dispose();
        Image[] images = Window.getDefaultImages();
        Window.setDefaultImage(null);
        int i = 0;
        while (i < images.length) {
            images[i].dispose();
            ++i;
        }
    }

    private void initializeColors() {
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                WorkbenchColors.startup();
            }
        });
    }

    public boolean isClosing() {
        return this.isClosing;
    }

    private final void initializeDefaultServices() {
        ContributionService contributionService = new ContributionService(this.getAdvisor());
        Class<?> clazz = class$5;
        if (clazz == null) {
            try {
                clazz = class$5 = Class.forName("org.eclipse.ui.model.IContributionService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz, contributionService);
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                ServiceLocator serviceLocator = Workbench.this.serviceLocator;
                Class<?> clazz = class$6;
                if (clazz == null) {
                    try {
                        clazz = class$6 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                serviceLocator.registerService(clazz, new SaveablesList());
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Workbench.this.getProgressService();
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Command.DEBUG_COMMAND_EXECUTION = Policy.DEBUG_COMMANDS;
                Workbench.this.commandManager = new CommandManager();
            }
        });
        final CommandService[] commandService = new CommandService[1];
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                commandService[0] = new CommandService(Workbench.this.commandManager);
                commandService[0].readRegistry();
                ServiceLocator serviceLocator = Workbench.this.serviceLocator;
                Class<?> clazz = class$7;
                if (clazz == null) {
                    try {
                        clazz = class$7 = Class.forName("org.eclipse.ui.commands.ICommandService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                serviceLocator.registerService(clazz, commandService[0]);
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                ContextManager.DEBUG = Policy.DEBUG_CONTEXTS;
                Workbench.this.contextManager = new ContextManager();
            }
        });
        final ContextService contextService = new ContextService(this.contextManager);
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                contextService.readRegistry();
            }
        });
        Class<?> clazz2 = class$8;
        if (clazz2 == null) {
            try {
                clazz2 = class$8 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz2, contextService);
        final IBindingService[] bindingService = new BindingService[1];
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                BindingManager.DEBUG = Policy.DEBUG_KEY_BINDINGS;
                Workbench.this.bindingManager = new BindingManager(Workbench.this.contextManager, Workbench.this.commandManager);
                bindingService[0] = new BindingService(Workbench.this.bindingManager, commandService[0], Workbench.this);
            }
        });
        bindingService[0].readRegistryAndPreferences(commandService[0]);
        Class<?> clazz3 = class$9;
        if (clazz3 == null) {
            try {
                clazz3 = class$9 = Class.forName("org.eclipse.ui.keys.IBindingService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz3, bindingService[0]);
        ((BindingService)bindingService[0]).getKeyboard().getKeyDownFilter().setEnabled(true);
        CommandImageManager commandImageManager = new CommandImageManager();
        CommandImageService commandImageService = new CommandImageService(commandImageManager, commandService[0]);
        commandImageService.readRegistry();
        Class<?> clazz4 = class$10;
        if (clazz4 == null) {
            try {
                clazz4 = class$10 = Class.forName("org.eclipse.ui.commands.ICommandImageService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz4, commandImageService);
        final WorkbenchMenuService menuService = new WorkbenchMenuService(this.serviceLocator);
        Class<?> clazz5 = class$11;
        if (clazz5 == null) {
            try {
                clazz5 = class$11 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz5, menuService);
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                menuService.readRegistry();
            }
        });
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                Workbench.this.initializeSourcePriorities();
            }
        });
        final IHandlerService[] handlerService = new IHandlerService[1];
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() {
                ServiceLocator serviceLocator = Workbench.this.serviceLocator;
                Class<?> clazz = class$12;
                if (clazz == null) {
                    try {
                        clazz = class$12 = Class.forName("org.eclipse.ui.handlers.IHandlerService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                handlerService[0] = (IHandlerService)serviceLocator.getService(clazz);
            }
        });
        this.workbenchContextSupport = new WorkbenchContextSupport(this, this.contextManager);
        this.workbenchCommandSupport = new WorkbenchCommandSupport(this.bindingManager, this.commandManager, this.contextManager, handlerService[0]);
        this.initializeCommandResolver();
        this.addWindowListener(this.windowListener);
        this.bindingManager.addBindingManagerListener(this.bindingManagerListener);
        Class<?> clazz6 = class$13;
        if (clazz6 == null) {
            try {
                clazz6 = class$13 = Class.forName("org.eclipse.ui.internal.ISelectionConversionService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz6, new SelectionConversionService());
    }

    public boolean isStarting() {
        return this.isStarting && this.isRunning();
    }

    private WorkbenchWindow newWorkbenchWindow() {
        WorkbenchWindow wbw = ((WorkbenchImplementation)Tweaklets.get(WorkbenchImplementation.KEY)).createWorkbenchWindow(this.getNewWindowNumber());
        return wbw;
    }

    private void forceOpenPerspective() {
        if (this.getWorkbenchWindowCount() == 0) {
            return;
        }
        String perspId = null;
        String[] commandLineArgs = Platform.getCommandLineArgs();
        int i = 0;
        while (i < commandLineArgs.length - 1) {
            if (commandLineArgs[i].equalsIgnoreCase("-perspective")) {
                perspId = commandLineArgs[i + 1];
                break;
            }
            ++i;
        }
        if (perspId == null) {
            return;
        }
        IPerspectiveDescriptor desc = this.getPerspectiveRegistry().findPerspectiveWithId(perspId);
        if (desc == null) {
            return;
        }
        IWorkbenchWindow win = this.getActiveWorkbenchWindow();
        if (win == null) {
            win = this.getWorkbenchWindows()[0];
        }
        final String threadPerspId = perspId;
        final IWorkbenchWindow threadWin = win;
        StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

            public void runWithException() throws Throwable {
                try {
                    Workbench.this.showPerspective(threadPerspId, threadWin);
                }
                catch (WorkbenchException e) {
                    String msg = "Workbench exception showing specified command line perspective on startup.";
                    WorkbenchPlugin.log(msg, (IStatus)new Status(4, "org.eclipse.ui", 0, msg, (Throwable)((Object)e)));
                }
            }
        });
    }

    void openFirstTimeWindow() {
        boolean showProgress = PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_PROGRESS_ON_STARTUP");
        if (!showProgress) {
            this.doOpenFirstTimeWindow();
        } else {
            int expectedProgressCount = Math.max(1, WorkbenchPlugin.getDefault().getBundleCount() / 10);
            this.runStartupWithProgress(expectedProgressCount, new Runnable(){

                public void run() {
                    Workbench.this.doOpenFirstTimeWindow();
                }
            });
        }
    }

    private void runStartupWithProgress(int expectedProgressCount, Runnable runnable) {
        this.progressCount = 0;
        AbstractSplashHandler handler = Workbench.getSplash();
        IProgressMonitor progressMonitor = null;
        if (handler != null) {
            progressMonitor = handler.getBundleProgressMonitor();
        }
        if (progressMonitor == null) {
            runnable.run();
        } else {
            Shell shell = null;
            if (handler != null) {
                shell = handler.getSplash();
            }
            progressMonitor = new TaskBarDelegatingProgressMontior(progressMonitor, shell);
            progressMonitor.beginTask("", expectedProgressCount);
            StartupProgressBundleListener bundleListener = new StartupProgressBundleListener(progressMonitor, (int)((double)expectedProgressCount * 0.95));
            WorkbenchPlugin.getDefault().addBundleListener((BundleListener)bundleListener);
            try {
                runnable.run();
                progressMonitor.subTask(WorkbenchMessages.Startup_Done);
                int remainingWork = expectedProgressCount - Math.min(this.progressCount, (int)((double)expectedProgressCount * 0.95));
                progressMonitor.worked(remainingWork);
                progressMonitor.done();
            }
            finally {
                WorkbenchPlugin.getDefault().removeBundleListener((BundleListener)bundleListener);
            }
        }
    }

    private void doOpenFirstTimeWindow() {
        try {
            final IAdaptable[] input = new IAdaptable[1];
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    input[0] = Workbench.this.getDefaultPageInput();
                }
            });
            this.busyOpenWorkbenchWindow(this.getPerspectiveRegistry().getDefaultPerspective(), input[0]);
        }
        catch (WorkbenchException e) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    ErrorDialog.openError(null, (String)WorkbenchMessages.Problems_Opening_Page, (String)e.getMessage(), (IStatus)e.getStatus());
                }
            });
        }
    }

    IStatus restoreState() {
        if (!this.getWorkbenchConfigurer().getSaveAndRestore()) {
            String msg = WorkbenchMessages.Workbench_restoreDisabled;
            return new Status(2, WorkbenchPlugin.PI_WORKBENCH, 1, msg, null);
        }
        final File stateFile = this.getWorkbenchStateFile();
        if (stateFile == null || !stateFile.exists()) {
            String msg = WorkbenchMessages.Workbench_noStateToRestore;
            return new Status(2, WorkbenchPlugin.PI_WORKBENCH, 1, msg, null);
        }
        final IStatus[] result = new IStatus[]{Status.OK_STATUS};
        SafeRunner.run((ISafeRunnable)new SafeRunnable(WorkbenchMessages.ErrorReadingState){

            public void run() throws Exception {
                FileInputStream input = new FileInputStream(stateFile);
                BufferedReader reader = new BufferedReader(new InputStreamReader((InputStream)input, "utf-8"));
                XMLMemento memento = XMLMemento.createReadRoot(reader);
                String version = memento.getString("version");
                boolean valid = false;
                int i = 0;
                while (i < VERSION_STRING.length) {
                    if (VERSION_STRING[i].equals(version)) {
                        valid = true;
                        break;
                    }
                    ++i;
                }
                if (!valid) {
                    reader.close();
                    String msg = WorkbenchMessages.Invalid_workbench_state_ve;
                    MessageDialog.openError(null, (String)WorkbenchMessages.Restoring_Problems, (String)msg);
                    stateFile.delete();
                    result[0] = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 1, msg, null);
                    return;
                }
                if (VERSION_STRING[0].equals(version)) {
                    boolean ignoreSavedState;
                    reader.close();
                    String msg = WorkbenchMessages.Workbench_incompatibleSavedStateVersion;
                    boolean bl = ignoreSavedState = new MessageDialog(null, WorkbenchMessages.Workbench_incompatibleUIState, null, msg, 4, new String[]{IDialogConstants.OK_LABEL, IDialogConstants.CANCEL_LABEL}, 0).open() == 0;
                    if (ignoreSavedState) {
                        stateFile.delete();
                        result[0] = new Status(2, WorkbenchPlugin.PI_WORKBENCH, 1, msg, null);
                    } else {
                        result[0] = new Status(2, WorkbenchPlugin.PI_WORKBENCH, 2, msg, null);
                    }
                    return;
                }
                IStatus restoreResult = Workbench.this.restoreState(memento);
                reader.close();
                if (restoreResult.getSeverity() == 4) {
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(this, restoreResult){
                        final /* synthetic */ 54 this$1;
                        private final /* synthetic */ IStatus val$restoreResult;
                        {
                            this.this$1 = var1_1;
                            this.val$restoreResult = iStatus;
                        }

                        public void runWithException() throws Throwable {
                            StatusManager.getManager().handle(this.val$restoreResult, 1);
                        }
                    });
                }
            }

            public void handleException(Throwable e) {
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(this, e, result, stateFile){
                    final /* synthetic */ 54 this$1;
                    private final /* synthetic */ Throwable val$e;
                    private final /* synthetic */ IStatus[] val$result;
                    private final /* synthetic */ File val$stateFile;
                    {
                        this.this$1 = var1_1;
                        this.val$e = throwable;
                        this.val$result = iStatusArray;
                        this.val$stateFile = file;
                    }

                    public void runWithException() {
                        54.access$0(this.this$1, this.val$e);
                        String msg = this.val$e.getMessage() == null ? "" : this.val$e.getMessage();
                        this.val$result[0] = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 1, msg, this.val$e);
                        this.val$stateFile.delete();
                    }
                });
            }

            private void handle(Throwable e) {
                super.handleException(e);
            }

            static /* synthetic */ void access$0(54 var0, Throwable throwable) {
                var0.handle(throwable);
            }
        });
        if (this.shouldReturnNoWindowError(result[0])) {
            String msg = WorkbenchMessages.Workbench_noWindowsRestored;
            result[0] = new Status(4, WorkbenchPlugin.PI_WORKBENCH, 1, msg, null);
        }
        return result[0];
    }

    private boolean shouldReturnNoWindowError(IStatus result) {
        final boolean[] shouldReturn = new boolean[1];
        boolean bl = shouldReturn[0] = result.isOK() && this.windowManager.getWindows().length == 0;
        if (shouldReturn[0]) {
            this.display.syncExec(new Runnable(){

                public void run() {
                    shouldReturn[0] = !Workbench.this.hasAppMenu();
                }
            });
        }
        return shouldReturn[0];
    }

    public IWorkbenchWindow openWorkbenchWindow(IAdaptable input) throws WorkbenchException {
        return this.openWorkbenchWindow(this.getPerspectiveRegistry().getDefaultPerspective(), input);
    }

    public IWorkbenchWindow openWorkbenchWindow(final String perspID, final IAdaptable input) throws WorkbenchException {
        final Object[] result = new Object[1];
        BusyIndicator.showWhile(null, (Runnable)new Runnable(){

            public void run() {
                try {
                    result[0] = Workbench.this.busyOpenWorkbenchWindow(perspID, input);
                }
                catch (WorkbenchException e) {
                    result[0] = e;
                }
            }
        });
        if (result[0] instanceof IWorkbenchWindow) {
            return (IWorkbenchWindow)result[0];
        }
        if (result[0] instanceof WorkbenchException) {
            throw (WorkbenchException)((Object)result[0]);
        }
        throw new WorkbenchException(WorkbenchMessages.Abnormal_Workbench_Conditi);
    }

    IWorkbenchWindow restoreWorkbenchWindow(IMemento memento) throws WorkbenchException {
        WorkbenchWindow newWindow = this.newWorkbenchWindow();
        newWindow.create();
        this.windowManager.add((Window)newWindow);
        boolean opened = false;
        try {
            newWindow.restoreState(memento, null);
            newWindow.fireWindowRestored();
            newWindow.open();
            opened = true;
        }
        finally {
            if (!opened) {
                newWindow.close();
            }
        }
        return newWindow;
    }

    private XMLMemento recordWorkbenchState() {
        XMLMemento memento = XMLMemento.createWriteRoot("workbench");
        final IStatus status = this.saveState(memento);
        if (status.getSeverity() != 0) {
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() throws Throwable {
                    ErrorDialog.openError(null, (String)WorkbenchMessages.Workbench_problemsSaving, (String)WorkbenchMessages.Workbench_problemsSavingMsg, (IStatus)status);
                }
            });
        }
        return memento;
    }

    public boolean restart() {
        return this.close(1, false);
    }

    private IStatus restoreState(final IMemento memento) {
        final MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Workbench_problemsRestoring, null);
        boolean showProgress = PrefUtil.getAPIPreferenceStore().getBoolean("SHOW_PROGRESS_ON_STARTUP");
        try {
            if (!showProgress) {
                this.doRestoreState(memento, result);
            } else {
                Integer lastProgressCount = memento.getInteger("progressCount");
                int expectedProgressCount = Math.max(1, lastProgressCount == null ? WorkbenchPlugin.getDefault().getBundleCount() / 2 : lastProgressCount);
                this.runStartupWithProgress(expectedProgressCount, new Runnable(){

                    public void run() {
                        Workbench.this.doRestoreState(memento, result);
                    }
                });
            }
        }
        finally {
            this.openWindowsAfterRestore();
        }
        return result;
    }

    public ContributionInfo[] getEarlyActivatedPlugins() {
        IExtensionPoint point = Platform.getExtensionRegistry().getExtensionPoint("org.eclipse.ui", "startup");
        IExtension[] extensions = point.getExtensions();
        ArrayList<String> pluginIds = new ArrayList<String>(extensions.length);
        int i = 0;
        while (i < extensions.length) {
            String id = extensions[i].getNamespace();
            if (!pluginIds.contains(id)) {
                pluginIds.add(id);
            }
            ++i;
        }
        ContributionInfo[] result = new ContributionInfo[pluginIds.size()];
        int i2 = 0;
        while (i2 < result.length) {
            result[i2] = new ContributionInfo((String)pluginIds.get(i2), ContributionInfoMessages.ContributionInfo_EarlyStartupPlugin, null);
            ++i2;
        }
        return result;
    }

    public String[] getDisabledEarlyActivatedPlugins() {
        String pref = PrefUtil.getInternalPreferenceStore().getString("PLUGINS_NOT_ACTIVATED_ON_STARTUP");
        return Util.getArrayFromList(pref, ";");
    }

    private void initializeSourcePriorities() {
        WorkbenchServiceRegistry.getRegistry().initializeSourcePriorities();
    }

    private void startSourceProviders() {
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.ui.services.IEvaluationService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        final IEvaluationService evaluationService = (IEvaluationService)this.serviceLocator.getService(clazz);
        Class<?> clazz2 = class$8;
        if (clazz2 == null) {
            try {
                clazz2 = class$8 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        final IContextService contextService = (IContextService)this.serviceLocator.getService(clazz2);
        final SourceProviderService sourceProviderService = new SourceProviderService(this.serviceLocator);
        Class<?> clazz3 = class$14;
        if (clazz3 == null) {
            try {
                clazz3 = class$14 = Class.forName("org.eclipse.ui.services.ISourceProviderService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.serviceLocator.registerService(clazz3, sourceProviderService);
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void run() throws Exception {
                sourceProviderService.readRegistry();
                ISourceProvider[] sp = sourceProviderService.getSourceProviders();
                int i = 0;
                while (i < sp.length) {
                    evaluationService.addSourceProvider(sp[i]);
                    if (!(sp[i] instanceof ActiveContextSourceProvider)) {
                        contextService.addSourceProvider(sp[i]);
                    }
                    ++i;
                }
            }

            public void handleException(Throwable exception) {
                WorkbenchPlugin.log("Failed to initialize a source provider", exception);
            }
        });
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void run() throws Exception {
                Workbench.this.actionSetSourceProvider = (ActionSetSourceProvider)sourceProviderService.getSourceProvider("activeActionSets");
                FocusControlSourceProvider focusControl = (FocusControlSourceProvider)sourceProviderService.getSourceProvider("activeFocusControlId");
                ServiceLocator serviceLocator = Workbench.this.serviceLocator;
                Class<?> clazz = class$15;
                if (clazz == null) {
                    try {
                        clazz = class$15 = Class.forName("org.eclipse.ui.swt.IFocusService");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                serviceLocator.registerService(clazz, focusControl);
                Workbench.this.menuSourceProvider = (MenuSourceProvider)sourceProviderService.getSourceProvider("activeMenu");
            }

            public void handleException(Throwable exception) {
                WorkbenchPlugin.log("Failed to initialize a source provider", exception);
            }
        });
    }

    private void startPlugins() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        IExtensionPoint point = registry.getExtensionPoint("org.eclipse.ui", "startup");
        final IExtension[] extensions = point.getExtensions();
        if (extensions.length == 0) {
            return;
        }
        Job job = new Job("Workbench early startup"){

            protected IStatus run(IProgressMonitor monitor) {
                HashSet<String> disabledPlugins = new HashSet<String>(Arrays.asList(Workbench.this.getDisabledEarlyActivatedPlugins()));
                monitor.beginTask(WorkbenchMessages.Workbench_startingPlugins, extensions.length);
                int i = 0;
                while (i < extensions.length) {
                    if (monitor.isCanceled() || !Workbench.this.isRunning()) {
                        return Status.CANCEL_STATUS;
                    }
                    IExtension extension = extensions[i];
                    if (!disabledPlugins.contains(extension.getNamespace())) {
                        monitor.subTask(extension.getNamespace());
                        SafeRunner.run((ISafeRunnable)new EarlyStartupRunnable(extension));
                    }
                    monitor.worked(1);
                    ++i;
                }
                monitor.done();
                return Status.OK_STATUS;
            }

            public boolean belongsTo(Object family) {
                return Workbench.EARLY_STARTUP_FAMILY.equals(family);
            }
        };
        job.setSystem(true);
        job.schedule();
    }

    private int runUI() {
        block34: {
            Bundle stylingBundle;
            UISynchronizer synchronizer;
            UIStats.start(5, "Workbench");
            boolean avoidDeadlock = true;
            String[] commandLineArgs = Platform.getCommandLineArgs();
            int i = 0;
            while (i < commandLineArgs.length) {
                if (commandLineArgs[i].equalsIgnoreCase("-allowDeadlock")) {
                    avoidDeadlock = false;
                }
                ++i;
            }
            if (avoidDeadlock) {
                UILockListener uiLockListener = new UILockListener(this.display);
                Job.getJobManager().setLockListener((LockListener)uiLockListener);
                synchronizer = new UISynchronizer(this.display, uiLockListener);
                this.display.setSynchronizer((Synchronizer)synchronizer);
                UISynchronizer.startupThread.set(Boolean.TRUE);
            } else {
                synchronizer = null;
            }
            if (createSplash) {
                this.createSplashWrapper();
            }
            if (BundleUtility.isReady(stylingBundle = Platform.getBundle((String)"org.eclipse.e4.ui.css.swt.theme"))) {
                try {
                    Class c = stylingBundle.loadClass("org.eclipse.e4.ui.css.swt.internal.theme.BootstrapTheme3x");
                    Class[] classArray = new Class[1];
                    Class<?> clazz = class$16;
                    if (clazz == null) {
                        try {
                            clazz = class$16 = Class.forName("org.eclipse.swt.widgets.Display");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    classArray[0] = clazz;
                    Constructor constructor = c.getConstructor(classArray);
                    constructor.newInstance(this.display);
                }
                catch (Exception ex) {
                    WorkbenchPlugin.log(StatusUtil.newStatus(2, "Could not start styling support.", (Throwable)ex));
                }
            }
            ModalContext.setAllowReadAndDispatch((boolean)false);
            if (WorkbenchPlugin.getDefault().isDebugging()) {
                this.display.asyncExec(new Runnable(){

                    public void run() {
                        if (Workbench.this.isStarting()) {
                            WorkbenchPlugin.log(StatusUtil.newStatus(2, "Event loop should not be run while the Workbench is starting.", (Throwable)new RuntimeException()));
                        }
                    }
                });
            }
            Listener closeListener = new Listener(){

                public void handleEvent(Event event) {
                    event.doit = Workbench.this.close();
                }
            };
            ExceptionHandler handler = ExceptionHandler.getInstance();
            try {
                try {
                    this.display.addListener(21, closeListener);
                    Window.setExceptionHandler((Window.IExceptionHandler)handler);
                    final boolean[] initOK = new boolean[1];
                    if (Workbench.getSplash() != null) {
                        final boolean[] initDone = new boolean[1];
                        final Throwable[] error = new Throwable[1];
                        Thread initThread = new Thread(){

                            public void run() {
                                try {
                                    try {
                                        UISynchronizer.startupThread.set(Boolean.TRUE);
                                        initOK[0] = Workbench.this.init();
                                    }
                                    catch (Throwable e) {
                                        error[0] = e;
                                        initDone[0] = true;
                                        Workbench.this.display.wake();
                                    }
                                }
                                finally {
                                    initDone[0] = true;
                                    Workbench.this.display.wake();
                                }
                            }
                        };
                        initThread.start();
                        while (true) {
                            if (this.display.readAndDispatch()) {
                                continue;
                            }
                            if (initDone[0]) break;
                            this.display.sleep();
                        }
                        Throwable throwable = error[0];
                        if (throwable != null) {
                            if (throwable instanceof Error) {
                                throw (Error)throwable;
                            }
                            if (throwable instanceof Exception) {
                                throw (Exception)throwable;
                            }
                            throw new Error(throwable);
                        }
                    } else {
                        initOK[0] = this.init();
                    }
                    Platform.endSplash();
                    if (initOK[0]) {
                        this.advisor.postStartup();
                    }
                    if (!initOK[0] || !this.runEventLoop) break block34;
                    BundleContext bundleContext = WorkbenchPlugin.getDefault().getBundleContext();
                    Class<?> clazz = class$2;
                    if (clazz == null) {
                        try {
                            clazz = class$2 = Class.forName("org.eclipse.ui.IWorkbench");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    this.workbenchService = bundleContext.registerService(clazz.getName(), (Object)this, null);
                    this.startPlugins();
                    this.addStartupRegistryListener();
                    this.display.asyncExec(new Runnable(){

                        public void run() {
                            UIStats.end(5, this, "Workbench");
                            UIStats.startupComplete();
                        }
                    });
                    Workbench.getWorkbenchTestable().init(this.display, this);
                    ModalContext.setAllowReadAndDispatch((boolean)true);
                    this.isStarting = false;
                    if (synchronizer != null) {
                        synchronizer.started();
                    }
                    this.runEventLoop(handler, this.display);
                }
                catch (Exception e) {
                    if (!this.display.isDisposed()) {
                        handler.handleException(e);
                    } else {
                        String msg = "Exception in Workbench.runUI after display was disposed";
                        WorkbenchPlugin.log(msg, (IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, 1, msg, (Throwable)e));
                    }
                    this.runEventLoop = false;
                    if (!this.display.isDisposed()) {
                        this.display.removeListener(21, closeListener);
                    }
                }
            }
            finally {
                this.runEventLoop = false;
                if (!this.display.isDisposed()) {
                    this.display.removeListener(21, closeListener);
                }
            }
        }
        return this.returnCode;
    }

    private void runEventLoop(Window.IExceptionHandler handler, Display display) {
        this.runEventLoop = true;
        while (this.runEventLoop) {
            try {
                if (display.readAndDispatch()) continue;
                this.getAdvisor().eventLoopIdle(display);
            }
            catch (Throwable t) {
                handler.handleException(t);
                if (!display.isDisposed()) continue;
                this.runEventLoop = false;
            }
        }
    }

    private IStatus saveState(IMemento memento) {
        MultiStatus result = new MultiStatus("org.eclipse.ui", 0, WorkbenchMessages.Workbench_problemsSaving, null);
        memento.putString("version", VERSION_STRING[1]);
        if (this.progressCount != -1) {
            memento.putInteger("progressCount", this.progressCount);
        }
        IMemento advisorState = memento.createChild("workbenchAdvisor");
        result.add(this.getAdvisor().saveState(advisorState));
        IWorkbenchWindow[] windows = this.getWorkbenchWindows();
        int nX = 0;
        while (nX < windows.length) {
            WorkbenchWindow window = (WorkbenchWindow)windows[nX];
            IMemento childMem = memento.createChild("window");
            result.merge(window.saveState(childMem));
            ++nX;
        }
        result.add(this.getEditorHistory().saveState(memento.createChild("mruList")));
        return result;
    }

    private boolean saveMementoToFile(XMLMemento memento) {
        File stateFile = this.getWorkbenchStateFile();
        if (stateFile == null) {
            return false;
        }
        try {
            FileOutputStream stream = new FileOutputStream(stateFile);
            OutputStreamWriter writer = new OutputStreamWriter((OutputStream)stream, "utf-8");
            memento.save(writer);
            writer.close();
        }
        catch (IOException iOException) {
            stateFile.delete();
            MessageDialog.openError(null, (String)WorkbenchMessages.SavingProblem, (String)WorkbenchMessages.ProblemSavingState);
            return false;
        }
        return true;
    }

    public IWorkbenchPage showPerspective(String perspectiveId, IWorkbenchWindow window) throws WorkbenchException {
        IPerspectiveDescriptor desc;
        Object persp;
        int i;
        WorkbenchPage page;
        Assert.isNotNull((Object)perspectiveId);
        WorkbenchWindow win = (WorkbenchWindow)window;
        if (win != null && (page = win.getActiveWorkbenchPage()) != null) {
            IPerspectiveDescriptor[] perspectives = page.getOpenPerspectives();
            i = 0;
            while (i < perspectives.length) {
                IPerspectiveDescriptor persp2 = perspectives[i];
                if (perspectiveId.equals(persp2.getId())) {
                    win.makeVisible();
                    page.setPerspective(persp2);
                    return page;
                }
                ++i;
            }
        }
        IAdaptable input = this.getDefaultPageInput();
        IWorkbenchWindow[] windows = this.getWorkbenchWindows();
        i = 0;
        while (i < windows.length) {
            WorkbenchPage page2;
            win = (WorkbenchWindow)windows[i];
            if (window != win && (page2 = win.getActiveWorkbenchPage()) != null) {
                boolean inputSame = false;
                inputSame = input == null ? page2.getInput() == null : input.equals(page2.getInput());
                if (inputSame && (persp = page2.getActivePerspective()) != null && (desc = ((Perspective)persp).getDesc()) != null && perspectiveId.equals(desc.getId())) {
                    Shell shell = win.getShell();
                    shell.open();
                    if (shell.getMinimized()) {
                        shell.setMinimized(false);
                    }
                    return page2;
                }
            }
            ++i;
        }
        win = (WorkbenchWindow)window;
        if (win != null) {
            IPreferenceStore store = WorkbenchPlugin.getDefault().getPreferenceStore();
            int mode = store.getInt("OPEN_PERSPECTIVE_MODE");
            IWorkbenchPage page3 = win.getActiveWorkbenchPage();
            persp = null;
            if (page3 != null) {
                persp = page3.getPerspective();
            }
            if (2 == mode && persp != null) {
                IWorkbenchWindow newWindow = this.openWorkbenchWindow(perspectiveId, input);
                return newWindow.getActivePage();
            }
            desc = this.getPerspectiveRegistry().findPerspectiveWithId(perspectiveId);
            if (desc == null) {
                throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.WorkbenchPage_ErrorCreatingPerspective, (Object)perspectiveId));
            }
            win.getShell().open();
            if (page3 == null) {
                page3 = win.openPage(perspectiveId, input);
            } else {
                page3.setPerspective(desc);
            }
            return page3;
        }
        throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.Workbench_showPerspectiveError, (Object)perspectiveId));
    }

    public IWorkbenchPage showPerspective(String perspectiveId, IWorkbenchWindow window, IAdaptable input) throws WorkbenchException {
        IPreferenceStore store;
        int mode;
        Object persp;
        WorkbenchPage page;
        Assert.isNotNull((Object)perspectiveId);
        boolean inputSameAsWindow = false;
        WorkbenchWindow win = (WorkbenchWindow)window;
        if (win != null && (page = win.getActiveWorkbenchPage()) != null) {
            boolean inputSame = false;
            inputSame = input == null ? page.getInput() == null : input.equals(page.getInput());
            if (inputSame) {
                inputSameAsWindow = true;
                IPerspectiveDescriptor[] perspectives = page.getOpenPerspectives();
                int i = 0;
                while (i < perspectives.length) {
                    persp = perspectives[i];
                    if (perspectiveId.equals(persp.getId())) {
                        win.makeVisible();
                        page.setPerspective((IPerspectiveDescriptor)persp);
                        return page;
                    }
                    ++i;
                }
            }
        }
        IWorkbenchWindow[] windows = this.getWorkbenchWindows();
        int i = 0;
        while (i < windows.length) {
            WorkbenchPage page2;
            win = (WorkbenchWindow)windows[i];
            if (window != win && (page2 = win.getActiveWorkbenchPage()) != null) {
                IPerspectiveDescriptor desc;
                boolean inputSame = false;
                inputSame = input == null ? page2.getInput() == null : input.equals(page2.getInput());
                if (inputSame && (persp = page2.getActivePerspective()) != null && (desc = ((Perspective)persp).getDesc()) != null && perspectiveId.equals(desc.getId())) {
                    win.getShell().open();
                    return page2;
                }
            }
            ++i;
        }
        win = (WorkbenchWindow)window;
        if (inputSameAsWindow && win != null && 2 != (mode = (store = WorkbenchPlugin.getDefault().getPreferenceStore()).getInt("OPEN_PERSPECTIVE_MODE"))) {
            IWorkbenchPage page3 = win.getActiveWorkbenchPage();
            IPerspectiveDescriptor desc = this.getPerspectiveRegistry().findPerspectiveWithId(perspectiveId);
            if (desc == null) {
                throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.WorkbenchPage_ErrorCreatingPerspective, (Object)perspectiveId));
            }
            win.getShell().open();
            if (page3 == null) {
                page3 = win.openPage(perspectiveId, input);
            } else {
                page3.setPerspective(desc);
            }
            return page3;
        }
        if (win != null) {
            IWorkbenchPage page4 = win.getActiveWorkbenchPage();
            IPerspectiveDescriptor persp2 = null;
            if (page4 != null) {
                persp2 = page4.getPerspective();
            }
            if (persp2 == null) {
                IPerspectiveDescriptor desc = this.getPerspectiveRegistry().findPerspectiveWithId(perspectiveId);
                if (desc == null) {
                    throw new WorkbenchException(NLS.bind((String)WorkbenchMessages.WorkbenchPage_ErrorCreatingPerspective, (Object)perspectiveId));
                }
                win.getShell().open();
                if (page4 == null) {
                    page4 = win.openPage(perspectiveId, input);
                } else {
                    page4.setPerspective(desc);
                }
                return page4;
            }
        }
        IWorkbenchWindow newWindow = this.openWorkbenchWindow(perspectiveId, input);
        return newWindow.getActivePage();
    }

    private void shutdown() {
        try {
            this.advisor.postShutdown();
        }
        catch (Exception ex) {
            StatusManager.getManager().handle(StatusUtil.newStatus(WorkbenchPlugin.PI_WORKBENCH, "Exceptions during shutdown", (Throwable)ex));
        }
        this.firePostShutdown();
        this.workbenchListeners.clear();
        this.cancelEarlyStartup();
        if (this.workbenchService != null) {
            this.workbenchService.unregister();
        }
        Platform.getExtensionRegistry().removeRegistryChangeListener((IRegistryChangeListener)this.extensionEventHandler);
        Platform.getExtensionRegistry().removeRegistryChangeListener(this.startupRegistryListener);
        ((GrabFocus)Tweaklets.get(GrabFocus.KEY)).dispose();
        this.deactivateWorkbenchContext();
        this.disposeApplicationMenu();
        this.serviceLocator.dispose();
        this.workbenchActivitySupport.dispose();
        WorkbenchHelpSystem.disposeIfNecessary();
        WorkbenchColors.shutdown();
        this.activityHelper.shutdown();
        this.uninitializeImages();
        if (WorkbenchPlugin.getDefault() != null) {
            WorkbenchPlugin.getDefault().reset();
        }
        WorkbenchThemeManager.getInstance().dispose();
        PropertyPageContributorManager.getManager().dispose();
        ObjectActionContributorManager.getManager().dispose();
        if (this.tracker != null) {
            this.tracker.close();
        }
    }

    private void cancelEarlyStartup() {
        Job.getJobManager().cancel((Object)EARLY_STARTUP_FAMILY);
    }

    public IDecoratorManager getDecoratorManager() {
        return WorkbenchPlugin.getDefault().getDecoratorManager();
    }

    private WorkbenchWindow getActivatedWindow() {
        Shell shell;
        if (this.activatedWindow != null && (shell = this.activatedWindow.getShell()) != null && !shell.isDisposed()) {
            return this.activatedWindow;
        }
        return null;
    }

    void setActivatedWindow(WorkbenchWindow window) {
        this.activatedWindow = window;
    }

    WorkbenchConfigurer getWorkbenchConfigurer() {
        if (this.workbenchConfigurer == null) {
            this.workbenchConfigurer = new WorkbenchConfigurer();
        }
        return this.workbenchConfigurer;
    }

    WorkbenchAdvisor getAdvisor() {
        return this.advisor;
    }

    public Display getDisplay() {
        return this.display;
    }

    public String getDefaultPerspectiveId() {
        return this.getAdvisor().getInitialWindowPerspectiveId();
    }

    public IAdaptable getDefaultPageInput() {
        return this.getAdvisor().getDefaultPageInput();
    }

    public String getMainPreferencePageId() {
        String id = this.getAdvisor().getMainPreferencePageId();
        return id;
    }

    public IElementFactory getElementFactory(String factoryId) {
        Assert.isNotNull((Object)factoryId);
        return WorkbenchPlugin.getDefault().getElementFactory(factoryId);
    }

    public IProgressService getProgressService() {
        return ProgressManager.getInstance();
    }

    public IWorkbenchActivitySupport getActivitySupport() {
        return this.workbenchActivitySupport;
    }

    public IWorkbenchCommandSupport getCommandSupport() {
        return this.workbenchCommandSupport;
    }

    public IWorkbenchContextSupport getContextSupport() {
        return this.workbenchContextSupport;
    }

    public ContextManager getContextManager() {
        return this.contextManager;
    }

    private void updateActiveWorkbenchWindowMenuManager(boolean textOnly) {
        if (this.activeWorkbenchWindow != null) {
            if (this.actionSetSourceProvider != null) {
                this.activeWorkbenchWindow.removeActionSetsListener(this.actionSetSourceProvider);
            }
            this.activeWorkbenchWindow = null;
        }
        boolean actionSetsUpdated = false;
        IWorkbenchWindow workbenchWindow = this.getActiveWorkbenchWindow();
        if (workbenchWindow instanceof WorkbenchWindow) {
            this.activeWorkbenchWindow = (WorkbenchWindow)workbenchWindow;
            if (this.activeWorkbenchWindow.isClosing()) {
                return;
            }
            Shell windowShell = this.activeWorkbenchWindow.getShell();
            Shell activeShell = this.getDisplay().getActiveShell();
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.ui.contexts.IContextService");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IContextService service = (IContextService)this.getService(clazz);
            if ((Util.equals(windowShell, activeShell) || service.getShellType(activeShell) == 2) && this.actionSetSourceProvider != null) {
                this.activeWorkbenchWindow.addActionSetsListener(this.actionSetSourceProvider);
                WorkbenchPage page = this.activeWorkbenchWindow.getActiveWorkbenchPage();
                if (page != null) {
                    IActionSetDescriptor[] newActionSets = page.getActionSets();
                    ActionSetsEvent event = new ActionSetsEvent(newActionSets);
                    this.actionSetSourceProvider.actionSetsChanged(event);
                    actionSetsUpdated = true;
                }
            }
            MenuManager menuManager = this.activeWorkbenchWindow.getMenuManager();
            if (textOnly) {
                menuManager.update("text");
            } else {
                menuManager.update(true);
            }
        }
        if (!actionSetsUpdated && this.actionSetSourceProvider != null) {
            ActionSetsEvent event = new ActionSetsEvent(null);
            this.actionSetSourceProvider.actionSetsChanged(event);
        }
    }

    public IIntroManager getIntroManager() {
        return this.getWorkbenchIntroManager();
    }

    WorkbenchIntroManager getWorkbenchIntroManager() {
        if (this.introManager == null) {
            this.introManager = new WorkbenchIntroManager(this);
        }
        return this.introManager;
    }

    public IntroDescriptor getIntroDescriptor() {
        return this.introDescriptor;
    }

    public void setIntroDescriptor(IntroDescriptor descriptor) {
        if (this.getIntroManager().getIntro() != null) {
            this.getIntroManager().closeIntro(this.getIntroManager().getIntro());
        }
        this.introDescriptor = descriptor;
    }

    public IThemeManager getThemeManager() {
        return WorkbenchThemeManager.getInstance();
    }

    public boolean isRunning() {
        return this.runEventLoop;
    }

    public String getPresentationId() {
        if (this.factoryID != null) {
            return this.factoryID;
        }
        this.factoryID = PrefUtil.getAPIPreferenceStore().getString("presentationFactoryId");
        if (this.factoryID == null || this.factoryID.equals("")) {
            this.factoryID = "org.eclipse.ui.presentations.default";
        }
        return this.factoryID;
    }

    public final void largeUpdateStart() {
        if (this.largeUpdates++ == 0) {
            IWorkbenchWindow[] windows = this.getWorkbenchWindows();
            int i = 0;
            while (i < windows.length) {
                IWorkbenchWindow window = windows[i];
                if (window instanceof WorkbenchWindow) {
                    ((WorkbenchWindow)window).largeUpdateStart();
                }
                ++i;
            }
        }
    }

    public final void largeUpdateEnd() {
        if (--this.largeUpdates == 0) {
            IWorkbenchWindow[] windows = this.getWorkbenchWindows();
            int i = 0;
            while (i < windows.length) {
                IWorkbenchWindow window = windows[i];
                if (window instanceof WorkbenchWindow) {
                    ((WorkbenchWindow)window).largeUpdateEnd();
                }
                ++i;
            }
        }
    }

    public IExtensionTracker getExtensionTracker() {
        if (this.tracker == null) {
            this.tracker = new UIExtensionTracker(this.getDisplay());
        }
        return this.tracker;
    }

    private void addStartupRegistryListener() {
        IExtensionRegistry registry = Platform.getExtensionRegistry();
        registry.addRegistryChangeListener(this.startupRegistryListener);
    }

    public IWorkbenchHelpSystem getHelpSystem() {
        return WorkbenchHelpSystem.getInstance();
    }

    public IWorkbenchBrowserSupport getBrowserSupport() {
        return WorkbenchBrowserSupport.getInstance();
    }

    public IViewRegistry getViewRegistry() {
        return WorkbenchPlugin.getDefault().getViewRegistry();
    }

    public IWizardRegistry getNewWizardRegistry() {
        return WorkbenchPlugin.getDefault().getNewWizardRegistry();
    }

    public IWizardRegistry getImportWizardRegistry() {
        return WorkbenchPlugin.getDefault().getImportWizardRegistry();
    }

    public IWizardRegistry getExportWizardRegistry() {
        return WorkbenchPlugin.getDefault().getExportWizardRegistry();
    }

    public final Object getAdapter(Class key) {
        return this.serviceLocator.getService(key);
    }

    private void doRestoreState(IMemento memento, MultiStatus status) {
        try {
            UIStats.start(4, "MRUList");
            IMemento mruMemento = memento.getChild("mruList");
            if (mruMemento != null) {
                status.add(this.getEditorHistory().restoreState(mruMemento));
            }
        }
        finally {
            UIStats.end(4, this, "MRUList");
        }
        IMemento advisorState = memento.getChild("workbenchAdvisor");
        if (advisorState != null) {
            status.add(this.getAdvisor().restoreState(advisorState));
        }
        IMemento[] children = memento.getChildren("window");
        this.createdWindows = new WorkbenchWindow[children.length];
        int i = 0;
        while (i < children.length) {
            IMemento childMem = children[i];
            final WorkbenchWindow[] newWindow = new WorkbenchWindow[1];
            StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                public void runWithException() {
                    newWindow[0] = Workbench.this.newWorkbenchWindow();
                    newWindow[0].create();
                }
            });
            this.createdWindows[i] = newWindow[0];
            this.windowManager.add((Window)newWindow[0]);
            boolean restored = false;
            try {
                status.merge(newWindow[0].restoreState(childMem, null));
                try {
                    newWindow[0].fireWindowRestored();
                }
                catch (WorkbenchException e) {
                    status.add(e.getStatus());
                }
                restored = true;
            }
            catch (Throwable throwable) {
                if (!restored) {
                    this.createdWindows[i] = null;
                    StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(newWindow){
                        private final /* synthetic */ WorkbenchWindow[] val$newWindow;
                        {
                            this.val$newWindow = workbenchWindowArray;
                        }

                        public void runWithException() throws Throwable {
                            this.val$newWindow[0].close();
                        }
                    });
                }
                throw throwable;
            }
            if (!restored) {
                this.createdWindows[i] = null;
                StartupThreading.runWithoutExceptions(new /* invalid duplicate definition of identical inner class */);
            }
            ++i;
        }
    }

    private void openWindowsAfterRestore() {
        if (this.createdWindows == null) {
            return;
        }
        int i = 0;
        while (i < this.createdWindows.length) {
            if (this.createdWindows[i] != null) {
                final WorkbenchWindow myWindow = this.createdWindows[i];
                StartupThreading.runWithoutExceptions(new StartupThreading.StartupRunnable(){

                    public void runWithException() throws Throwable {
                        boolean opened = false;
                        try {
                            myWindow.open();
                            opened = true;
                        }
                        finally {
                            if (!opened) {
                                myWindow.close();
                            }
                        }
                    }
                });
            }
            ++i;
        }
        this.createdWindows = null;
    }

    public final Object getService(Class key) {
        return this.serviceLocator.getService(key);
    }

    public final boolean hasService(Class key) {
        return this.serviceLocator.hasService(key);
    }

    public final void registerService(Class api, Object service) {
        this.serviceLocator.registerService(api, service);
    }

    public final void addShowingMenus(Set menuIds, ISelection localSelection, ISelection localEditorInput) {
        this.menuSourceProvider.addShowingMenus(menuIds, localSelection, localEditorInput);
    }

    public final void removeShowingMenus(Set menuIds, ISelection localSelection, ISelection localEditorInput) {
        this.menuSourceProvider.removeShowingMenus(menuIds, localSelection, localEditorInput);
    }

    public boolean saveAll(IShellProvider shellProvider, IRunnableContext runnableContext, ISaveableFilter filter, boolean confirm) {
        SaveablesList saveablesList;
        Saveable[] saveables;
        List toSave;
        IWorkbench iWorkbench = PlatformUI.getWorkbench();
        Class<?> clazz = class$6;
        if (clazz == null) {
            try {
                clazz = class$6 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((toSave = this.getFilteredSaveables(filter, saveables = (saveablesList = (SaveablesList)iWorkbench.getService(clazz)).getOpenModels())).isEmpty()) {
            return true;
        }
        if (!confirm) {
            return !saveablesList.saveModels(toSave, shellProvider, runnableContext);
        }
        return !saveablesList.promptForSaving(toSave, shellProvider, runnableContext, true, false);
    }

    private List getFilteredSaveables(ISaveableFilter filter, Saveable[] saveables) {
        ArrayList<Saveable> toSave = new ArrayList<Saveable>();
        if (filter == null) {
            int i = 0;
            while (i < saveables.length) {
                Saveable saveable = saveables[i];
                if (saveable.isDirty()) {
                    toSave.add(saveable);
                }
                ++i;
            }
        } else {
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            SaveablesList saveablesList = (SaveablesList)this.getService(clazz);
            int i = 0;
            while (i < saveables.length) {
                IWorkbenchPart[] parts;
                Saveable saveable = saveables[i];
                if (saveable.isDirty() && this.matchesFilter(filter, saveable, parts = saveablesList.getPartsForSaveable(saveable))) {
                    toSave.add(saveable);
                }
                ++i;
            }
        }
        return toSave;
    }

    private boolean matchesFilter(ISaveableFilter filter, Saveable saveable, IWorkbenchPart[] parts) {
        return filter == null || filter.select(saveable, parts);
    }

    public ServiceLocator getServiceLocator() {
        return this.serviceLocator;
    }

    public IShellProvider getModalDialogShellProvider() {
        return new IShellProvider(){

            public Shell getShell() {
                return ProgressManagerUtil.getDefaultParent();
            }
        };
    }

    private void createApplicationMenu() {
        if (!this.hasAppMenu()) {
            return;
        }
        this.applicationMenuMgr = new ApplicationMenuManager(this.getAppMenu());
        Class<?> clazz = class$11;
        if (clazz == null) {
            try {
                clazz = class$11 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IMenuService menuService = (IMenuService)this.serviceLocator.getService(clazz);
        menuService.populateContributionManager((ContributionManager)this.applicationMenuMgr, "menu:org.eclipse.ui.workbench.menu");
        this.applicationMenuMgr.update(true);
    }

    private void disposeApplicationMenu() {
        if (this.applicationMenuMgr == null) {
            return;
        }
        Class<?> clazz = class$11;
        if (clazz == null) {
            try {
                clazz = class$11 = Class.forName("org.eclipse.ui.menus.IMenuService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IMenuService menuService = (IMenuService)this.serviceLocator.getService(clazz);
        menuService.releaseContributions((ContributionManager)this.applicationMenuMgr);
        this.applicationMenuMgr.dispose();
    }

    private void activateWorkbenchContext() {
        Class<?> clazz = class$8;
        if (clazz == null) {
            try {
                clazz = class$8 = Class.forName("org.eclipse.ui.contexts.IContextService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        IContextService contextService = (IContextService)this.serviceLocator.getService(clazz);
        this.workbenchContext = contextService.activateContext("org.eclipse.ui.contexts.workbenchMenu");
    }

    private void deactivateWorkbenchContext() {
        if (this.workbenchContext == null) {
            return;
        }
        this.workbenchContext.getContextService().deactivateContext(this.workbenchContext);
    }

    public boolean hasAppMenu() {
        if (this.getAppMenu() == null) {
            return false;
        }
        return !this.getWorkbenchConfigurer().getExitOnLastWindowClose();
    }

    private Menu getAppMenu() {
        return this.getDisplay().getMenuBar();
    }

    /* synthetic */ Workbench(Display display, WorkbenchAdvisor workbenchAdvisor, Workbench workbench) {
        this(display, workbenchAdvisor);
    }

    private final class StartupProgressBundleListener
    implements SynchronousBundleListener {
        private final IProgressMonitor progressMonitor;
        private final int maximumProgressCount;
        private final List starting;

        StartupProgressBundleListener(IProgressMonitor progressMonitor, int maximumProgressCount) {
            this.progressMonitor = progressMonitor;
            this.maximumProgressCount = maximumProgressCount;
            this.starting = new ArrayList();
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void bundleChanged(BundleEvent event) {
            String bundleName;
            int eventType = event.getType();
            StartupProgressBundleListener startupProgressBundleListener = this;
            synchronized (startupProgressBundleListener) {
                if (eventType == 128) {
                    bundleName = event.getBundle().getSymbolicName();
                    this.starting.add(bundleName);
                } else if (eventType == 2) {
                    int index;
                    Workbench workbench = Workbench.this;
                    workbench.progressCount = workbench.progressCount + 1;
                    if (Workbench.this.progressCount <= this.maximumProgressCount) {
                        this.progressMonitor.worked(1);
                    }
                    if ((index = this.starting.lastIndexOf(event.getBundle().getSymbolicName())) >= 0) {
                        this.starting.remove(index);
                    }
                    if (index != this.starting.size()) {
                        return;
                    }
                    bundleName = index == 0 ? null : (String)this.starting.get(index - 1);
                } else {
                    return;
                }
            }
            String taskName = bundleName == null ? WorkbenchMessages.Startup_Loading_Workbench : NLS.bind((String)WorkbenchMessages.Startup_Loading, (Object)bundleName);
            this.progressMonitor.subTask(taskName);
        }
    }

    private final class TaskBarDelegatingProgressMontior
    implements IProgressMonitor {
        private final Shell shell;
        private IProgressMonitor progessMonitor;
        private TaskItem systemTaskItem;
        private int totalWork;
        private int totalWorked;

        public TaskBarDelegatingProgressMontior(IProgressMonitor progressMonitor, Shell shell) {
            Assert.isNotNull((Object)progressMonitor);
            this.shell = shell;
            this.progessMonitor = progressMonitor;
        }

        public void beginTask(String name, int totalWork) {
            this.progessMonitor.beginTask(name, totalWork);
            if (this.totalWork == 0) {
                this.totalWork = totalWork;
            }
        }

        public void worked(int work) {
            this.progessMonitor.worked(work);
            this.totalWorked += work;
            if (Display.getCurrent() != null) {
                this.handleTaskBarProgressUpdated();
            } else if (Workbench.this.getDisplay() != null && !Workbench.this.getDisplay().isDisposed()) {
                Workbench.this.getDisplay().asyncExec(new Runnable(this){
                    final /* synthetic */ TaskBarDelegatingProgressMontior this$1;
                    {
                        this.this$1 = taskBarDelegatingProgressMontior;
                    }

                    public void run() {
                        TaskBarDelegatingProgressMontior.access$0(this.this$1);
                    }
                });
            }
        }

        public void done() {
            this.progessMonitor.done();
            if (Display.getCurrent() != null) {
                this.handleTaskBarProgressDone();
            } else if (Workbench.this.getDisplay() != null && !Workbench.this.getDisplay().isDisposed()) {
                Workbench.this.getDisplay().asyncExec(new Runnable(this){
                    final /* synthetic */ TaskBarDelegatingProgressMontior this$1;
                    {
                        this.this$1 = taskBarDelegatingProgressMontior;
                    }

                    public void run() {
                        TaskBarDelegatingProgressMontior.access$1(this.this$1);
                    }
                });
            }
        }

        private TaskItem getTaskItem(Shell shell) {
            TaskBar systemTaskBar;
            if (Display.getCurrent() == null) {
                return null;
            }
            if (this.systemTaskItem == null && Workbench.this.getDisplay() != null && shell != null && !shell.isDisposed() && (systemTaskBar = Workbench.this.getDisplay().getSystemTaskBar()) != null) {
                this.systemTaskItem = systemTaskBar.getItem(shell);
                if (this.systemTaskItem == null) {
                    this.systemTaskItem = systemTaskBar.getItem(null);
                }
            }
            return this.systemTaskItem;
        }

        private void handleTaskBarProgressUpdated() {
            if (this.systemTaskItem == null) {
                this.systemTaskItem = this.getTaskItem(this.shell);
            }
            if (this.systemTaskItem != null && !this.systemTaskItem.isDisposed()) {
                if (this.systemTaskItem.getProgressState() != 0) {
                    this.systemTaskItem.setProgressState(0);
                }
                float percentComplete = (float)this.totalWorked / (float)this.totalWork * 100.0f;
                this.systemTaskItem.setProgress(Math.round(percentComplete));
            }
        }

        private void handleTaskBarProgressDone() {
            if (this.systemTaskItem == null) {
                this.systemTaskItem = this.getTaskItem(this.shell);
            }
            if (this.systemTaskItem != null && !this.systemTaskItem.isDisposed() && this.systemTaskItem.getProgressState() != -1) {
                this.systemTaskItem.setProgressState(-1);
            }
        }

        public void internalWorked(double work) {
            this.progessMonitor.internalWorked(work);
        }

        public boolean isCanceled() {
            return this.progessMonitor.isCanceled();
        }

        public void setCanceled(boolean value) {
            this.progessMonitor.setCanceled(value);
        }

        public void setTaskName(String name) {
            this.progessMonitor.setTaskName(name);
        }

        public void subTask(String name) {
            this.progessMonitor.subTask(name);
        }

        static /* synthetic */ void access$0(TaskBarDelegatingProgressMontior taskBarDelegatingProgressMontior) {
            taskBarDelegatingProgressMontior.handleTaskBarProgressUpdated();
        }

        static /* synthetic */ void access$1(TaskBarDelegatingProgressMontior taskBarDelegatingProgressMontior) {
            taskBarDelegatingProgressMontior.handleTaskBarProgressDone();
        }
    }
}

