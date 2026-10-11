/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EPackage$Descriptor
 *  org.eclipse.emf.ecore.EPackage$Registry
 */
package org.eclipse.emf.validation.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.service.BatchValidator;
import org.eclipse.emf.validation.internal.service.ConstraintCache;
import org.eclipse.emf.validation.internal.service.IProviderDescriptor;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.service.IProviderOperationExecutor;
import org.eclipse.emf.validation.internal.service.LiveValidator;
import org.eclipse.emf.validation.internal.service.ProviderDescriptor;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.IValidationListener;
import org.eclipse.emf.validation.service.IValidator;
import org.eclipse.emf.validation.service.ModeledConstraintsLoader;
import org.eclipse.emf.validation.service.ValidationEvent;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ModelValidationService {
    private static final ModelValidationService instance = new ModelValidationService();
    private volatile Collection<IProviderDescriptor> constraintProviders = new HashSet<IProviderDescriptor>();
    private boolean xmlConstraintDeclarationsLoaded = false;
    private volatile IValidationListener[] listeners;
    private ConstraintCache constraintCache;
    private final Object providersLock = new Object();
    private final IExtensionChangeHandler providersHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            Collection added = ModelValidationService.this.registerProviders(extension.getConfigurationElements());
            for (IProviderDescriptor pd : added) {
                tracker.registerObject(extension, (Object)pd, 1);
            }
            if (ModelValidationService.this.xmlConstraintDeclarationsLoaded) {
                ModelValidationService.this.loadXmlConstraintDeclarations(added);
            }
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };
    private final IExtensionChangeHandler modeledProvidersHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            IConfigurationElement[] iConfigurationElementArray = extension.getConfigurationElements();
            int n = iConfigurationElementArray.length;
            int n2 = 0;
            while (n2 < n) {
                String extensionUri;
                IConfigurationElement elem = iConfigurationElementArray[n2];
                if ("provider".equals(elem.getName()) && (extensionUri = elem.getAttribute("constraintResourceUri")) != null) {
                    try {
                        ModeledConstraintsLoader.getInstance().loadConstraintBundles(null, URI.createURI((String)extensionUri), ModelValidationService.this, Platform.getBundle((String)elem.getContributor().getName()));
                    }
                    catch (Exception e) {
                        Trace.catching(this.getClass(), "addEXtension", e);
                    }
                }
                ++n2;
            }
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };
    private final IExtensionChangeHandler listenersHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            ModelValidationService.this.registerListeners(extension.getConfigurationElements());
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };

    private ModelValidationService() {
        this.configureConstraints();
        this.configureListeners();
    }

    private void configureConstraints() {
        this.constraintCache = new ConstraintCache();
        Collection<IProviderDescriptor> providers = this.getProviders();
        providers.add(this.constraintCache.getDescriptor());
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "constraintProviders");
            IExtensionPoint modeledProvidersExtensionPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "modeledConstraintProviders");
            IExtensionTracker extTracker = EMFModelValidationPlugin.getExtensionTracker();
            if (extTracker != null) {
                IExtension extension;
                extTracker.registerHandler(this.providersHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extPoint));
                IExtension[] iExtensionArray = extPoint.getExtensions();
                int n = iExtensionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    extension = iExtensionArray[n2];
                    this.providersHandler.addExtension(extTracker, extension);
                    ++n2;
                }
                extTracker.registerHandler(this.modeledProvidersHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)modeledProvidersExtensionPoint));
                iExtensionArray = modeledProvidersExtensionPoint.getExtensions();
                n = iExtensionArray.length;
                n2 = 0;
                while (n2 < n) {
                    extension = iExtensionArray[n2];
                    this.modeledProvidersHandler.addExtension(extTracker, extension);
                    ++n2;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private Collection<IProviderDescriptor> registerProviders(IConfigurationElement[] configs) {
        ArrayList<IProviderDescriptor> result = new ArrayList<IProviderDescriptor>();
        Object object = this.providersLock;
        synchronized (object) {
            this.constraintProviders = new HashSet<IProviderDescriptor>(this.getProviders());
            IConfigurationElement[] iConfigurationElementArray = configs;
            int n = configs.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement element = iConfigurationElementArray[n2];
                if (element.getName().equals("constraintProvider")) {
                    try {
                        ProviderDescriptor descriptor = new ProviderDescriptor(element);
                        if (descriptor.isCacheEnabled()) {
                            this.constraintCache.addProvider(descriptor);
                            if (Trace.shouldTrace(EMFModelValidationDebugOptions.PROVIDERS)) {
                                Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Added provider to cache: " + descriptor);
                            }
                        } else {
                            this.constraintProviders.add(descriptor);
                            if (Trace.shouldTrace(EMFModelValidationDebugOptions.PROVIDERS)) {
                                Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Loaded uncacheable provider: " + descriptor);
                            }
                        }
                        result.add(descriptor);
                    }
                    catch (CoreException e) {
                        Trace.catching(this.getClass(), "registerProviders()", e);
                        Log.log(e.getStatus());
                    }
                }
                ++n2;
            }
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void registerProvider(IProviderDescriptor descriptor) {
        Object object = this.providersLock;
        synchronized (object) {
            this.constraintProviders.add(descriptor);
        }
    }

    private void configureListeners() {
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "validationListeners");
            IExtensionTracker extTracker = EMFModelValidationPlugin.getExtensionTracker();
            if (extTracker != null) {
                extTracker.registerHandler(this.listenersHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extPoint));
                IExtension[] iExtensionArray = extPoint.getExtensions();
                int n = iExtensionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExtension extension = iExtensionArray[n2];
                    this.listenersHandler.addExtension(extTracker, extension);
                    ++n2;
                }
            }
        }
    }

    private void registerListeners(IConfigurationElement[] configs) {
        IConfigurationElement[] iConfigurationElementArray = configs;
        int n = configs.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            if (element.getName().equals("listener")) {
                try {
                    this.addValidationListener(new LazyListener(element));
                }
                catch (CoreException e) {
                    Trace.catching(this.getClass(), "registerListeners()", e);
                    Log.log(e.getStatus());
                }
            }
            ++n2;
        }
    }

    public static ModelValidationService getInstance() {
        return instance;
    }

    public <T, V extends IValidator<T>> V newValidator(EvaluationMode<T> mode) {
        assert (mode != null && !mode.isNull());
        IProviderOperationExecutor executor = new IProviderOperationExecutor(){

            public <S> S execute(IProviderOperation<? extends S> op) {
                return (S)ModelValidationService.this.execute(op);
            }
        };
        if (mode == EvaluationMode.BATCH) {
            return (V)new BatchValidator(executor);
        }
        if (mode == EvaluationMode.LIVE) {
            return (V)new LiveValidator(executor);
        }
        throw new IllegalArgumentException();
    }

    public synchronized void addValidationListener(IValidationListener listener) {
        if (this.indexOf(listener) < 0) {
            if (this.listeners == null) {
                this.listeners = new IValidationListener[]{listener};
            } else {
                IValidationListener[] newListeners = new IValidationListener[this.listeners.length + 1];
                System.arraycopy(this.listeners, 0, newListeners, 0, this.listeners.length);
                newListeners[this.listeners.length] = listener;
                this.listeners = newListeners;
            }
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.LISTENERS)) {
                Trace.trace(EMFModelValidationDebugOptions.LISTENERS, "Registered listener: " + listener.getClass().getName());
            }
        }
    }

    public synchronized void removeValidationListener(IValidationListener listener) {
        int index = this.indexOf(listener);
        if (index >= 0) {
            IValidationListener[] newListeners = new IValidationListener[this.listeners.length - 1];
            System.arraycopy(this.listeners, 0, newListeners, 0, index);
            System.arraycopy(this.listeners, index + 1, newListeners, index, this.listeners.length - index - 1);
            this.listeners = newListeners;
            if (Trace.shouldTrace(EMFModelValidationDebugOptions.LISTENERS)) {
                Trace.trace(EMFModelValidationDebugOptions.LISTENERS, "Deregistered listener: " + listener.getClass().getName());
            }
        }
    }

    private int indexOf(IValidationListener listener) {
        int result = -1;
        if (this.listeners != null) {
            int i = 0;
            while (i < this.listeners.length) {
                if (this.listeners[i] == listener) {
                    result = i;
                    break;
                }
                ++i;
            }
        }
        return result;
    }

    public void broadcastValidationEvent(ValidationEvent event) {
        IValidationListener[] array;
        if (this.listeners == null) {
            return;
        }
        IValidationListener[] iValidationListenerArray = array = this.listeners;
        int n = array.length;
        int n2 = 0;
        while (n2 < n) {
            IValidationListener element = iValidationListenerArray[n2];
            try {
                element.validationOccurred(event);
            }
            catch (Exception e) {
                Trace.catching(this.getClass(), "broadcastValidationEvent", e);
                if (Trace.shouldTrace(EMFModelValidationDebugOptions.LISTENERS)) {
                    Trace.trace(EMFModelValidationDebugOptions.LISTENERS, "Uncaught exception in listener: " + element.getClass().getName());
                }
                Log.l7dWarning(130, EMFModelValidationStatusCodes.LISTENER_UNCAUGHT_EXCEPTION_MSG, e);
            }
            ++n2;
        }
    }

    @Deprecated
    public void configureListeners(IConfigurationElement[] elements) {
    }

    @Deprecated
    public void configureProviders(IConfigurationElement[] elements) {
    }

    public void replaceInCache(IModelConstraint oldConstraint, IModelConstraint newConstraint) {
        this.constraintCache.replace(oldConstraint, newConstraint);
    }

    private Collection<IProviderDescriptor> getProviders() {
        return this.constraintProviders;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private <S> S execute(IProviderOperation<? extends S> operation) {
        Collection<IProviderDescriptor> providersCopy;
        Object object = this.providersLock;
        synchronized (object) {
            providersCopy = this.getProviders();
        }
        Iterator<IProviderDescriptor> iter = providersCopy.iterator();
        while (iter.hasNext()) {
            IProviderDescriptor next = iter.next();
            if (!next.provides(operation)) continue;
            try {
                operation.execute(next.getProvider());
            }
            catch (RuntimeException e) {
                Trace.catching(this.getClass(), "execute", e);
                Log.l7dWarning(61, EMFModelValidationStatusCodes.PROVIDER_FAILURE_MSG, e);
                iter.remove();
            }
        }
        return operation.getConstraints();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void loadXmlConstraintDeclarations() {
        if (!this.xmlConstraintDeclarationsLoaded) {
            Collection<IProviderDescriptor> providersCopy;
            this.xmlConstraintDeclarationsLoaded = true;
            Object object = this.providersLock;
            synchronized (object) {
                providersCopy = this.getProviders();
            }
            this.loadXmlConstraintDeclarations(providersCopy);
        }
    }

    private void loadXmlConstraintDeclarations(Collection<IProviderDescriptor> providers) {
        for (IProviderDescriptor next : providers) {
            if (next.isXmlProvider()) {
                next.getProvider();
                continue;
            }
            if (!next.isCache()) continue;
            this.loadXmlConstraintDeclarations(((ConstraintCache)next.getProvider()).getProviders());
        }
    }

    public static EClass findClass(String namespaceUri, String className) {
        EClass result = null;
        EPackage epackage = ModelValidationService.findPackage(namespaceUri);
        if (epackage != null) {
            EClassifier classifier = null;
            List<String> packageNames = ModelValidationService.parsePackageNames(className);
            if (packageNames == null) {
                classifier = epackage.getEClassifier(className);
            } else if (ModelValidationService.packageHasName(epackage, packageNames)) {
                className = className.substring(className.lastIndexOf(46) + 1);
                classifier = epackage.getEClassifier(className);
            }
            if (classifier instanceof EClass) {
                result = (EClass)classifier;
            }
        }
        return result;
    }

    private static EPackage findPackage(String namespaceUri) {
        EPackage.Registry registry = EPackage.Registry.INSTANCE;
        Object result = registry.get(namespaceUri);
        if (result instanceof EPackage.Descriptor) {
            result = ((EPackage.Descriptor)result).getEPackage();
        }
        return (EPackage)result;
    }

    private static List<String> parsePackageNames(String qualifiedClassName) {
        ArrayList<String> result = null;
        int end = qualifiedClassName.lastIndexOf(46);
        if (end >= 0) {
            int start;
            result = new ArrayList<String>();
            do {
                start = qualifiedClassName.lastIndexOf(46, end - 1);
                result.add(qualifiedClassName.substring(start + 1, end));
            } while ((end = start) >= 0);
        }
        return result;
    }

    private static boolean packageHasName(EPackage epackage, List<String> name) {
        boolean result = true;
        EPackage pkg = epackage;
        Iterator<String> iter = name.iterator();
        while (result && iter.hasNext() && pkg != null) {
            result = iter.next().equals(pkg.getName());
            pkg = pkg.getESuperPackage();
        }
        result = result && !iter.hasNext() && pkg == null;
        return result;
    }

    private final class LazyListener
    implements IValidationListener {
        private final IConfigurationElement config;
        private List<String> registeredClientContexts = null;
        private IValidationListener validationListener = null;
        private static final String E_CLIENT_CONTEXT = "clientContext";
        private static final String A_CLIENT_CONTEXT_ID = "id";

        LazyListener(IConfigurationElement config) throws CoreException {
            assert (config != null);
            this.config = config;
        }

        private IValidationListener replaceMe() throws CoreException {
            IValidationListener result = null;
            result = (IValidationListener)this.config.createExecutableExtension("class");
            int index = ModelValidationService.this.indexOf(this);
            ((ModelValidationService)ModelValidationService.this).listeners[index] = result;
            return result;
        }

        public void validationOccurred(ValidationEvent event) {
            if (this.registeredClientContexts == null) {
                IConfigurationElement[] children = this.config.getChildren(E_CLIENT_CONTEXT);
                this.registeredClientContexts = new ArrayList<String>(4);
                IConfigurationElement[] iConfigurationElementArray = children;
                int n = children.length;
                int n2 = 0;
                while (n2 < n) {
                    IConfigurationElement element = iConfigurationElementArray[n2];
                    this.registeredClientContexts.add(element.getAttribute(A_CLIENT_CONTEXT_ID));
                    ++n2;
                }
            }
            if (this.registeredClientContexts.size() == 0) {
                try {
                    IValidationListener realListener = this.replaceMe();
                    realListener.validationOccurred(event);
                }
                catch (Exception e) {
                    Trace.catching(this.getClass(), "validationOccurred", e);
                    Log.log(4, 130, EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.LISTENER_UNCAUGHT_EXCEPTION_MSG, this.config.getDeclaringExtension().getUniqueIdentifier()), e);
                    ModelValidationService.this.removeValidationListener(this);
                }
                return;
            }
            for (String clientContextId : this.registeredClientContexts) {
                if (!event.getClientContextIds().contains(clientContextId)) continue;
                try {
                    if (this.validationListener == null) {
                        IValidationListener listener;
                        this.validationListener = listener = (IValidationListener)this.config.createExecutableExtension("class");
                    }
                    this.validationListener.validationOccurred(event);
                }
                catch (Exception e) {
                    Trace.catching(this.getClass(), "validationOccurred", e);
                    Log.log(4, 130, EMFModelValidationPlugin.getMessage(EMFModelValidationStatusCodes.LISTENER_UNCAUGHT_EXCEPTION_MSG, this.config.getDeclaringExtension().getUniqueIdentifier()), e);
                    ModelValidationService.this.removeValidationListener(this);
                }
                return;
            }
        }
    }
}

