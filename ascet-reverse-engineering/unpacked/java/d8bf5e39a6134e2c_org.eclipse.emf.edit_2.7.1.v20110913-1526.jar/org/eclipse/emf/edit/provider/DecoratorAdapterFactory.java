/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Adapter
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.Notifier
 */
package org.eclipse.emf.edit.provider;

import java.util.HashMap;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.ComposeableAdapterFactory;
import org.eclipse.emf.edit.provider.ComposedAdapterFactory;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.IItemProviderDecorator;
import org.eclipse.emf.edit.provider.INotifyChangedListener;

public abstract class DecoratorAdapterFactory
implements AdapterFactory,
ComposeableAdapterFactory,
IChangeNotifier,
IDisposable {
    protected HashMap<Object, IItemProviderDecorator> itemProviderDecorators = new HashMap();
    protected AdapterFactory decoratedAdapterFactory;
    protected ComposedAdapterFactory parentAdapterFactory;
    protected ChangeNotifier changeNotifier = new ChangeNotifier();

    public DecoratorAdapterFactory(AdapterFactory decoratedAdapterFactory) {
        this.decoratedAdapterFactory = decoratedAdapterFactory;
    }

    public boolean isFactoryForType(Object type) {
        return this.decoratedAdapterFactory.isFactoryForType(type);
    }

    public AdapterFactory getDecoratedAdapterFactory() {
        return this.decoratedAdapterFactory;
    }

    public void setDecoratedAdapterFactory(AdapterFactory decoratedAdapterFactory) {
        this.decoratedAdapterFactory = decoratedAdapterFactory;
    }

    protected abstract IItemProviderDecorator createItemProviderDecorator(Object var1, Object var2);

    public Object adapt(Object target, Object type) {
        Object adapter = this.decoratedAdapterFactory.adapt(target, type);
        if (adapter instanceof IChangeNotifier) {
            IItemProviderDecorator itemProviderDecorator = this.itemProviderDecorators.get(adapter);
            if (itemProviderDecorator == null) {
                itemProviderDecorator = this.createItemProviderDecorator(target, type);
                this.itemProviderDecorators.put(adapter, itemProviderDecorator);
                itemProviderDecorator.setDecoratedItemProvider((IChangeNotifier)adapter);
            }
            return itemProviderDecorator;
        }
        return adapter;
    }

    public Adapter adapt(Notifier target, Object type) {
        return (Adapter)this.adapt((Object)target, type);
    }

    public Adapter adaptNew(Notifier target, Object type) {
        throw new RuntimeException(EMFEditPlugin.INSTANCE.getString("_EXC_Method_not_implemented", new Object[]{this.getClass() + "adaptNew(Notifier target, Object type)"}));
    }

    public void adaptAllNew(Notifier target) {
        this.decoratedAdapterFactory.adaptAllNew(target);
    }

    public ComposeableAdapterFactory getRootAdapterFactory() {
        return this.parentAdapterFactory == null ? this : this.parentAdapterFactory.getRootAdapterFactory();
    }

    public void setParentAdapterFactory(ComposedAdapterFactory parentAdapterFactory) {
        this.parentAdapterFactory = parentAdapterFactory;
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
        for (IItemProviderDecorator object : this.itemProviderDecorators.values()) {
            if (!(object instanceof IDisposable)) continue;
            ((IDisposable)((Object)object)).dispose();
        }
    }
}

