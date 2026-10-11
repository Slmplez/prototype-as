/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.lang.UCharacter
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 */
package org.eclipse.emf.validation.internal.service;

import com.ibm.icu.lang.UCharacter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.validation.EMFEventType;
import org.eclipse.emf.validation.internal.EMFModelValidationDebugOptions;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.EMFModelValidationStatusCodes;
import org.eclipse.emf.validation.internal.service.GetBatchConstraintsOperation;
import org.eclipse.emf.validation.internal.service.GetLiveConstraintsOperation;
import org.eclipse.emf.validation.internal.service.IProviderDescriptor;
import org.eclipse.emf.validation.internal.service.IProviderOperation;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.StringMatcher;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.model.EvaluationMode;
import org.eclipse.emf.validation.model.IModelConstraint;
import org.eclipse.emf.validation.service.AbstractConstraintProvider;
import org.eclipse.emf.validation.service.IModelConstraintProvider;
import org.eclipse.emf.validation.service.ModelValidationService;
import org.eclipse.emf.validation.util.XmlConfig;
import org.eclipse.emf.validation.xml.XmlConstraintProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ProviderDescriptor
implements IProviderDescriptor {
    private final IConfigurationElement myConfig;
    private IConfigurationElement[] targets;
    private String[] nsUris;
    private final StringMatcher[] nsUriMatchers;
    private IModelConstraintProvider provider = null;
    private final boolean shouldCacheConstraints;
    private final EvaluationMode<?> mode;
    private final Map<String, Boolean> providedNamespaces = new HashMap<String, Boolean>();

    public ProviderDescriptor(IConfigurationElement config) throws CoreException {
        IConfigurationElement[] pkgs;
        this.myConfig = config;
        this.mode = this.getMode(config);
        HashSet<String> uriSet = new HashSet<String>();
        HashMap<String, StringMatcher> uriMatcherMap = new HashMap<String, StringMatcher>();
        String uri = config.getAttribute("namespaceUri");
        if (uri != null) {
            if ((uri = uri.trim()).indexOf(42) >= 0) {
                uriMatcherMap.put(UCharacter.toLowerCase((String)uri), new StringMatcher(uri, true, false));
            } else {
                uriSet.add(uri);
            }
        }
        IConfigurationElement[] iConfigurationElementArray = pkgs = config.getChildren("package");
        int n = pkgs.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            uri = element.getAttribute("namespaceUri");
            if (uri != null) {
                if ((uri = uri.trim()).indexOf(42) >= 0) {
                    uriMatcherMap.put(UCharacter.toLowerCase((String)uri), new StringMatcher(uri, true, false));
                } else {
                    uriSet.add(uri);
                }
            }
            ++n2;
        }
        if (uriSet.isEmpty() && uriMatcherMap.isEmpty()) {
            CoreException e = new CoreException((IStatus)new Status(4, EMFModelValidationPlugin.getPluginId(), 62, EMFModelValidationStatusCodes.PROVIDER_NO_NAMESPACE_URI_MSG, null));
            Trace.throwing(AbstractConstraintProvider.class, "setInitializationData()", e);
            throw e;
        }
        this.nsUris = uriSet.toArray(new String[uriSet.size()]);
        this.nsUriMatchers = uriMatcherMap.values().toArray(new StringMatcher[uriMatcherMap.size()]);
        String shouldCache = config.getAttribute("cache");
        this.shouldCacheConstraints = shouldCache == null ? true : Boolean.valueOf(shouldCache);
        this.targets = config.getChildren("target");
        if (this.targets != null && this.targets.length == 0) {
            this.targets = null;
        }
        Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Parsed constraint provider: " + this);
    }

    private EvaluationMode<?> getMode() {
        return this.mode;
    }

    @Override
    public boolean provides(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
        if (operation instanceof GetLiveConstraintsOperation) {
            return this.providesLiveConstraints(operation);
        }
        if (operation instanceof GetBatchConstraintsOperation) {
            return this.providesBatchConstraints(operation);
        }
        return false;
    }

    final IConfigurationElement getConfig() {
        return this.myConfig;
    }

    @Override
    public final boolean isCacheEnabled() {
        return this.shouldCacheConstraints;
    }

    @Override
    public boolean isCache() {
        return false;
    }

    @Override
    public boolean isXmlProvider() {
        String className = this.getConfig().getAttribute("class");
        return className == null || className.equals(XmlConstraintProvider.class.getName());
    }

    @Override
    public synchronized IModelConstraintProvider getProvider() {
        if (this.provider == null) {
            try {
                Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Initializing provider: " + this);
                if (this.getConfig().getAttribute("class") == null) {
                    this.provider = new XmlConstraintProvider();
                    ((XmlConstraintProvider)this.provider).setInitializationData(this.getConfig(), "class", null);
                } else {
                    this.provider = (IModelConstraintProvider)this.getConfig().createExecutableExtension("class");
                }
                Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Provider initialized. ");
            }
            catch (CoreException ce) {
                Trace.catching(this.getClass(), "getProvider", ce);
                Log.errorMessage(60, EMFModelValidationStatusCodes.PROVIDER_NOT_INITED_MSG, this.getConfig().getAttribute("class"), ce);
                Trace.trace(EMFModelValidationDebugOptions.PROVIDERS, "Provider is disabled. ");
                this.provider = new NullProvider();
            }
        }
        return this.provider;
    }

    private boolean providesLiveConstraints(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
        Trace.entering(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "providesLiveConstraints");
        boolean result = false;
        if (this.isLive()) {
            GetLiveConstraintsOperation op = (GetLiveConstraintsOperation)operation;
            if (this.targets == null) {
                result = this.providerHandlesNamespace(op.getEObject());
            } else {
                EObject eObject = op.getEObject();
                IConfigurationElement[] iConfigurationElementArray = this.targets;
                int n = this.targets.length;
                int n2 = 0;
                while (n2 < n) {
                    IConfigurationElement next = iConfigurationElementArray[n2];
                    if (this.isLive() && this.providerHandlesEObject(eObject, next) && this.providerHandlesEvent(op.getEventType(), next)) {
                        result = true;
                        break;
                    }
                    ++n2;
                }
            }
        }
        Trace.exiting(this.getClass(), "providesLiveConstraints", result ? Boolean.TRUE : Boolean.FALSE);
        return result;
    }

    private boolean providesBatchConstraints(IProviderOperation<? extends Collection<? extends IModelConstraint>> operation) {
        Trace.entering(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "providesBatchConstraints");
        boolean result = false;
        if (this.isBatch()) {
            GetBatchConstraintsOperation op = (GetBatchConstraintsOperation)operation;
            if (this.targets == null) {
                result = this.providerHandlesNamespace(op.getEObject());
            } else {
                EObject eObject = op.getEObject();
                IConfigurationElement[] iConfigurationElementArray = this.targets;
                int n = this.targets.length;
                int n2 = 0;
                while (n2 < n) {
                    IConfigurationElement next = iConfigurationElementArray[n2];
                    if (this.providerHandlesEObject(eObject, next)) {
                        result = true;
                        break;
                    }
                    ++n2;
                }
            }
        }
        Trace.exiting(this.getClass(), "providesBatchConstraints", result ? Boolean.TRUE : Boolean.FALSE);
        return result;
    }

    private boolean providerHandlesEObject(EObject eObject, IConfigurationElement target) {
        String targetType;
        Trace.entering(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "providerHandlesEObject");
        boolean result = this.providerHandlesNamespace(eObject);
        if (result && (targetType = target.getAttribute("class")) != null) {
            result = false;
            int i = 0;
            while (!result && i < this.nsUris.length) {
                EClass eClass = ModelValidationService.findClass(this.nsUris[i], targetType);
                result = eClass == null ? false : eClass.isInstance((Object)eObject);
                ++i;
            }
        }
        Trace.exiting(this.getClass(), "providerHandlesEObject", result ? Boolean.TRUE : Boolean.FALSE);
        return result;
    }

    private boolean providerHandlesNamespace(EObject eObject) {
        Trace.entering(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "providerHandlesNamespace");
        EPackage epkg = eObject.eClass().getEPackage();
        String targetNsUri = epkg.getNsURI();
        Boolean result = this.providedNamespaces.get(targetNsUri);
        if (result == null) {
            Set<EPackage> extended;
            result = this.providerHandlesNamespace(targetNsUri, targetNsUri);
            if (result == null && !(extended = this.getExtendedEPackages(epkg)).isEmpty()) {
                Iterator<EPackage> iter = extended.iterator();
                while (iter.hasNext() && result == null) {
                    EPackage next = iter.next();
                    result = this.providerHandlesNamespace(targetNsUri, next.getNsURI());
                }
            }
            if (result == null) {
                result = Boolean.FALSE;
            }
            this.providedNamespaces.put(targetNsUri, result);
        }
        Trace.exiting(this.getClass(), "providerHandlesNamespace", result);
        return result;
    }

    private Boolean providerHandlesNamespace(String originalTargetNamespace, String namespace) {
        boolean result = false;
        int i = 0;
        while (!result && i < this.nsUris.length) {
            result = namespace.equalsIgnoreCase(this.nsUris[i]);
            if (result && !namespace.equals(originalTargetNamespace)) {
                this.addTargetNamespaceURI(originalTargetNamespace);
            }
            ++i;
        }
        i = 0;
        while (!result && i < this.nsUriMatchers.length) {
            result = this.nsUriMatchers[i].match(namespace);
            if (result) {
                this.addTargetNamespaceURI(originalTargetNamespace);
            }
            ++i;
        }
        return result ? Boolean.TRUE : null;
    }

    private synchronized void addTargetNamespaceURI(String namespaceURI) {
        String[] newURIs = new String[this.nsUris.length + 1];
        System.arraycopy(this.nsUris, 0, newURIs, 0, this.nsUris.length);
        newURIs[this.nsUris.length] = namespaceURI;
        this.nsUris = newURIs;
    }

    private Set<EPackage> getExtendedEPackages(EPackage epackage) {
        HashSet<EPackage> result = new HashSet<EPackage>();
        this.getExtendedEPackages(epackage, result);
        result.remove(epackage);
        return result;
    }

    private void getExtendedEPackages(EPackage epackage, Set<EPackage> result) {
        for (Object next : epackage.getEClassifiers()) {
            if (!(next instanceof EClass)) continue;
            for (EClass zuper : ((EClass)next).getESuperTypes()) {
                EPackage nextPackage = zuper.getEPackage();
                if (nextPackage == epackage || result.contains(nextPackage)) continue;
                result.add(nextPackage);
                this.getExtendedEPackages(nextPackage, result);
            }
        }
    }

    private boolean providerHandlesEvent(EMFEventType eventType, IConfigurationElement config) {
        Trace.entering(EMFModelValidationDebugOptions.PROVIDERS, this.getClass(), "providerHandlesEvent");
        IConfigurationElement[] events = XmlConfig.getEvents(config);
        boolean result = false;
        if (events.length == 0) {
            result = true;
        } else {
            IConfigurationElement[] iConfigurationElementArray = events;
            int n = events.length;
            int n2 = 0;
            while (n2 < n) {
                IConfigurationElement element = iConfigurationElementArray[n2];
                String eventName = element.getAttribute("name");
                if (eventType.getName().equalsIgnoreCase(eventName)) {
                    result = true;
                    break;
                }
                ++n2;
            }
        }
        Trace.exiting(this.getClass(), "providerHandlesEvent", result ? Boolean.TRUE : Boolean.FALSE);
        return result;
    }

    private boolean isLive() {
        return this.getMode().isNull() || this.getMode().isLive();
    }

    private boolean isBatch() {
        return this.getMode().isNull() || this.getMode().isBatchOnly();
    }

    private EvaluationMode<?> getMode(IConfigurationElement config) {
        String result = config.getAttribute("mode");
        if (result == null) {
            return EvaluationMode.NULL;
        }
        return EvaluationMode.getInstance(result);
    }

    public String toString() {
        StringBuffer result = new StringBuffer(64);
        result.append("ConstraintProvider[nsUris=");
        result.append(this.nsUris);
        result.append(", cache=");
        result.append(this.isCacheEnabled());
        result.append(", mode=");
        result.append(this.getMode());
        result.append(']');
        return result.toString();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    private static class NullProvider
    extends AbstractConstraintProvider {
        NullProvider() {
        }

        @Override
        public Collection<IModelConstraint> getBatchConstraints(EObject eObject, Collection<IModelConstraint> constraints) {
            return this.noOp(constraints);
        }

        @Override
        public Collection<IModelConstraint> getLiveConstraints(Notification notification, Collection<IModelConstraint> constraints) {
            return this.noOp(constraints);
        }

        private Collection<IModelConstraint> noOp(Collection<IModelConstraint> constraints) {
            return constraints == null ? new ArrayList() : constraints;
        }
    }
}

