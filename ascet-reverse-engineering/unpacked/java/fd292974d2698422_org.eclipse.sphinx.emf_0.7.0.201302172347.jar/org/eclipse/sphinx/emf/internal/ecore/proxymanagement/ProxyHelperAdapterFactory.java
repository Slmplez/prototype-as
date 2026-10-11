/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.resource.ResourceSet
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 */
package org.eclipse.sphinx.emf.internal.ecore.proxymanagement;

import org.eclipse.core.runtime.Platform;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.domain.factory.EditingDomainFactoryListenerRegistry;
import org.eclipse.sphinx.emf.domain.factory.ITransactionalEditingDomainFactoryListener;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelper;
import org.eclipse.sphinx.emf.internal.ecore.proxymanagement.ProxyHelperAdapter;
import org.eclipse.sphinx.emf.metamodel.MetaModelDescriptorRegistry;

@Deprecated
public class ProxyHelperAdapterFactory
extends AdapterFactoryImpl
implements ITransactionalEditingDomainFactoryListener {
    public static ProxyHelperAdapterFactory INSTANCE = new ProxyHelperAdapterFactory();

    protected ProxyHelperAdapterFactory() {
    }

    public void start() {
        if (Platform.isRunning()) {
            EditingDomainFactoryListenerRegistry.INSTANCE.addListener(MetaModelDescriptorRegistry.ANY_MM, null, (ITransactionalEditingDomainFactoryListener)this, null);
        }
    }

    public void stop() {
        if (Platform.isRunning()) {
            EditingDomainFactoryListenerRegistry.INSTANCE.removeListener(this);
        }
    }

    public boolean isFactoryForType(Object type) {
        return type == ProxyHelper.class;
    }

    public ProxyHelper adapt(Notifier target) {
        if (target != null) {
            return (ProxyHelper)this.adapt(target, ProxyHelper.class);
        }
        return null;
    }

    protected Adapter createAdapter(Notifier target) {
        if (target instanceof ResourceSet) {
            return new ProxyHelperAdapter();
        }
        return null;
    }

    public void postCreateEditingDomain(TransactionalEditingDomain editingDomain) {
    }

    public void preDisposeEditingDomain(TransactionalEditingDomain editingDomain) {
        Adapter adapter = EcoreUtil.getExistingAdapter((Notifier)editingDomain.getResourceSet(), ProxyHelper.class);
        if (adapter instanceof ProxyHelperAdapter) {
            ((ProxyHelperAdapter)adapter).dispose();
        }
    }
}

