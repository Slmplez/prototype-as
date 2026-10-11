/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 *  org.eclipse.emf.common.notify.impl.AdapterFactoryImpl
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.Collection;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.AdapterFactoryImpl;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITableItemLabelProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.ReflectiveItemProvider;

public class ReflectiveItemProviderAdapterFactory
extends AdapterFactoryImpl
implements ComposeableAdapterFactory,
IChangeNotifier,
IDisposable {
    protected ComposedAdapterFactory parentAdapterFactory;
    protected IChangeNotifier changeNotifier = new ChangeNotifier();
    protected Collection<Object> supportedTypes = new ArrayList<Object>();
    protected ReflectiveItemProvider reflectiveItemProviderAdapter = new ReflectiveItemProvider(this);

    public ReflectiveItemProviderAdapterFactory() {
        this.supportedTypes.add(IStructuredItemContentProvider.class);
        this.supportedTypes.add(ITreeItemContentProvider.class);
        this.supportedTypes.add(IItemPropertySource.class);
        this.supportedTypes.add(IEditingDomainItemProvider.class);
        this.supportedTypes.add(IItemLabelProvider.class);
        this.supportedTypes.add(ITableItemLabelProvider.class);
    }

    public Adapter createAdapter(Notifier target) {
        return this.reflectiveItemProviderAdapter;
    }

    public ComposeableAdapterFactory getRootAdapterFactory() {
        return this.parentAdapterFactory == null ? this : this.parentAdapterFactory.getRootAdapterFactory();
    }

    public void setParentAdapterFactory(ComposedAdapterFactory parentAdapterFactory) {
        this.parentAdapterFactory = parentAdapterFactory;
    }

    public boolean isFactoryForType(Object type) {
        return type instanceof EObject || this.supportedTypes.contains(type);
    }

    public Adapter adapt(Notifier notifier, Object type) {
        return super.adapt(notifier, (Object)this);
    }

    public Object adapt(Object object, Object type) {
        if (this.isFactoryForType(type)) {
            Object adapter = super.adapt(object, type);
            if (!(type instanceof Class) || ((Class)type).isInstance(adapter)) {
                return adapter;
            }
        }
        return null;
    }

    public void addListener(INotifyChangedListener notifyChangedListener) {
        this.changeNotifier.addListener(notifyChangedListener);
    }

    public void removeListener(INotifyChangedListener notifyChangedListener) {
        this.changeNotifier.removeListener(notifyChangedListener);
    }

    public void fireNotifyChanged(Notification notification) {
        this.changeNotifier.fireNotifyChanged(notification);
        if (this.parentAdapterFactory != null) {
            this.parentAdapterFactory.fireNotifyChanged(notification);
        }
    }

    public void dispose() {
        if (this.reflectiveItemProviderAdapter != null) {
            this.reflectiveItemProviderAdapter.dispose();
        }
    }
}

