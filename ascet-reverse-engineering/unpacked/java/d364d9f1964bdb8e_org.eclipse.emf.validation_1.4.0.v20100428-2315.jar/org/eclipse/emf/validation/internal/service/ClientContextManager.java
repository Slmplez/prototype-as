/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationContext
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.dynamichelpers.ExtensionTracker
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler
 *  org.eclipse.core.runtime.dynamichelpers.IExtensionTracker
 *  org.eclipse.emf.common.EMFPlugin
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.expressions.EvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.dynamichelpers.ExtensionTracker;
import org.eclipse.core.runtime.dynamichelpers.IExtensionChangeHandler;
import org.eclipse.core.runtime.dynamichelpers.IExtensionTracker;
import org.eclipse.emf.common.EMFPlugin;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.EMFModelValidationPlugin;
import org.eclipse.emf.validation.internal.l10n.ValidationMessages;
import org.eclipse.emf.validation.internal.service.ClientContext;
import org.eclipse.emf.validation.internal.service.IClientContext;
import org.eclipse.emf.validation.internal.util.Log;
import org.eclipse.emf.validation.internal.util.Trace;
import org.eclipse.emf.validation.internal.util.XmlExpressionSelector;
import org.eclipse.emf.validation.model.IClientSelector;
import org.eclipse.emf.validation.model.IModelConstraint;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ClientContextManager {
    private static final String E_CLIENT_CONTEXT = "clientContext";
    private static final String E_BINDING = "binding";
    private static final String A_CONTEXT = "context";
    private static final String E_CONSTRAINT = "constraint";
    private static final String E_CATEGORY = "category";
    private static final String E_EXTEND_CLIENT_CONTEXT = "extendClientContext";
    private static final String E_EXCLUDE_CONSTRAINT = "excludeConstraint";
    private static final String E_EXCLUDE_CATEGORY = "excludeCategory";
    private static final String A_REF = "ref";
    private static final ClientContextManager INSTANCE = new ClientContextManager();
    private volatile Set<IClientContext> clientContexts = new HashSet<IClientContext>();
    private volatile Map<String, IClientContext> clientContextMap = new HashMap<String, IClientContext>();
    private volatile Set<ClientContext> defaultContexts = new HashSet<ClientContext>();
    private final Object clientContextLock = new Object();
    private final IExtensionChangeHandler extensionHandler = new IExtensionChangeHandler(){

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public void addExtension(IExtensionTracker tracker, IExtension extension) {
            IConfigurationElement[] configs = extension.getConfigurationElements();
            Object object = ClientContextManager.this.clientContextLock;
            synchronized (object) {
                ClientContextManager.this.configureClientContexts(configs);
                ClientContextManager.this.configureBindings(configs);
            }
        }

        public void removeExtension(IExtension extension, Object[] objects) {
        }
    };

    private ClientContextManager() {
        this.configureConstraintBindings();
    }

    private void configureConstraintBindings() {
        if (EMFPlugin.IS_ECLIPSE_RUNNING) {
            IExtensionPoint extPoint = Platform.getExtensionRegistry().getExtensionPoint(EMFModelValidationPlugin.getPluginId(), "constraintBindings");
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

    public static final ClientContextManager getInstance() {
        return INSTANCE;
    }

    public IClientContext getClientContext(String contextId) {
        return this.clientContextMap.get(contextId);
    }

    public Set<IClientContext> getClientContexts() {
        return this.clientContexts;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection<IClientContext> getClientContextsFor(EObject eObject) {
        Set<IClientContext> contextsCopy;
        HashSet<IClientContext> result = new HashSet<IClientContext>();
        EvaluationContext ctx = new EvaluationContext(null, (Object)eObject);
        Object object = this.clientContextLock;
        synchronized (object) {
            contextsCopy = this.getClientContexts();
        }
        for (IClientContext next : contextsCopy) {
            IClientSelector selector = next.getSelector();
            EvaluationContext toTest = selector instanceof XmlExpressionSelector ? ctx : eObject;
            try {
                if (!selector.selects(toTest)) continue;
                result.add(next);
            }
            catch (RuntimeException e) {
                Object object2 = this.clientContextLock;
                synchronized (object2) {
                    this.clientContexts.remove(next);
                    this.clientContextMap.remove(next.getId());
                    this.defaultContexts.remove(next);
                }
                Trace.catching(this.getClass(), "getClientContextsFor", e);
                Log.log(4, 114, EMFModelValidationPlugin.getMessage(ValidationMessages.client_selectorFailure_ERROR_, next.getId()), e);
            }
        }
        if (result.size() > 1) {
            ClientContext.pruneExtensions(result);
        }
        return result;
    }

    public <T extends IModelConstraint> Collection<T> getBindings(EObject eObject, Collection<? extends T> constraints) {
        Collection<IClientContext> contexts = this.getClientContextsFor(eObject);
        Collection<Object> result = contexts.isEmpty() ? Collections.emptyList() : (contexts.size() == 1 ? this.getBindings(contexts.iterator().next(), constraints) : this.getBindings(contexts, constraints));
        return result;
    }

    public <T extends IModelConstraint> Collection<T> getBindings(IClientContext context, Collection<? extends T> constraints) {
        ArrayList<IModelConstraint> result = new ArrayList<IModelConstraint>(constraints.size());
        for (IModelConstraint constraint : constraints) {
            if (context.includes(constraint)) {
                result.add(constraint);
                continue;
            }
            if (!context.isDefault() || !this.isDefaultBinding(constraint)) continue;
            result.add(constraint);
        }
        return result;
    }

    public <T extends IModelConstraint> Collection<T> getBindings(Collection<? extends IClientContext> contexts, Collection<? extends T> constraints) {
        ArrayList<IModelConstraint> result = new ArrayList<IModelConstraint>(constraints.size());
        IClientContext[] ctxArray = contexts.toArray(new IClientContext[contexts.size()]);
        boolean anyContextIsDefault = false;
        for (IModelConstraint constraint : constraints) {
            boolean bound = false;
            IClientContext[] iClientContextArray = ctxArray;
            int n = ctxArray.length;
            int n2 = 0;
            while (n2 < n) {
                IClientContext element = iClientContextArray[n2];
                bound = element.includes(constraint);
                if (bound) {
                    result.add(constraint);
                    break;
                }
                if (element.isDefault()) {
                    anyContextIsDefault = true;
                }
                ++n2;
            }
            if (bound || !anyContextIsDefault || !this.isDefaultBinding(constraint)) continue;
            result.add(constraint);
        }
        return result;
    }

    private boolean isDefaultBinding(IModelConstraint constraint) {
        boolean result = true;
        String id = constraint.getDescriptor().getId();
        Iterator<IClientContext> iter = this.clientContexts.iterator();
        while (result && iter.hasNext()) {
            boolean bl = result = !iter.next().includes(constraint);
        }
        if (result) {
            for (ClientContext next : this.defaultContexts) {
                next.includeConstraint(id);
            }
        }
        return result;
    }

    @Deprecated
    public void configureConstraintBindings(IConfigurationElement[] elements) {
    }

    private void configureClientContexts(IConfigurationElement[] elements) {
        this.clientContexts = new HashSet<IClientContext>(this.clientContexts);
        this.clientContextMap = new HashMap<String, IClientContext>(this.clientContextMap);
        this.defaultContexts = new HashSet<ClientContext>(this.defaultContexts);
        IConfigurationElement[] iConfigurationElementArray = elements;
        int n = elements.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement config = iConfigurationElementArray[n2];
            if (E_CLIENT_CONTEXT.equals(config.getName())) {
                try {
                    ClientContext context = (ClientContext)this.getClientContext(config.getAttribute("id"));
                    if (context != null) {
                        context.initialize(config);
                        if (context.isDefault()) {
                            this.defaultContexts.add(context);
                        }
                    } else {
                        context = new ClientContext(config);
                        if (this.clientContexts.add(context)) {
                            this.clientContextMap.put(context.getId(), context);
                            if (context.isDefault()) {
                                this.defaultContexts.add(context);
                            }
                        }
                    }
                }
                catch (CoreException e) {
                    Trace.catching(this.getClass(), "configureClientContexts", e);
                    Log.log(e.getStatus());
                }
            }
            ++n2;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void addClientContext(ClientContext context) {
        Object object = this.clientContextLock;
        synchronized (object) {
            this.clientContexts = new HashSet<IClientContext>(this.clientContexts);
            this.clientContextMap = new HashMap<String, IClientContext>(this.clientContextMap);
            if (this.clientContexts.add(context)) {
                this.clientContextMap.put(context.getId(), context);
            }
        }
    }

    private void configureBindings(IConfigurationElement[] elements) {
        IConfigurationElement[] iConfigurationElementArray = elements;
        int n = elements.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement config = iConfigurationElementArray[n2];
            if (E_BINDING.equals(config.getName())) {
                String contextId = config.getAttribute(A_CONTEXT);
                if (contextId == null) {
                    Log.errorMessage(120, ValidationMessages.binding_noContextId_ERROR_, new Object[]{config.getDeclaringExtension().getNamespaceIdentifier()});
                } else {
                    ClientContext context = (ClientContext)this.getClientContext(contextId);
                    if (context == null) {
                        context = new ClientContext(contextId, config.getDeclaringExtension().getNamespaceIdentifier());
                        this.addClientContext(context);
                    }
                    this.configureBindings(context, config);
                }
            }
            ++n2;
        }
    }

    private void configureBindings(ClientContext context, IConfigurationElement config) {
        IConfigurationElement[] children;
        String id = config.getAttribute(E_CONSTRAINT);
        if (id != null) {
            context.includeConstraint(id);
        }
        if ((id = config.getAttribute(E_CATEGORY)) != null) {
            context.includeCategory(id);
        }
        IConfigurationElement[] iConfigurationElementArray = children = config.getChildren();
        int n = children.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement element = iConfigurationElementArray[n2];
            String name = element.getName();
            String ref = element.getAttribute(A_REF);
            if (ref == null) {
                if (E_CONSTRAINT.equals(name) || E_EXCLUDE_CONSTRAINT.equals(name)) {
                    Log.warningMessage(122, ValidationMessages.binding_noConstraintRef_WARN_, new Object[]{context.getId(), config.getDeclaringExtension().getNamespaceIdentifier()});
                } else if (E_EXTEND_CLIENT_CONTEXT.equals(name)) {
                    Log.warningMessage(124, ValidationMessages.binding_noClientContextRef_WARN_, new Object[]{context.getId(), config.getDeclaringExtension().getNamespaceIdentifier()});
                } else {
                    Log.errorMessage(123, ValidationMessages.binding_noCategoryRef_WARN_, new Object[]{context.getId(), config.getDeclaringExtension().getNamespaceIdentifier()});
                }
            } else if (E_CONSTRAINT.equals(name)) {
                context.includeConstraint(ref);
            } else if (E_CATEGORY.equals(name)) {
                context.includeCategory(ref);
            } else if (E_EXTEND_CLIENT_CONTEXT.equals(name)) {
                context.extendClientContext(ref);
            } else if (E_EXCLUDE_CONSTRAINT.equals(name)) {
                context.excludeConstraint(ref);
            } else if (E_EXCLUDE_CATEGORY.equals(name)) {
                context.excludeCategory(ref);
            }
            ++n2;
        }
    }
}

