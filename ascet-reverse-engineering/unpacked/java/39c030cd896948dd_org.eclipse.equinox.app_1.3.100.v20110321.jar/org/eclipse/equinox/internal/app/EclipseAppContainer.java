/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IExtensionRegistry
 *  org.eclipse.core.runtime.IRegistryEventListener
 *  org.eclipse.osgi.framework.log.FrameworkLogEntry
 *  org.eclipse.osgi.service.runnable.ApplicationLauncher
 *  org.eclipse.osgi.service.runnable.ParameterizedRunnable
 *  org.eclipse.osgi.util.NLS
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.BundleEvent
 *  org.osgi.framework.BundleListener
 *  org.osgi.framework.InvalidSyntaxException
 *  org.osgi.framework.ServiceReference
 *  org.osgi.framework.ServiceRegistration
 *  org.osgi.framework.SynchronousBundleListener
 *  org.osgi.util.tracker.ServiceTracker
 *  org.osgi.util.tracker.ServiceTrackerCustomizer
 */
package org.eclipse.equinox.internal.app;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Dictionary;
import java.util.HashMap;
import java.util.Iterator;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IExtensionRegistry;
import org.eclipse.core.runtime.IRegistryEventListener;
import org.eclipse.equinox.internal.app.Activator;
import org.eclipse.equinox.internal.app.AnyThreadAppLauncher;
import org.eclipse.equinox.internal.app.CommandLineArgs;
import org.eclipse.equinox.internal.app.DefaultApplicationListener;
import org.eclipse.equinox.internal.app.EclipseAppDescriptor;
import org.eclipse.equinox.internal.app.EclipseAppHandle;
import org.eclipse.equinox.internal.app.IBranding;
import org.eclipse.equinox.internal.app.MainApplicationLauncher;
import org.eclipse.equinox.internal.app.Messages;
import org.eclipse.equinox.internal.app.ProductExtensionBranding;
import org.eclipse.equinox.internal.app.ProviderExtensionBranding;
import org.eclipse.osgi.framework.log.FrameworkLogEntry;
import org.eclipse.osgi.service.runnable.ApplicationLauncher;
import org.eclipse.osgi.service.runnable.ParameterizedRunnable;
import org.eclipse.osgi.util.NLS;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.BundleListener;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.ServiceRegistration;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.service.application.ApplicationException;
import org.osgi.service.application.ApplicationHandle;
import org.osgi.util.tracker.ServiceTracker;
import org.osgi.util.tracker.ServiceTrackerCustomizer;

public class EclipseAppContainer
implements IRegistryEventListener,
SynchronousBundleListener,
ServiceTrackerCustomizer {
    private static final String PI_RUNTIME = "org.eclipse.core.runtime";
    private static final String PT_APPLICATIONS = "applications";
    private static final String PT_APP_VISIBLE = "visible";
    private static final String PT_APP_THREAD = "thread";
    private static final String PT_APP_THREAD_ANY = "any";
    private static final String PT_APP_CARDINALITY = "cardinality";
    private static final String PT_APP_CARDINALITY_SINGLETON_GLOBAL = "singleton-global";
    private static final String PT_APP_CARDINALITY_SINGLETON_SCOPED = "singleton-scoped";
    private static final String PT_APP_CARDINALITY_UNLIMITED = "*";
    private static final String PT_APP_ICON = "icon";
    private static final String PT_PRODUCTS = "products";
    private static final String EXT_ERROR_APP = "org.eclipse.equinox.app.error";
    static final String PROP_PRODUCT = "eclipse.product";
    static final String PROP_ECLIPSE_APPLICATION = "eclipse.application";
    private static final String PROP_ECLIPSE_APPLICATION_LAUNCH_DEFAULT = "eclipse.application.launchDefault";
    static final int NOT_LOCKED = 0;
    static final int LOCKED_SINGLETON_GLOBAL_RUNNING = 1;
    static final int LOCKED_SINGLETON_GLOBAL_APPS_RUNNING = 2;
    static final int LOCKED_SINGLETON_SCOPED_RUNNING = 3;
    static final int LOCKED_SINGLETON_LIMITED_RUNNING = 4;
    static final int LOCKED_MAIN_THREAD_RUNNING = 5;
    final BundleContext context;
    private final Object lock = new Object();
    private final HashMap apps = new HashMap();
    private final IExtensionRegistry extensionRegistry;
    private final ServiceTracker launcherTracker;
    private IBranding branding;
    private boolean missingProductReported;
    private final Collection activeHandles = new ArrayList();
    private EclipseAppHandle activeMain;
    private EclipseAppHandle activeGlobalSingleton;
    private EclipseAppHandle activeScopedSingleton;
    private HashMap activeLimited;
    private String defaultAppId;
    private DefaultApplicationListener defaultAppListener;
    private ParameterizedRunnable defaultMainThreadAppHandle;
    private volatile boolean missingApp = false;
    private MainApplicationLauncher missingAppLauncher;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;

    public EclipseAppContainer(BundleContext context, IExtensionRegistry extensionRegistry) {
        this.context = context;
        this.extensionRegistry = extensionRegistry;
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.service.runnable.ApplicationLauncher");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        this.launcherTracker = new ServiceTracker(context, clazz.getName(), (ServiceTrackerCustomizer)this);
    }

    void start() {
        this.launcherTracker.open();
        this.extensionRegistry.addListener((IRegistryEventListener)this, "org.eclipse.core.runtime.applications");
        this.context.addBundleListener((BundleListener)this);
        this.registerAppDescriptors();
        String startDefaultProp = this.context.getProperty(PROP_ECLIPSE_APPLICATION_LAUNCH_DEFAULT);
        if (startDefaultProp == null || "true".equalsIgnoreCase(startDefaultProp)) {
            try {
                this.startDefaultApp(true);
            }
            catch (ApplicationException e) {
                Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 4, 0, Messages.application_errorStartDefault, 0, (Throwable)e, null));
            }
        }
    }

    void stop() {
        this.stopAllApps();
        this.context.removeBundleListener((BundleListener)this);
        this.extensionRegistry.removeListener((IRegistryEventListener)this);
        this.apps.clear();
        this.branding = null;
        this.missingProductReported = false;
        this.launcherTracker.close();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private EclipseAppDescriptor getAppDescriptor(String applicationId) {
        EclipseAppDescriptor result = null;
        Object object = this.lock;
        synchronized (object) {
            result = (EclipseAppDescriptor)this.apps.get(applicationId);
        }
        if (result == null) {
            this.registerAppDescriptor(applicationId);
            object = this.lock;
            synchronized (object) {
                result = (EclipseAppDescriptor)this.apps.get(applicationId);
            }
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private EclipseAppDescriptor createAppDescriptor(IExtension appExtension) {
        if (Activator.DEBUG) {
            System.out.println("Creating application descriptor: " + appExtension.getUniqueIdentifier());
        }
        String iconPath = null;
        Object object = this.lock;
        synchronized (object) {
            EclipseAppDescriptor appDescriptor = (EclipseAppDescriptor)this.apps.get(appExtension.getUniqueIdentifier());
            if (appDescriptor != null) {
                return appDescriptor;
            }
            IConfigurationElement[] configs = appExtension.getConfigurationElements();
            int flags = 35;
            int cardinality = 0;
            if (configs.length > 0) {
                String defaultApp;
                String sCardinality;
                String sThread;
                String sVisible = configs[0].getAttribute(PT_APP_VISIBLE);
                if (sVisible != null && !Boolean.valueOf(sVisible).booleanValue()) {
                    flags &= 0xFFFFFFFE;
                }
                if (PT_APP_THREAD_ANY.equals(sThread = configs[0].getAttribute(PT_APP_THREAD))) {
                    flags |= 0x40;
                    flags &= 0xFFFFFFDF;
                }
                if ((sCardinality = configs[0].getAttribute(PT_APP_CARDINALITY)) != null) {
                    flags &= 0xFFFFFFFD;
                    if (PT_APP_CARDINALITY_SINGLETON_SCOPED.equals(sCardinality)) {
                        flags |= 4;
                    } else if (PT_APP_CARDINALITY_UNLIMITED.equals(sCardinality)) {
                        flags |= 8;
                    } else if (PT_APP_CARDINALITY_SINGLETON_GLOBAL.equals(sCardinality)) {
                        flags |= 2;
                    } else {
                        try {
                            cardinality = Integer.parseInt(sCardinality);
                            flags |= 0x10;
                        }
                        catch (NumberFormatException numberFormatException) {
                            flags |= 2;
                        }
                    }
                }
                if ((defaultApp = this.getDefaultAppId()) != null && defaultApp.equals(appExtension.getUniqueIdentifier())) {
                    flags |= 0x80;
                }
                iconPath = configs[0].getAttribute(PT_APP_ICON);
            }
            appDescriptor = new EclipseAppDescriptor(Activator.getBundle(appExtension.getContributor()), appExtension.getUniqueIdentifier(), appExtension.getLabel(), iconPath, flags, cardinality, this);
            String[] stringArray = new String[1];
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.osgi.service.application.ApplicationDescriptor");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            stringArray[0] = clazz.getName();
            ServiceRegistration sr = (ServiceRegistration)AccessController.doPrivileged(new RegisterService(stringArray, appDescriptor, appDescriptor.getServiceProperties()));
            appDescriptor.setServiceRegistration(sr);
            this.apps.put(appExtension.getUniqueIdentifier(), appDescriptor);
            return appDescriptor;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private EclipseAppDescriptor removeAppDescriptor(String applicationId) {
        if (Activator.DEBUG) {
            System.out.println("Removing application descriptor: " + applicationId);
        }
        Object object = this.lock;
        synchronized (object) {
            EclipseAppDescriptor appDescriptor;
            block5: {
                appDescriptor = (EclipseAppDescriptor)this.apps.remove(applicationId);
                if (appDescriptor != null) break block5;
                return null;
            }
            appDescriptor.unregister();
            return appDescriptor;
        }
    }

    PrivilegedAction getRegServiceAction(String[] serviceClasses, Object serviceObject, Dictionary serviceProps) {
        return new RegisterService(serviceClasses, serviceObject, serviceProps);
    }

    void startDefaultApp(boolean delayError) throws ApplicationException {
        String applicationId = this.getDefaultAppId();
        EclipseAppDescriptor defaultDesc = null;
        HashMap<String, Serializable> args = new HashMap<String, Serializable>(2);
        args.put("eclipse.application.default", Boolean.TRUE);
        if (applicationId == null && !delayError) {
            args.put("error.exception", new RuntimeException(Messages.application_noIdFound));
            defaultDesc = this.getAppDescriptor(EXT_ERROR_APP);
        } else {
            defaultDesc = this.getAppDescriptor(applicationId);
            if (defaultDesc == null && !delayError) {
                args.put("error.exception", new RuntimeException(NLS.bind((String)Messages.application_notFound, (Object)applicationId, (Object)this.getAvailableAppsMsg())));
                defaultDesc = this.getAppDescriptor(EXT_ERROR_APP);
            }
        }
        if (delayError && defaultDesc == null) {
            this.missingApp = true;
            return;
        }
        if (defaultDesc == null) {
            throw new ApplicationException(3, Messages.application_noIdFound);
        }
        defaultDesc.launch(args);
    }

    private void registerAppDescriptors() {
        IExtension[] availableApps = this.getAvailableAppExtensions();
        int i = 0;
        while (i < availableApps.length) {
            this.createAppDescriptor(availableApps[i]);
            ++i;
        }
    }

    private void registerAppDescriptor(String applicationId) {
        IExtension appExtension = this.getAppExtension(applicationId);
        if (appExtension != null) {
            this.createAppDescriptor(appExtension);
        }
    }

    private IExtension[] getAvailableAppExtensions() {
        IExtensionPoint point = this.extensionRegistry.getExtensionPoint("org.eclipse.core.runtime.applications");
        if (point == null) {
            return new IExtension[0];
        }
        return point.getExtensions();
    }

    String getAvailableAppsMsg() {
        IExtension[] availableApps = this.getAvailableAppExtensions();
        String availableAppsMsg = "<NONE>";
        if (availableApps.length != 0) {
            availableAppsMsg = availableApps[0].getUniqueIdentifier();
            int i = 1;
            while (i < availableApps.length) {
                availableAppsMsg = String.valueOf(availableAppsMsg) + ", " + availableApps[i].getUniqueIdentifier();
                ++i;
            }
        }
        return availableAppsMsg;
    }

    IExtension getAppExtension(String applicationId) {
        return this.extensionRegistry.getExtension(PI_RUNTIME, PT_APPLICATIONS, applicationId);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void launch(EclipseAppHandle appHandle) throws Exception {
        boolean isDefault = appHandle.isDefault();
        if (((EclipseAppDescriptor)appHandle.getApplicationDescriptor()).getThreadType() == 32) {
            DefaultApplicationListener curDefaultApplicationListener = null;
            MainApplicationLauncher curMissingAppLauncher = null;
            ApplicationLauncher appLauncher = null;
            EclipseAppContainer eclipseAppContainer = this;
            synchronized (eclipseAppContainer) {
                appLauncher = (ApplicationLauncher)this.launcherTracker.getService();
                if (appLauncher == null) {
                    if (isDefault) {
                        this.defaultMainThreadAppHandle = appHandle;
                        return;
                    }
                    throw new ApplicationException(3, NLS.bind((String)Messages.application_error_noMainThread, (Object)appHandle.getInstanceId()));
                }
                curDefaultApplicationListener = this.defaultAppListener;
                curMissingAppLauncher = this.missingAppLauncher;
            }
            if (curDefaultApplicationListener != null) {
                curDefaultApplicationListener.launch(appHandle);
            } else if (curMissingAppLauncher != null) {
                curMissingAppLauncher.launch(appHandle);
            } else {
                appLauncher.launch((ParameterizedRunnable)appHandle, appHandle.getArguments().get("application.args"));
            }
        } else if (isDefault) {
            DefaultApplicationListener curDefaultApplicationListener = null;
            MainApplicationLauncher curMissingAppLauncher = null;
            ApplicationLauncher appLauncher = null;
            EclipseAppContainer eclipseAppContainer = this;
            synchronized (eclipseAppContainer) {
                appLauncher = (ApplicationLauncher)this.launcherTracker.getService();
                if (this.defaultAppListener == null) {
                    this.defaultAppListener = new DefaultApplicationListener(appHandle);
                }
                curDefaultApplicationListener = this.defaultAppListener;
                if (appLauncher == null) {
                    this.defaultMainThreadAppHandle = curDefaultApplicationListener;
                    return;
                }
                curMissingAppLauncher = this.missingAppLauncher;
            }
            if (curMissingAppLauncher != null) {
                curMissingAppLauncher.launch(curDefaultApplicationListener);
            } else {
                appLauncher.launch((ParameterizedRunnable)curDefaultApplicationListener, null);
            }
        } else {
            AnyThreadAppLauncher.launchEclipseApplication(appHandle);
        }
    }

    public void bundleChanged(BundleEvent event) {
        if ((0x100 & event.getType()) == 0 || event.getBundle().getBundleId() != 0L) {
            return;
        }
        this.stopAllApps();
    }

    private void stopAllApps() {
        block15: {
            try {
                ServiceReference[] runningRefs;
                Class<?> clazz = class$2;
                if (clazz == null) {
                    try {
                        clazz = class$2 = Class.forName("org.osgi.service.application.ApplicationHandle");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((runningRefs = this.context.getServiceReferences(clazz.getName(), "(!(application.state=STOPPING))")) == null) break block15;
                int i = 0;
                while (i < runningRefs.length) {
                    block17: {
                        ApplicationHandle handle = (ApplicationHandle)this.context.getService(runningRefs[i]);
                        try {
                            try {
                                if (handle != null) {
                                    handle.destroy();
                                }
                            }
                            catch (Throwable t) {
                                String message = NLS.bind((String)Messages.application_error_stopping, (Object)handle.getInstanceId());
                                Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 2, 0, message, 0, t, null));
                                if (handle != null) {
                                    this.context.ungetService(runningRefs[i]);
                                }
                                break block17;
                            }
                        }
                        catch (Throwable throwable) {
                            if (handle != null) {
                                this.context.ungetService(runningRefs[i]);
                            }
                            throw throwable;
                        }
                        if (handle != null) {
                            this.context.ungetService(runningRefs[i]);
                        }
                    }
                    ++i;
                }
            }
            catch (InvalidSyntaxException invalidSyntaxException) {}
        }
    }

    private String getDefaultAppId() {
        if (this.defaultAppId != null) {
            return this.defaultAppId;
        }
        this.defaultAppId = CommandLineArgs.getApplication();
        if (this.defaultAppId != null) {
            return this.defaultAppId;
        }
        this.defaultAppId = this.context.getProperty(PROP_ECLIPSE_APPLICATION);
        if (this.defaultAppId != null) {
            return this.defaultAppId;
        }
        this.defaultAppId = this.getBranding() == null ? null : this.getBranding().getApplication();
        return this.defaultAppId;
    }

    public IBranding getBranding() {
        IConfigurationElement[] entries;
        if (this.branding != null) {
            return this.branding;
        }
        String productId = CommandLineArgs.getProduct();
        if (productId == null) {
            if (this.context == null) {
                return null;
            }
            productId = this.context.getProperty(PROP_PRODUCT);
            if (productId == null) {
                return null;
            }
        }
        if ((entries = this.extensionRegistry.getConfigurationElementsFor(PI_RUNTIME, PT_PRODUCTS, productId)).length > 0) {
            this.branding = new ProductExtensionBranding(productId, entries[0]);
            return this.branding;
        }
        IConfigurationElement[] elements = this.extensionRegistry.getConfigurationElementsFor(PI_RUNTIME, PT_PRODUCTS);
        ArrayList<FrameworkLogEntry> logEntries = null;
        int i = 0;
        while (i < elements.length) {
            IConfigurationElement element = elements[i];
            if (element.getName().equalsIgnoreCase("provider")) {
                try {
                    Object provider = element.createExecutableExtension("run");
                    Object[] products = (Object[])EclipseAppContainer.callMethod(provider, "getProducts", null, null);
                    if (products != null) {
                        int j = 0;
                        while (j < products.length) {
                            if (productId.equalsIgnoreCase((String)EclipseAppContainer.callMethod(products[j], "getId", null, null))) {
                                this.branding = new ProviderExtensionBranding(products[j]);
                                return this.branding;
                            }
                            ++j;
                        }
                    }
                }
                catch (CoreException e) {
                    if (logEntries == null) {
                        logEntries = new ArrayList<FrameworkLogEntry>(3);
                    }
                    logEntries.add(new FrameworkLogEntry("org.eclipse.equinox.app", NLS.bind((String)Messages.provider_invalid, (Object)element.getParent().toString()), 0, (Throwable)e, null));
                }
            }
            ++i;
        }
        if (logEntries != null) {
            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", Messages.provider_invalid_general, 0, null, logEntries.toArray(new FrameworkLogEntry[logEntries.size()])));
        }
        if (!this.missingProductReported) {
            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", NLS.bind((String)Messages.product_notFound, (Object)productId), 0, null, null));
            this.missingProductReported = true;
        }
        return null;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void refreshAppDescriptors() {
        Object object = this.lock;
        synchronized (object) {
            Iterator allApps = this.apps.values().iterator();
            while (allApps.hasNext()) {
                ((EclipseAppDescriptor)allApps.next()).refreshProperties();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void lock(EclipseAppHandle appHandle) throws ApplicationException {
        EclipseAppDescriptor eclipseApp = (EclipseAppDescriptor)appHandle.getApplicationDescriptor();
        Object object = this.lock;
        synchronized (object) {
            switch (this.isLocked(eclipseApp)) {
                case 0: {
                    break;
                }
                case 1: {
                    throw new ApplicationException(2, NLS.bind((String)Messages.singleton_running, (Object)this.activeGlobalSingleton.getInstanceId()));
                }
                case 2: {
                    throw new ApplicationException(2, Messages.apps_running);
                }
                case 3: {
                    throw new ApplicationException(2, NLS.bind((String)Messages.singleton_running, (Object)this.activeScopedSingleton.getInstanceId()));
                }
                case 4: {
                    throw new ApplicationException(2, NLS.bind((String)Messages.max_running, (Object)eclipseApp.getApplicationId()));
                }
                case 5: {
                    throw new ApplicationException(2, NLS.bind((String)Messages.main_running, (Object)this.activeMain.getInstanceId()));
                }
            }
            switch (eclipseApp.getCardinalityType()) {
                case 2: {
                    this.activeGlobalSingleton = appHandle;
                    break;
                }
                case 4: {
                    this.activeScopedSingleton = appHandle;
                    break;
                }
                case 16: {
                    ArrayList<EclipseAppHandle> limited;
                    if (this.activeLimited == null) {
                        this.activeLimited = new HashMap(3);
                    }
                    if ((limited = (ArrayList<EclipseAppHandle>)this.activeLimited.get(eclipseApp.getApplicationId())) == null) {
                        limited = new ArrayList<EclipseAppHandle>(eclipseApp.getCardinality());
                        this.activeLimited.put(eclipseApp.getApplicationId(), limited);
                    }
                    limited.add(appHandle);
                    break;
                }
                case 8: {
                    break;
                }
            }
            if (eclipseApp.getThreadType() == 32) {
                this.activeMain = appHandle;
            }
            this.activeHandles.add(appHandle);
            this.refreshAppDescriptors();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void unlock(EclipseAppHandle appHandle) {
        Object object = this.lock;
        synchronized (object) {
            ArrayList limited;
            if (this.activeGlobalSingleton == appHandle) {
                this.activeGlobalSingleton = null;
            } else if (this.activeScopedSingleton == appHandle) {
                this.activeScopedSingleton = null;
            } else if (((EclipseAppDescriptor)appHandle.getApplicationDescriptor()).getCardinalityType() == 16 && this.activeLimited != null && (limited = (ArrayList)this.activeLimited.get(((EclipseAppDescriptor)appHandle.getApplicationDescriptor()).getApplicationId())) != null) {
                limited.remove(appHandle);
            }
            if (this.activeMain == appHandle) {
                this.activeMain = null;
            }
            if (this.activeHandles.remove(appHandle)) {
                this.refreshAppDescriptors();
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    int isLocked(EclipseAppDescriptor eclipseApp) {
        Object object = this.lock;
        synchronized (object) {
            if (this.activeGlobalSingleton != null) {
                return 1;
            }
            switch (eclipseApp.getCardinalityType()) {
                case 2: {
                    if (this.activeHandles.size() <= 0) break;
                    return 2;
                }
                case 4: {
                    if (this.activeScopedSingleton == null) break;
                    return 3;
                }
                case 16: {
                    ArrayList limited;
                    if (this.activeLimited == null || (limited = (ArrayList)this.activeLimited.get(eclipseApp.getApplicationId())) == null || limited.size() < eclipseApp.getCardinality()) break;
                    return 4;
                }
                case 8: {
                    break;
                }
            }
            if (eclipseApp.getThreadType() == 32 && this.activeMain != null) {
                return 5;
            }
            return 0;
        }
    }

    static Object callMethod(Object obj, String methodName, Class[] argTypes, Object[] args) {
        try {
            return EclipseAppContainer.callMethodWithException(obj, methodName, argTypes, args);
        }
        catch (Throwable t) {
            Activator.log(new FrameworkLogEntry("org.eclipse.equinox.app", 4, 0, "Error in invoking method.", 0, t, null));
            return null;
        }
    }

    static Object callMethodWithException(Object obj, String methodName, Class[] argTypes, Object[] args) throws Exception {
        try {
            Method method = obj.getClass().getMethod(methodName, argTypes);
            return method.invoke(obj, args);
        }
        catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Error) {
                throw (Error)e.getTargetException();
            }
            if (e.getTargetException() instanceof Exception) {
                throw (Exception)e.getTargetException();
            }
            throw e;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Object addingService(ServiceReference reference) {
        Object appRunnable;
        ApplicationLauncher appLauncher;
        EclipseAppContainer eclipseAppContainer = this;
        synchronized (eclipseAppContainer) {
            appLauncher = (ApplicationLauncher)this.context.getService(reference);
            appRunnable = this.defaultMainThreadAppHandle;
            this.defaultMainThreadAppHandle = null;
            if (appRunnable == null && this.missingApp) {
                this.missingAppLauncher = new MainApplicationLauncher(this);
                appRunnable = this.missingAppLauncher;
                this.missingApp = false;
            }
        }
        if (appRunnable != null) {
            appLauncher.launch(appRunnable, appRunnable instanceof EclipseAppHandle ? ((EclipseAppHandle)appRunnable).getArguments().get("application.args") : null);
        }
        return appLauncher;
    }

    public void modifiedService(ServiceReference reference, Object service) {
    }

    public void removedService(ServiceReference reference, Object service) {
    }

    public void added(IExtension[] extensions) {
        int i = 0;
        while (i < extensions.length) {
            this.createAppDescriptor(extensions[i]);
            ++i;
        }
    }

    public void added(IExtensionPoint[] extensionPoints) {
    }

    public void removed(IExtension[] extensions) {
        int i = 0;
        while (i < extensions.length) {
            this.removeAppDescriptor(extensions[i].getUniqueIdentifier());
            ++i;
        }
    }

    public void removed(IExtensionPoint[] extensionPoints) {
    }

    private class RegisterService
    implements PrivilegedAction {
        String[] serviceClasses;
        Object serviceObject;
        Dictionary serviceProps;

        RegisterService(String[] serviceClasses, Object serviceObject, Dictionary serviceProps) {
            this.serviceClasses = serviceClasses;
            this.serviceObject = serviceObject;
            this.serviceProps = serviceProps;
        }

        public Object run() {
            return EclipseAppContainer.this.context.registerService(this.serviceClasses, this.serviceObject, this.serviceProps);
        }
    }
}

