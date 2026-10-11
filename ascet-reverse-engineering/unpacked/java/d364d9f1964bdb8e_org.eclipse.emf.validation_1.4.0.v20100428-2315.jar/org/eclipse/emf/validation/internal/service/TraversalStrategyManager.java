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
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package org.eclipse.emf.validation.internal.service;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.service.ITraversalStrategy;

class TraversalStrategyManager {
    private static final String TRAVERSAL_EXT_P_NAME = "traversal";
    private static final String E_TRAVERSAL_STRATEGY = "traversalStrategy";
    private static final String A_NAMESPACE_URI = "namespaceUri";
    private static final String A_CLASS = "class";
    private static final String E_ECLASS = "eclass";
    private static final String A_NAME = "name";
    private static final TraversalStrategyManager INSTANCE = new TraversalStrategyManager();
    private volatile Map<String, Descriptor> packageDescriptors = new HashMap<String, Descriptor>();
    private final Object traversalsLock = new Object();
    private final IExtensionChangeHandler extensionHandler = new IExtensionChangeHandler(){

        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            TraversalStrategyManager.this.registerTraversals(extension.getConfigurationElements());
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };

    private TraversalStrategyManager() {
        this.initStrategies();
    }

    public static TraversalStrategyManager getInstance() {
        return INSTANCE;
    }

    public ITraversalStrategy getTraversalStrategy(EObject eObject) {
        EObject root = EcoreUtil.getRootContainer((EObject)eObject);
        String nsUri = root.eClass().getEPackage().getNsURI();
        return this.getDescriptor(nsUri).getStrategy(root);
    }

    private void initStrategies() {
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), TRAVERSAL_EXT_P_NAME);
            IExtensionTracker extTracker = EMFModelValidationPlugin.getExtensionTracker();
            if (extTracker != null) {
                extTracker.registerHandler(this.extensionHandler, ExtensionTracker.createExtensionPointFilter((IExtensionPoint)extPoint));
                IExtension[] iExtensionArray = extPoint.getExtensions();
                int n = iExtensionArray.length;
                int n2 = 0;
                while (n2 < n) {
                    IExtension extension = iExtensionArray[n2];
                    this.extensionHandler.addExtension(extTracker, extension);
                    ++n2;
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void registerTraversals(IConfigurationElement[] configs) {
        Object object = this.traversalsLock;
        synchronized (object) {
            this.packageDescriptors = new HashMap<String, Descriptor>(this.packageDescriptors);
            int i = 0;
            while (i < configs.length) {
                IConfigurationElement config = configs[i];
                if (config.getName().equals(E_TRAVERSAL_STRATEGY)) {
                    this.addStrategy(config);
                }
                ++i;
            }
        }
    }

    private void addStrategy(IConfigurationElement config) {
        String nsUri = config.getAttribute(A_NAMESPACE_URI);
        String className = config.getAttribute(A_CLASS);
        if (nsUri == null) {
            Log.warningMessage(100, EMFModelValidationStatusCodes.TRAVERSAL_NO_NAMESPACE_URI_MSG, new Object[]{config.getDeclaringExtension().getNamespaceIdentifier()});
        } else if (className == null) {
            Log.warningMessage(101, EMFModelValidationStatusCodes.TRAVERSAL_NO_CLASS_MSG, new Object[]{nsUri});
        } else {
            Descriptor descriptor = this.getDescriptor(nsUri);
            descriptor.addTraversalStrategy(config);
        }
    }

    private Descriptor getDescriptor(String nsUri) {
        Descriptor result = this.packageDescriptors.get(nsUri);
        if (result == null) {
            result = new Descriptor(nsUri);
            this.packageDescriptors.put(nsUri, result);
        }
        return result;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class Descriptor {
        private final String nsUri;
        private Map<Object, ThreadLocal<ITraversalStrategy>> eclassMap = new HashMap<Object, ThreadLocal<ITraversalStrategy>>();
        private ThreadLocal<ITraversalStrategy> packageDefaultStrategy;
        private boolean isResolved;

        Descriptor(String nsUri) {
            this.nsUri = nsUri;
        }

        final String getNamespaceUri() {
            return this.nsUri;
        }

        public boolean equals(Object other) {
            return other instanceof Descriptor && this.getNamespaceUri().equals(((Descriptor)other).getNamespaceUri());
        }

        public int hashCode() {
            return this.getNamespaceUri().hashCode();
        }

        void addTraversalStrategy(IConfigurationElement config) {
            IConfigurationElement[] eclasses = config.getChildren(TraversalStrategyManager.E_ECLASS);
            ThreadLocalLazyStrategy strategy = new ThreadLocalLazyStrategy(config);
            if (eclasses.length == 0 && this.packageDefaultStrategy == null) {
                this.packageDefaultStrategy = strategy;
            } else {
                int i = 0;
                while (i < eclasses.length) {
                    IConfigurationElement next = eclasses[i];
                    String eclassName = next.getAttribute(TraversalStrategyManager.A_NAME);
                    if (!this.eclassMap.containsKey(eclassName)) {
                        this.eclassMap.put(eclassName, strategy);
                    }
                    ++i;
                }
            }
        }

        private void resolve(EPackage ePackage) {
            this.isResolved = true;
            HashMap<Object, ThreadLocal<ITraversalStrategy>> newMap = new HashMap<Object, ThreadLocal<ITraversalStrategy>>();
            for (Map.Entry<Object, ThreadLocal<ITraversalStrategy>> next : this.eclassMap.entrySet()) {
                String eclassName = (String)next.getKey();
                EClassifier eclass = ePackage.getEClassifier(eclassName);
                if (eclass instanceof EClass) {
                    newMap.put(eclass, next.getValue());
                    continue;
                }
                Log.warningMessage(103, EMFModelValidationStatusCodes.TRAVERSAL_ECLASS_MSG, new Object[]{eclassName, ePackage.getNsURI()});
            }
            this.eclassMap = newMap;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        ITraversalStrategy getStrategy(EObject eObject) {
            EClass eclass = eObject.eClass();
            Descriptor descriptor = this;
            synchronized (descriptor) {
                ThreadLocal<ITraversalStrategy> strategy;
                if (!this.isResolved) {
                    this.resolve(eclass.getEPackage());
                }
                if ((strategy = this.eclassMap.get(eclass)) == null) {
                    strategy = this.inheritStrategy(eclass);
                    this.eclassMap.put(eclass, strategy);
                }
                return strategy.get();
            }
        }

        private ThreadLocal<ITraversalStrategy> inheritStrategy(EClass eclass) {
            ThreadLocal<ITraversalStrategy> result = this.getInheritedStrategy(eclass);
            if (result == null) {
                if (this.packageDefaultStrategy == null) {
                    this.packageDefaultStrategy = new ThreadLocalLazyStrategy();
                }
                result = this.packageDefaultStrategy;
            }
            return result;
        }

        private ThreadLocal<ITraversalStrategy> getInheritedStrategy(EClass eclass) {
            ThreadLocal<ITraversalStrategy> result = null;
            Iterator iter = eclass.getESuperTypes().iterator();
            while (result == null && iter.hasNext()) {
                EClass next = (EClass)iter.next();
                result = this.eclassMap.containsKey(next) ? this.eclassMap.get(next) : this.getInheritedStrategy(next);
            }
            return result;
        }

        private ITraversalStrategy initializeStrategy(IConfigurationElement config) {
            ITraversalStrategy result;
            try {
                result = (ITraversalStrategy)config.createExecutableExtension(TraversalStrategyManager.A_CLASS);
            }
            catch (ClassCastException classCastException) {
                Log.errorMessage(102, EMFModelValidationStatusCodes.TRAVERSAL_INTERFACE_MSG, new Object[]{config.getAttribute(TraversalStrategyManager.A_CLASS)});
                result = new ITraversalStrategy.Recursive();
            }
            catch (CoreException e) {
                Log.log(e.getStatus());
                result = new ITraversalStrategy.Recursive();
            }
            if (this.packageDefaultStrategy != null) {
                ((ThreadLocalLazyStrategy)this.packageDefaultStrategy).preinitialize(result, config);
            }
            for (ThreadLocal<ITraversalStrategy> next : this.eclassMap.values()) {
                ((ThreadLocalLazyStrategy)next).preinitialize(result, config);
            }
            return result;
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        private class ThreadLocalLazyStrategy
        extends ThreadLocal<ITraversalStrategy> {
            private final IConfigurationElement config;

            ThreadLocalLazyStrategy() {
                this(null);
            }

            ThreadLocalLazyStrategy(IConfigurationElement config) {
                this.config = config;
            }

            @Override
            protected ITraversalStrategy initialValue() {
                return this.config == null ? new ITraversalStrategy.Recursive() : Descriptor.this.initializeStrategy(this.config);
            }

            void preinitialize(ITraversalStrategy strategy, IConfigurationElement config) {
                if (config == this.config) {
                    this.set(strategy);
                }
            }
        }
    }
}

