/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 *  org.osgi.framework.Bundle
 */
package org.eclipse.sphinx.emf.domain.factory;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.Activator;
import org.eclipse.sphinx.emf.domain.factory.ITransactionalEditingDomainFactoryListener;
import org.eclipse.sphinx.emf.internal.messages.Messages;
import org.eclipse.sphinx.emf.metamodel.IMetaModelDescriptor;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;
import org.osgi.framework.Bundle;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EditingDomainFactoryListenerRegistry {
    public static final EditingDomainFactoryListenerRegistry INSTANCE = new EditingDomainFactoryListenerRegistry();
    private static final String EXTP_EDITING_DOMAIN_FACTORY_LISTENERS = "org.eclipse.sphinx.emf.editingDomainFactoryListeners";
    private static final String NODE_LISTENER = "listener";
    private static final String ATTR_ID = "id";
    private static final String ATTR_CLASS = "class";
    private static final String ATTR_OVERRIDE = "override";
    private static final String NODE_APPLICABLE_FOR = "applicableFor";
    private static final String ATTR_MMDESC_ID_PATTERN = "metaModelDescriptorIdPattern";
    private boolean isInitialized = false;
    private Map<IMetaModelDescriptor, Map<String, Object>> fEditingDomainFactoryListeners = new HashMap<IMetaModelDescriptor, Map<String, Object>>();
    private Map<String, Set<IMetaModelDescriptor>> fOutstandingOverrides = new HashMap<String, Set<IMetaModelDescriptor>>();

    private EditingDomainFactoryListenerRegistry() {
    }

    private void readContributedEditingDomainFactoryListeners() {
        IConfigurationElement[] iConfigurationElementArray = Platform.getExtensionRegistry().getConfigurationElementsFor(EXTP_EDITING_DOMAIN_FACTORY_LISTENERS);
        int n = iConfigurationElementArray.length;
        int n2 = 0;
        while (n2 < n) {
            IConfigurationElement cfgElement = iConfigurationElementArray[n2];
            try {
                if (NODE_LISTENER.equals(cfgElement.getName())) {
                    String listenerId = cfgElement.getAttribute(ATTR_ID);
                    String overriddenListenerId = cfgElement.getAttribute(ATTR_OVERRIDE);
                    ListenerDescriptor descriptor = new ListenerDescriptor(cfgElement.getAttribute(ATTR_CLASS), cfgElement.getContributor().getName());
                    IConfigurationElement[] iConfigurationElementArray2 = cfgElement.getChildren(NODE_APPLICABLE_FOR);
                    int n3 = iConfigurationElementArray2.length;
                    int n4 = 0;
                    while (n4 < n3) {
                        IConfigurationElement applicableFor = iConfigurationElementArray2[n4];
                        String mmDescIdPattern = applicableFor.getAttribute(ATTR_MMDESC_ID_PATTERN);
                        this.addListenerDescriptor(mmDescIdPattern, listenerId, descriptor, overriddenListenerId);
                        ++n4;
                    }
                }
            }
            catch (Exception ex) {
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
            ++n2;
        }
        for (String overriddenListenerId : this.fOutstandingOverrides.keySet()) {
            for (IMetaModelDescriptor mmDescriptor : this.fOutstandingOverrides.get(overriddenListenerId)) {
                Map<String, Object> listenersForMetaModel = this.fEditingDomainFactoryListeners.get(mmDescriptor);
                if (listenersForMetaModel == null) continue;
                listenersForMetaModel.remove(overriddenListenerId);
            }
        }
        this.fOutstandingOverrides.clear();
    }

    private void addListenerDescriptor(String mmDescIdPattern, String listenerId, ListenerDescriptor descriptor, String overriddenListenerId) {
        if (".*".equals(mmDescIdPattern) || ".+".equals(mmDescIdPattern)) {
            this.addListenerDescriptor(MetaModelDescriptorRegistry.ANY_MM, listenerId, descriptor, overriddenListenerId);
            return;
        }
        for (IMetaModelDescriptor mmDescriptor : MetaModelDescriptorRegistry.INSTANCE.getDescriptors(mmDescIdPattern)) {
            this.addListenerDescriptor(mmDescriptor, listenerId, descriptor, overriddenListenerId);
        }
    }

    private void addListenerDescriptor(IMetaModelDescriptor mmDescriptor, String listenerId, ListenerDescriptor descriptor, String overriddenListenerId) {
        if (mmDescriptor != null && descriptor != null) {
            Map<String, Object> listenersForMetaModel = this.fEditingDomainFactoryListeners.get(mmDescriptor);
            if (listenersForMetaModel == null) {
                listenersForMetaModel = new HashMap<String, Object>();
                this.fEditingDomainFactoryListeners.put(mmDescriptor, listenersForMetaModel);
            }
            listenersForMetaModel.put(listenerId, descriptor);
            if (overriddenListenerId != null && listenersForMetaModel.remove(overriddenListenerId) == null) {
                Set<IMetaModelDescriptor> overridesForListener = this.fOutstandingOverrides.get(overriddenListenerId);
                if (overridesForListener == null) {
                    overridesForListener = new HashSet<IMetaModelDescriptor>();
                    this.fOutstandingOverrides.put(overriddenListenerId, overridesForListener);
                }
                overridesForListener.add(mmDescriptor);
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public Collection<ITransactionalEditingDomainFactoryListener> getListeners(IMetaModelDescriptor mmDescriptor) {
        EditingDomainFactoryListenerRegistry editingDomainFactoryListenerRegistry = this;
        synchronized (editingDomainFactoryListenerRegistry) {
            if (!this.isInitialized) {
                this.readContributedEditingDomainFactoryListeners();
                this.isInitialized = true;
            }
        }
        HashSet<ITransactionalEditingDomainFactoryListener> listeners = new HashSet<ITransactionalEditingDomainFactoryListener>();
        for (IMetaModelDescriptor registeredMMDescriptor : this.fEditingDomainFactoryListeners.keySet()) {
            if (!registeredMMDescriptor.getClass().isInstance(mmDescriptor)) continue;
            Map<String, Object> listenersForMetaModel = this.fEditingDomainFactoryListeners.get(registeredMMDescriptor);
            listeners.addAll(this.getListeners(listenersForMetaModel));
        }
        Map<String, Object> listenersForAnyMetaModel = this.fEditingDomainFactoryListeners.get(MetaModelDescriptorRegistry.ANY_MM);
        if (listenersForAnyMetaModel != null) {
            listeners.addAll(this.getListeners(listenersForAnyMetaModel));
        }
        return listeners;
    }

    private Set<ITransactionalEditingDomainFactoryListener> getListeners(Map<String, Object> listenersOrDescriptors) {
        HashSet<ITransactionalEditingDomainFactoryListener> listeners = new HashSet<ITransactionalEditingDomainFactoryListener>();
        Iterator<String> iter = listenersOrDescriptors.keySet().iterator();
        while (iter.hasNext()) {
            String listenerId = iter.next();
            Object listenerObject = listenersOrDescriptors.get(listenerId);
            if (listenerObject instanceof ITransactionalEditingDomainFactoryListener) {
                listeners.add((ITransactionalEditingDomainFactoryListener)listenerObject);
                continue;
            }
            if (listenerObject instanceof ListenerDescriptor) {
                try {
                    ITransactionalEditingDomainFactoryListener listener = ((ListenerDescriptor)listenerObject).getListener();
                    listenersOrDescriptors.put(listenerId, listener);
                    listeners.add(listener);
                }
                catch (Exception ex) {
                    PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
                    iter.remove();
                }
                continue;
            }
            PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)NLS.bind((String)Messages.error_invalidEditingDomainFactoryListenerObject, (Object)listenerObject.getClass().getName()));
            iter.remove();
        }
        return listeners;
    }

    public void addListener(String mmDescIdPattern, String listenerId, ITransactionalEditingDomainFactoryListener listener, String overriddenListenerId) {
        if (".*".equals(mmDescIdPattern) || ".+".equals(mmDescIdPattern)) {
            this.addListener(MetaModelDescriptorRegistry.ANY_MM, listenerId, listener, overriddenListenerId);
            return;
        }
        for (IMetaModelDescriptor mmDescriptor : MetaModelDescriptorRegistry.INSTANCE.getDescriptors(mmDescIdPattern)) {
            this.addListener(mmDescriptor, listenerId, listener, overriddenListenerId);
        }
    }

    public void addListener(IMetaModelDescriptor mmDescriptor, String listenerId, ITransactionalEditingDomainFactoryListener listener, String overriddenListenerId) {
        if (mmDescriptor != null && listener != null) {
            Map<String, Object> listenersForMetaModel = this.fEditingDomainFactoryListeners.get(mmDescriptor);
            if (listenersForMetaModel == null) {
                listenersForMetaModel = new HashMap<String, Object>();
                this.fEditingDomainFactoryListeners.put(mmDescriptor, listenersForMetaModel);
            }
            listenersForMetaModel.put(listenerId != null ? listenerId : listener.toString(), listener);
            if (overriddenListenerId != null && listenersForMetaModel.remove(overriddenListenerId) == null) {
                Set<IMetaModelDescriptor> overridesForListener = this.fOutstandingOverrides.get(overriddenListenerId);
                if (overridesForListener == null) {
                    overridesForListener = new HashSet<IMetaModelDescriptor>();
                    this.fOutstandingOverrides.put(overriddenListenerId, overridesForListener);
                }
                overridesForListener.add(mmDescriptor);
            }
        }
    }

    public void removeListener(ITransactionalEditingDomainFactoryListener listener) {
        if (listener != null) {
            Iterator<Map<String, Object>> iter1 = this.fEditingDomainFactoryListeners.values().iterator();
            while (iter1.hasNext()) {
                Map<String, Object> listenersForMetaModel = iter1.next();
                Iterator<Object> iter2 = listenersForMetaModel.values().iterator();
                while (iter2.hasNext()) {
                    Object listenerForMetaModel = iter2.next();
                    if (!listener.equals(listenerForMetaModel)) continue;
                    iter2.remove();
                }
                if (!listenersForMetaModel.isEmpty()) continue;
                iter1.remove();
            }
        }
    }

    private class ListenerDescriptor {
        private String className;
        private String contributorPluginId;

        private ListenerDescriptor(String className, String contributorPluginId) {
            this.className = className;
            this.contributorPluginId = contributorPluginId;
        }

        private ITransactionalEditingDomainFactoryListener getListener() throws ClassNotFoundException, InstantiationException, IllegalAccessException {
            Bundle bundle = Platform.getBundle((String)this.contributorPluginId);
            Class factoryClz = bundle.loadClass(this.className);
            return (ITransactionalEditingDomainFactoryListener)factoryClz.newInstance();
        }
    }
}

