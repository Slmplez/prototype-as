/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.CommandWrapper
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.provider;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.CommandWrapper;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.command.CommandActionDelegate;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.command.DragAndDropCommand;
import org.eclipse.emf.edit.command.SetCommand;
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
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITableItemColorProvider;
import org.eclipse.emf.edit.provider.ITableItemFontProvider;
import org.eclipse.emf.edit.provider.ITableItemLabelProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.IViewerNotification;
import org.eclipse.emf.edit.provider.IWrapperItemProvider;
import org.eclipse.emf.edit.provider.ItemPropertyDescriptorDecorator;
import org.eclipse.emf.edit.provider.ViewerNotification;
import org.eclipse.emf.edit.provider.WrapperItemProvider;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class DelegatingWrapperItemProvider
extends WrapperItemProvider
implements IStructuredItemContentProvider,
ITreeItemContentProvider,
IItemLabelProvider,
IItemFontProvider,
IItemColorProvider,
ITableItemLabelProvider,
ITableItemFontProvider,
ITableItemColorProvider,
IItemPropertySource,
IEditingDomainItemProvider,
IChangeNotifier,
INotifyChangedListener {
    protected Object delegateItemProvider;
    protected Map<Object, IWrapperItemProvider> childrenMap;
    protected Collection<?> delegateChildren;
    protected List<IItemPropertyDescriptor> propertyDescriptors;
    protected IChangeNotifier changeNotifier;

    public DelegatingWrapperItemProvider(Object value, Object owner, EStructuralFeature feature, int index, AdapterFactory adapterFactory) {
        super(value, owner, feature, index, adapterFactory);
        if (value == null) {
            throw new IllegalArgumentException("value=null");
        }
        Object delegateValue = this.getDelegateValue();
        if (delegateValue != null) {
            this.delegateItemProvider = this.getRootAdapterFactory().adapt(delegateValue, IStructuredItemContentProvider.class);
            if (this.delegateItemProvider instanceof IChangeNotifier) {
                ((IChangeNotifier)this.delegateItemProvider).addListener(this);
            }
        }
    }

    @Deprecated
    public DelegatingWrapperItemProvider(Object value, Object owner, AdapterFactory adapterFactory) {
        this(value, owner, null, -1, adapterFactory);
    }

    @Override
    public void dispose() {
        if (this.delegateItemProvider instanceof IChangeNotifier) {
            ((IChangeNotifier)this.delegateItemProvider).removeListener(this);
        }
        if (this.childrenMap != null) {
            for (IDisposable iDisposable : this.childrenMap.values()) {
                iDisposable.dispose();
            }
        }
    }

    protected Object getDelegateValue() {
        return this.value;
    }

    @Override
    public Collection<?> getElements(Object object) {
        return this.delegateItemProvider instanceof IStructuredItemContentProvider ? ((IStructuredItemContentProvider)this.delegateItemProvider).getElements(this.getDelegateValue()) : Collections.emptyList();
    }

    @Override
    public Collection<?> getChildren(Object object) {
        this.updateChildren();
        ArrayList<IWrapperItemProvider> result = new ArrayList<IWrapperItemProvider>(this.delegateChildren.size());
        for (Object delegateChild : this.delegateChildren) {
            result.add(this.childrenMap.get(delegateChild));
        }
        return result;
    }

    protected void updateChildren() {
        if (this.delegateItemProvider instanceof ITreeItemContentProvider) {
            IWrapperItemProvider wrapper;
            boolean changed = false;
            HashSet oldDelegateChildren = this.delegateChildren != null ? new HashSet(this.delegateChildren) : Collections.emptySet();
            this.delegateChildren = ((ITreeItemContentProvider)this.delegateItemProvider).getChildren(this.getDelegateValue());
            if (this.childrenMap == null && !this.delegateChildren.isEmpty()) {
                this.childrenMap = new HashMap<Object, IWrapperItemProvider>();
            }
            for (Object child : this.delegateChildren) {
                if (!this.childrenMap.containsKey(child)) {
                    wrapper = this.createWrapper(child, this, this.adapterFactory);
                    this.childrenMap.put(child, wrapper);
                    changed = true;
                }
                oldDelegateChildren.remove(child);
            }
            if (!oldDelegateChildren.isEmpty()) {
                changed = true;
                for (Object child : oldDelegateChildren) {
                    wrapper = this.childrenMap.remove(child);
                    if (wrapper == null) continue;
                    wrapper.dispose();
                }
            }
            if (changed) {
                int index = 0;
                for (Object delegateChild : this.delegateChildren) {
                    this.childrenMap.get(delegateChild).setIndex(index++);
                }
            }
        } else {
            this.delegateChildren = Collections.emptyList();
        }
    }

    protected IWrapperItemProvider createWrapper(Object value, Object owner, AdapterFactory adapterFactory) {
        return new DelegatingWrapperItemProvider(value, owner, adapterFactory);
    }

    @Override
    public boolean hasChildren(Object object) {
        return this.delegateItemProvider instanceof ITreeItemContentProvider ? ((ITreeItemContentProvider)this.delegateItemProvider).hasChildren(this.getDelegateValue()) : false;
    }

    @Override
    public String getText(Object object) {
        return this.delegateItemProvider instanceof IItemLabelProvider ? ((IItemLabelProvider)this.delegateItemProvider).getText(this.getDelegateValue()) : null;
    }

    @Override
    public Object getImage(Object object) {
        return this.delegateItemProvider instanceof IItemLabelProvider ? ((IItemLabelProvider)this.delegateItemProvider).getImage(this.getDelegateValue()) : null;
    }

    @Override
    public Object getFont(Object object) {
        return this.delegateItemProvider instanceof IItemFontProvider ? ((IItemFontProvider)this.delegateItemProvider).getFont(this.getDelegateValue()) : null;
    }

    @Override
    public Object getForeground(Object object) {
        return this.delegateItemProvider instanceof IItemColorProvider ? ((IItemColorProvider)this.delegateItemProvider).getForeground(this.getDelegateValue()) : null;
    }

    @Override
    public Object getBackground(Object object) {
        return this.delegateItemProvider instanceof IItemColorProvider ? ((IItemColorProvider)this.delegateItemProvider).getBackground(this.getDelegateValue()) : null;
    }

    @Override
    public String getColumnText(Object object, int columnIndex) {
        return this.delegateItemProvider instanceof ITableItemLabelProvider ? ((ITableItemLabelProvider)this.delegateItemProvider).getColumnText(this.getDelegateValue(), columnIndex) : this.getText(object);
    }

    @Override
    public Object getColumnImage(Object object, int columnIndex) {
        return this.delegateItemProvider instanceof ITableItemLabelProvider ? ((ITableItemLabelProvider)this.delegateItemProvider).getColumnImage(this.getDelegateValue(), columnIndex) : this.getImage(object);
    }

    @Override
    public Object getFont(Object object, int columnIndex) {
        return this.delegateItemProvider instanceof ITableItemFontProvider ? ((ITableItemFontProvider)this.delegateItemProvider).getFont(this.getDelegateValue(), columnIndex) : this.getFont(object);
    }

    @Override
    public Object getForeground(Object object, int columnIndex) {
        return this.delegateItemProvider instanceof ITableItemColorProvider ? ((ITableItemColorProvider)this.delegateItemProvider).getForeground(this.getDelegateValue(), columnIndex) : this.getFont(object);
    }

    @Override
    public Object getBackground(Object object, int columnIndex) {
        return this.delegateItemProvider instanceof ITableItemColorProvider ? ((ITableItemColorProvider)this.delegateItemProvider).getBackground(this.getDelegateValue(), columnIndex) : this.getFont(object);
    }

    @Override
    public List<IItemPropertyDescriptor> getPropertyDescriptors(Object object) {
        if (this.propertyDescriptors == null) {
            if (this.delegateItemProvider instanceof IItemPropertySource) {
                List<IItemPropertyDescriptor> l = ((IItemPropertySource)this.delegateItemProvider).getPropertyDescriptors(this.getDelegateValue());
                this.propertyDescriptors = new ArrayList<IItemPropertyDescriptor>(l.size());
                for (IItemPropertyDescriptor desc : l) {
                    this.propertyDescriptors.add(new DelegatingWrapperItemPropertyDescriptor(this.getDelegateValue(), desc));
                }
            } else {
                this.propertyDescriptors = Collections.emptyList();
            }
        }
        return this.propertyDescriptors;
    }

    @Override
    public Object getEditableValue(Object object) {
        return this.delegateItemProvider instanceof IItemPropertySource ? ((IItemPropertySource)this.delegateItemProvider).getEditableValue(this.getDelegateValue()) : null;
    }

    @Override
    public Collection<?> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        return this.delegateItemProvider instanceof IEditingDomainItemProvider ? ((IEditingDomainItemProvider)this.delegateItemProvider).getNewChildDescriptors(this.getDelegateValue(), editingDomain, sibling) : Collections.emptyList();
    }

    @Override
    public Command createCommand(Object object, EditingDomain domain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        if (commandClass == DragAndDropCommand.class) {
            DragAndDropCommand.Detail detail = (DragAndDropCommand.Detail)commandParameter.getFeature();
            return this.createDragAndDropCommand(domain, commandParameter.getOwner(), detail.location, detail.operations, detail.operation, commandParameter.getCollection());
        }
        if (this.delegateItemProvider instanceof IEditingDomainItemProvider) {
            Object commandOwner = this.getDelegateValue();
            Command result = null;
            if (commandClass == SetCommand.class) {
                Object feature = commandParameter.getFeature();
                result = SetCommand.create(domain, commandOwner, feature, commandParameter.getValue(), commandParameter.getIndex());
                if (feature == null) {
                    return new WrapperItemProvider.ReplacementAffectedObjectCommand(this, result);
                }
            } else {
                commandParameter.setOwner(commandOwner);
                result = ((IEditingDomainItemProvider)this.delegateItemProvider).createCommand(commandOwner, domain, commandClass, commandParameter);
            }
            return this.wrapCommand(result, commandClass);
        }
        return UnexecutableCommand.INSTANCE;
    }

    protected Command wrapCommand(Command command, Class<? extends Command> commandClass) {
        return command instanceof CommandActionDelegate ? new AffectedObjectsWrappingCommandActionDelegate((CommandActionDelegate)command) : new AffectedObjectsWrappingCommand(command);
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

    @Override
    public void notifyChanged(Notification notification) {
        if (this.getRefreshElement(notification) == this.getDelegateValue()) {
            this.fireNotifyChanged(this.wrapNotification(notification));
        }
    }

    protected Object getRefreshElement(Notification notification) {
        if (notification instanceof IViewerNotification) {
            return ((IViewerNotification)notification).getElement();
        }
        return notification.getNotifier();
    }

    protected Notification wrapNotification(Notification notification) {
        return ViewerNotification.wrapNotification(notification, this);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class AffectedObjectsWrappingCommand
    extends CommandWrapper {
        public AffectedObjectsWrappingCommand(Command command) {
            super(command);
        }

        public Collection<?> getAffectedObjects() {
            ArrayList result = new ArrayList(super.getAffectedObjects());
            DelegatingWrapperItemProvider.this.updateChildren();
            ListIterator<IWrapperItemProvider> i = result.listIterator();
            while (i.hasNext()) {
                IWrapperItemProvider wrapper;
                Object object = i.next();
                if (object == DelegatingWrapperItemProvider.this.getDelegateValue()) {
                    i.set(DelegatingWrapperItemProvider.this);
                    continue;
                }
                if (DelegatingWrapperItemProvider.this.childrenMap == null || (wrapper = DelegatingWrapperItemProvider.this.childrenMap.get(object)) == null) continue;
                i.set(wrapper);
            }
            return result;
        }
    }

    protected class AffectedObjectsWrappingCommandActionDelegate
    extends AffectedObjectsWrappingCommand
    implements CommandActionDelegate {
        CommandActionDelegate commandActionDelegate;

        public AffectedObjectsWrappingCommandActionDelegate(CommandActionDelegate command) {
            super((Command)command);
            this.commandActionDelegate = command;
        }

        public boolean canExecute() {
            return this.commandActionDelegate.canExecute();
        }

        public Object getImage() {
            return this.commandActionDelegate.getImage();
        }

        public String getText() {
            return this.commandActionDelegate.getText();
        }

        public String getDescription() {
            return this.commandActionDelegate.getDescription();
        }

        public String getToolTipText() {
            return this.commandActionDelegate.getToolTipText();
        }
    }

    protected class DelegatingWrapperItemPropertyDescriptor
    extends ItemPropertyDescriptorDecorator
    implements IItemPropertyDescriptor.OverrideableCommandOwner {
        protected Object commandOwner;

        public DelegatingWrapperItemPropertyDescriptor(Object object, IItemPropertyDescriptor itemPropertyDescriptor) {
            super(object, itemPropertyDescriptor);
        }

        public void setCommandOwner(Object commandOwner) {
            this.commandOwner = commandOwner;
            if (this.itemPropertyDescriptor instanceof IItemPropertyDescriptor.OverrideableCommandOwner) {
                ((IItemPropertyDescriptor.OverrideableCommandOwner)((Object)this.itemPropertyDescriptor)).setCommandOwner(commandOwner);
            }
        }

        public Object getCommandOwner() {
            return this.commandOwner;
        }

        public void resetPropertyValue(Object thisObject) {
            boolean hasCommandOwner;
            boolean bl = hasCommandOwner = this.commandOwner != null;
            if (!hasCommandOwner) {
                this.setCommandOwner(DelegatingWrapperItemProvider.this);
            }
            this.itemPropertyDescriptor.resetPropertyValue(this.object);
            if (!hasCommandOwner) {
                this.setCommandOwner(null);
            }
        }

        public void setPropertyValue(Object thisObject, Object value) {
            boolean hasCommandOwner;
            boolean bl = hasCommandOwner = this.commandOwner != null;
            if (!hasCommandOwner) {
                this.setCommandOwner(DelegatingWrapperItemProvider.this);
            }
            this.itemPropertyDescriptor.setPropertyValue(this.object, value);
            if (!hasCommandOwner) {
                this.setCommandOwner(null);
            }
        }
    }
}

