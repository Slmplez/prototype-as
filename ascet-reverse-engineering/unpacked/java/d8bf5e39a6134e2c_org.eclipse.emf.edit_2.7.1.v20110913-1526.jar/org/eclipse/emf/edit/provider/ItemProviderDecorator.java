/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.IEditingDomainItemProvider;
import org.eclipse.emf.edit.provider.IItemColorProvider;
import org.eclipse.emf.edit.provider.IItemFontProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.IItemPropertyDescriptor;
import org.eclipse.emf.edit.provider.IItemPropertySource;
import org.eclipse.emf.edit.provider.IItemProviderDecorator;
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITableItemColorProvider;
import org.eclipse.emf.edit.provider.ITableItemFontProvider;
import org.eclipse.emf.edit.provider.ITableItemLabelProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.IUpdateableItemText;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ItemProviderDecorator
implements INotifyChangedListener,
IItemProviderDecorator,
IChangeNotifier,
IDisposable {
    protected AdapterFactory adapterFactory;
    protected IChangeNotifier decoratedItemProvider;
    protected IChangeNotifier changeNotifier;

    public ItemProviderDecorator(AdapterFactory adapterFactory) {
        this.adapterFactory = adapterFactory;
    }

    public boolean isAdapterForType(Object type) {
        return type == this.adapterFactory;
    }

    public AdapterFactory getAdapterFactory() {
        return this.adapterFactory;
    }

    @Override
    public IChangeNotifier getDecoratedItemProvider() {
        return this.decoratedItemProvider;
    }

    @Override
    public void setDecoratedItemProvider(IChangeNotifier decoratedItemProvider) {
        if (this.decoratedItemProvider != null) {
            this.decoratedItemProvider.removeListener(this);
        }
        this.decoratedItemProvider = decoratedItemProvider;
        if (decoratedItemProvider != null) {
            decoratedItemProvider.addListener(this);
        }
    }

    @Override
    public void addListener(INotifyChangedListener listener) {
        if (this.changeNotifier == null) {
            this.changeNotifier = new ChangeNotifier();
        }
        this.changeNotifier.addListener(listener);
    }

    @Override
    public void removeListener(INotifyChangedListener listener) {
        if (this.changeNotifier != null) {
            this.changeNotifier.removeListener(listener);
        }
    }

    @Override
    public void fireNotifyChanged(Notification notification) {
        if (this.adapterFactory instanceof IChangeNotifier) {
            IChangeNotifier adapterFactoryChangeNotifier = (IChangeNotifier)this.adapterFactory;
            adapterFactoryChangeNotifier.fireNotifyChanged(notification);
        }
        if (this.changeNotifier != null) {
            this.changeNotifier.fireNotifyChanged(notification);
        }
    }

    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        return ((IItemPropertySource)((Object)this.decoratedItemProvider)).getPropertyDescriptors(object);
    }

    public IItemPropertyDescriptor getPropertyDescriptor(Object object, Object propertyId) {
        return ((IItemPropertySource)((Object)this.decoratedItemProvider)).getPropertyDescriptor(object, propertyId);
    }

    public Object getEditableValue(Object object) {
        return ((IItemPropertySource)((Object)this.decoratedItemProvider)).getEditableValue(object);
    }

    public Collection<?> getElements(Object object) {
        return ((IStructuredItemContentProvider)((Object)this.decoratedItemProvider)).getElements(object);
    }

    public Collection<?> getChildren(Object object) {
        return ((ITreeItemContentProvider)((Object)this.decoratedItemProvider)).getChildren(object);
    }

    public boolean hasChildren(Object object) {
        return ((ITreeItemContentProvider)((Object)this.decoratedItemProvider)).hasChildren(object);
    }

    public Object getParent(Object object) {
        return ((ITreeItemContentProvider)((Object)this.decoratedItemProvider)).getParent(object);
    }

    public Object getImage(Object object) {
        return ((IItemLabelProvider)((Object)this.decoratedItemProvider)).getImage(object);
    }

    public Object getColumnImage(Object object, int columnIndex) {
        return ((ITableItemLabelProvider)((Object)this.decoratedItemProvider)).getColumnImage(object, columnIndex);
    }

    public String getText(Object object) {
        return ((IItemLabelProvider)((Object)this.decoratedItemProvider)).getText(object);
    }

    public Object getFont(Object object) {
        return ((IItemFontProvider)((Object)this.decoratedItemProvider)).getFont(object);
    }

    public Object getFont(Object object, int columnIndex) {
        return ((ITableItemFontProvider)((Object)this.decoratedItemProvider)).getFont(object, columnIndex);
    }

    public Object getForeground(Object object) {
        return ((IItemColorProvider)((Object)this.decoratedItemProvider)).getForeground(object);
    }

    public Object getForeground(Object object, int columnIndex) {
        return ((ITableItemColorProvider)((Object)this.decoratedItemProvider)).getForeground(object, columnIndex);
    }

    public Object getBackground(Object object) {
        return ((IItemColorProvider)((Object)this.decoratedItemProvider)).getBackground(object);
    }

    public Object getBackground(Object object, int columnIndex) {
        return ((ITableItemColorProvider)((Object)this.decoratedItemProvider)).getBackground(object, columnIndex);
    }

    public String getColumnText(Object object, int columnIndex) {
        return ((ITableItemLabelProvider)((Object)this.decoratedItemProvider)).getColumnText(object, columnIndex);
    }

    public String getUpdateableText(Object object) {
        return ((IUpdateableItemText)((Object)this.decoratedItemProvider)).getUpdateableText(object);
    }

    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        return ((IEditingDomainItemProvider)((Object)this.decoratedItemProvider)).getNewChildDescriptors(object, editingDomain, sibling);
    }

    public Command createCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        return ((IEditingDomainItemProvider)((Object)this.decoratedItemProvider)).createCommand(object, domain, commandClass, commandParameter);
    }

    @Override
    public void notifyChanged(Notification notification) {
        this.fireNotifyChanged(notification);
    }

    @Override
    public void dispose() {
        if (this.decoratedItemProvider != null) {
            this.decoratedItemProvider.removeListener(this);
        }
    }

    public String toString() {
        return String.valueOf(this.getClass().getName()) + '@' + Integer.toHexString(this.hashCode());
    }
}

