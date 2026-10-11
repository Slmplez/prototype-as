/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.command.UnexecutableCommand
 *  org.eclipse.emf.common.notify.AdapterFactory
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationChainImpl
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.notify.impl.NotifyingListImpl
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.edit.provider;

import java.util.Collection;
import java.util.Collections;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.command.UnexecutableCommand;
import org.eclipse.emf.common.notify.AdapterFactory;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationChainImpl;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.notify.impl.NotifyingListImpl;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;
import org.eclipse.emf.edit.provider.ChangeNotifier;
import org.eclipse.emf.edit.provider.IChangeNotifier;
import org.eclipse.emf.edit.provider.IDisposable;
import org.eclipse.emf.edit.provider.IItemColorProvider;
import org.eclipse.emf.edit.provider.IItemFontProvider;
import org.eclipse.emf.edit.provider.IItemLabelProvider;
import org.eclipse.emf.edit.provider.INotifyChangedListener;
import org.eclipse.emf.edit.provider.IStructuredItemContentProvider;
import org.eclipse.emf.edit.provider.ITreeItemContentProvider;
import org.eclipse.emf.edit.provider.IUpdateableItemParent;
import org.eclipse.emf.edit.provider.IViewerNotification;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ItemProvider
implements IChangeNotifier,
IDisposable,
IItemLabelProvider,
IItemColorProvider,
IItemFontProvider,
IStructuredItemContentProvider,
ITreeItemContentProvider,
IUpdateableItemParent {
    protected String text;
    protected Object image;
    protected Object font;
    protected Object foreground;
    protected Object background;
    protected Object parent;
    protected ItemProviderNotifyingArrayList<Object> children;
    protected AdapterFactory adapterFactory;
    protected IChangeNotifier changeNotifier;

    public ItemProvider() {
        this.text = "";
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(Collection<?> children) {
        this.text = "";
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(String text) {
        this.text = text;
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(String text, Collection<?> children) {
        this.text = text;
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(String text, Object image) {
        this.text = text;
        this.image = image;
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(String text, Object image, Collection<?> children) {
        this.text = text;
        this.image = image;
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(String text, Object image, Object parent) {
        this.text = text;
        this.image = image;
        this.parent = parent;
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(String text, Object image, Object parent, Collection<?> children) {
        this.text = text;
        this.image = image;
        this.parent = parent;
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(AdapterFactory adapterFactory) {
        this.adapterFactory = adapterFactory;
        this.text = "";
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(AdapterFactory adapterFactory, String text) {
        this.adapterFactory = adapterFactory;
        this.text = text;
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(AdapterFactory adapterFactory, String text, Object image) {
        this.adapterFactory = adapterFactory;
        this.text = text;
        this.image = image;
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(AdapterFactory adapterFactory, String text, Object image, Object parent) {
        this.adapterFactory = adapterFactory;
        this.text = text;
        this.image = image;
        this.parent = parent;
        this.children = new ItemProviderNotifyingArrayList();
    }

    public ItemProvider(AdapterFactory adapterFactory, Collection<?> children) {
        this.adapterFactory = adapterFactory;
        this.text = "";
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(AdapterFactory adapterFactory, String text, Collection<?> children) {
        this.adapterFactory = adapterFactory;
        this.text = text;
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(AdapterFactory adapterFactory, String text, Object image, Collection<?> children) {
        this.adapterFactory = adapterFactory;
        this.text = text;
        this.image = image;
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public ItemProvider(AdapterFactory adapterFactory, String text, Object image, Object parent, Collection<?> children) {
        this.adapterFactory = adapterFactory;
        this.text = text;
        this.image = image;
        this.parent = parent;
        this.children = new ItemProviderNotifyingArrayList(children);
    }

    public AdapterFactory getAdapterFactory() {
        return this.adapterFactory;
    }

    public void setAdapterFactory(AdapterFactory adapterFactory) {
        this.adapterFactory = adapterFactory;
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
        if (this.changeNotifier != null) {
            this.changeNotifier.fireNotifyChanged(notification);
        }
        if (this.adapterFactory instanceof IChangeNotifier) {
            ((IChangeNotifier)this.adapterFactory).fireNotifyChanged(notification);
        }
    }

    @Override
    public Collection<?> getElements(Object object) {
        return this.getChildren(object);
    }

    public EList<Object> getElements() {
        return this.getChildren();
    }

    @Override
    public Collection<?> getChildren(Object object) {
        return this.children;
    }

    public EList<Object> getChildren() {
        return this.children;
    }

    @Override
    public boolean hasChildren(Object object) {
        return !this.children.isEmpty();
    }

    public boolean hasChildren() {
        return this.hasChildren(this);
    }

    @Override
    public Object getParent(Object object) {
        return this.parent;
    }

    public Object getParent() {
        return this.getParent(this);
    }

    @Override
    public void setParent(Object object, Object parent) {
        this.parent = parent;
    }

    public void setParent(Object parent) {
        this.setParent(this, parent);
    }

    @Override
    public Object getImage(Object object) {
        return this.image;
    }

    public Object getImage() {
        return this.getImage(this);
    }

    public void setImage(Object object, Object image) {
        this.image = image;
        this.fireNotifyChanged(new ItemProviderNotification(1, null, image, -1, false, false, true));
    }

    public void setImage(Object image) {
        this.setImage(this, image);
    }

    @Override
    public String getText(Object object) {
        return this.text;
    }

    public String getText() {
        return this.getText(this);
    }

    public String getUpdateableText(Object object) {
        return this.getText(object);
    }

    public void setText(Object object, String text) {
        this.text = text;
        this.fireNotifyChanged(new ItemProviderNotification(1, null, text, -1, false, false, true));
    }

    public void setText(String text) {
        this.setText(this, text);
    }

    @Override
    public Object getFont(Object object) {
        return this.font;
    }

    public Object getFont() {
        return this.getFont(this);
    }

    public void setFont(Object object, Object font) {
        this.font = font;
        this.fireNotifyChanged(new ItemProviderNotification(1, null, font, -1, false, false, true));
    }

    public void setFont(Object font) {
        this.setFont(this, font);
    }

    @Override
    public Object getForeground(Object object) {
        return this.foreground;
    }

    public Object getForeground() {
        return this.getForeground(this);
    }

    public void setForeground(Object object, Object foreground) {
        this.foreground = foreground;
        this.fireNotifyChanged(new ItemProviderNotification(1, null, foreground, -1, false, false, true));
    }

    public void setForeground(Object foreground) {
        this.setForeground(this, foreground);
    }

    @Override
    public Object getBackground(Object object) {
        return this.background;
    }

    public Object getBackground() {
        return this.getBackground(this);
    }

    public void setBackground(Object object, Object background) {
        this.background = background;
        this.fireNotifyChanged(new ItemProviderNotification(1, null, background, -1, false, false, true));
    }

    public void setBackground(Object background) {
        this.setBackground(this, background);
    }

    public String toString() {
        return String.valueOf(super.toString()) + "[text=\"" + this.text + "\"]";
    }

    @Override
    public void dispose() {
    }

    public Collection<CommandParameter> getNewChildDescriptors(Object object, EditingDomain editingDomain, Object sibling) {
        return Collections.emptyList();
    }

    public Command createCommand(Object object, EditingDomain editingDomain, Class<? extends Command> commandClass, CommandParameter commandParameter) {
        return UnexecutableCommand.INSTANCE;
    }

    public class ItemProviderNotification
    extends NotificationImpl
    implements IViewerNotification {
        protected boolean isContentRefresh;
        protected boolean isLabelUpdate;

        public ItemProviderNotification(int eventType, Object oldValue, Object newValue, int position) {
            this(eventType, oldValue, newValue, position, false);
        }

        public ItemProviderNotification(int eventType, Object oldValue, Object newValue, int position, boolean wasSet) {
            this(eventType, oldValue, newValue, position, wasSet, true, true);
        }

        public ItemProviderNotification(int eventType, Object oldValue, Object newValue, int position, boolean wasSet, boolean isContentRefesh, boolean isLabelUpdate) {
            super(eventType, oldValue, newValue, position, wasSet);
            this.isContentRefresh = isContentRefesh;
            this.isLabelUpdate = isLabelUpdate;
        }

        public Object getNotifier() {
            return ItemProvider.this;
        }

        public void dispatch() {
            Object notifier = this.getNotifier();
            if (notifier != null && this.getEventType() != -1) {
                ((IChangeNotifier)notifier).fireNotifyChanged(this);
            }
            if (this.next != null) {
                this.next.dispatch();
            }
        }

        public Object getElement() {
            return this.getNotifier();
        }

        public boolean isContentRefresh() {
            return this.isContentRefresh;
        }

        public boolean isLabelUpdate() {
            return this.isContentRefresh;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public class ItemProviderNotifyingArrayList<E>
    extends NotifyingListImpl<E> {
        private static final long serialVersionUID = 1L;

        public ItemProviderNotifyingArrayList() {
        }

        public ItemProviderNotifyingArrayList(int initialCapacity) {
            super(initialCapacity);
        }

        protected boolean isNotificationRequired() {
            return true;
        }

        protected boolean hasInverse() {
            return true;
        }

        public ItemProviderNotifyingArrayList(Collection<? extends E> collection) {
            this.addAll(collection);
        }

        protected void dispatchNotification(Notification notification) {
            ((IChangeNotifier)notification.getNotifier()).fireNotifyChanged(notification);
        }

        protected NotificationImpl createNotification(int eventType, Object oldObject, Object newObject, int index, boolean wasSet) {
            return new ItemProviderNotification(eventType, oldObject, newObject, index, wasSet, true, false);
        }

        protected NotificationChain createNotificationChain(int capacity) {
            return new NotificationChainImpl(capacity){
                private static final long serialVersionUID = 1L;

                protected void dispatch(Notification notification) {
                    ItemProviderNotifyingArrayList.this.dispatchNotification(notification);
                }
            };
        }

        protected NotificationChain inverseAdd(Object object, NotificationChain notifications) {
            Object adapter = object;
            if (ItemProvider.this.adapterFactory != null) {
                adapter = ItemProvider.this.adapterFactory.adapt(object, IUpdateableItemParent.class);
            }
            if (adapter instanceof IUpdateableItemParent) {
                ((IUpdateableItemParent)adapter).setParent(object, ItemProvider.this);
            }
            return notifications;
        }

        protected NotificationChain inverseRemove(Object object, NotificationChain notifications) {
            Object adapter = object;
            if (ItemProvider.this.adapterFactory != null) {
                adapter = ItemProvider.this.adapterFactory.adapt(object, IUpdateableItemParent.class);
            }
            if (adapter instanceof IUpdateableItemParent) {
                ((IUpdateableItemParent)adapter).setParent(object, null);
            }
            return notifications;
        }
    }
}

