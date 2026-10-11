/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Adapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.ECollections;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicNotifierImpl
implements Notifier {
    @Override
    public EList<Adapter> eAdapters() {
        return ECollections.emptyEList();
    }

    protected BasicEList<Adapter> eBasicAdapters() {
        return null;
    }

    protected Adapter[] eBasicAdapterArray() {
        BasicEList<Adapter> eBasicAdapters = this.eBasicAdapters();
        return eBasicAdapters == null ? null : (Adapter[])eBasicAdapters.data();
    }

    protected boolean eBasicHasAdapters() {
        BasicEList<Adapter> eBasicAdapters = this.eBasicAdapters();
        return eBasicAdapters != null && eBasicAdapters.size() != 0;
    }

    @Override
    public boolean eDeliver() {
        return false;
    }

    @Override
    public void eSetDeliver(boolean deliver) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void eNotify(Notification notification) {
        Adapter[] eAdapters = this.eBasicAdapterArray();
        if (eAdapters != null && this.eDeliver()) {
            int i = 0;
            int size = eAdapters.length;
            while (i < size) {
                eAdapters[i].notifyChanged(notification);
                ++i;
            }
        }
    }

    public boolean eNotificationRequired() {
        return this.eBasicHasAdapters() && this.eDeliver();
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class EAdapterList<E>
    extends BasicEList<E>
    implements EObservableAdapterList {
        private static final long serialVersionUID = 1L;
        protected Notifier notifier;
        protected EObservableAdapterList.Listener[] listeners;
        protected boolean safe;

        public EAdapterList(Notifier notifier) {
            this.notifier = notifier;
        }

        @Override
        protected boolean canContainNull() {
            return false;
        }

        @Override
        protected boolean useEquals() {
            return false;
        }

        @Override
        protected Object[] newData(int capacity) {
            return new Adapter[capacity];
        }

        @Override
        protected void didAdd(int index, E newObject) {
            if (this.listeners != null) {
                EObservableAdapterList.Listener[] listenerArray = this.listeners;
                int n = this.listeners.length;
                int n2 = 0;
                while (n2 < n) {
                    EObservableAdapterList.Listener listener = listenerArray[n2];
                    listener.added(this.notifier, (Adapter)newObject);
                    ++n2;
                }
            }
            ((Adapter)newObject).setTarget(this.notifier);
        }

        @Override
        protected void didRemove(int index, E oldObject) {
            if (this.listeners != null) {
                EObservableAdapterList.Listener[] listenerArray = this.listeners;
                int n = this.listeners.length;
                int n2 = 0;
                while (n2 < n) {
                    EObservableAdapterList.Listener listener = listenerArray[n2];
                    listener.removed(this.notifier, (Adapter)oldObject);
                    ++n2;
                }
            }
            E adapter = oldObject;
            if (this.notifier.eDeliver()) {
                NotificationImpl notification = new NotificationImpl(8, oldObject, null, index){

                    public Object getNotifier() {
                        return EAdapterList.this.notifier;
                    }
                };
                ((Adapter)adapter).notifyChanged(notification);
            }
            if (adapter instanceof Adapter.Internal) {
                ((Adapter.Internal)adapter).unsetTarget(this.notifier);
            } else if (((Adapter)adapter).getTarget() == this.notifier) {
                ((Adapter)adapter).setTarget(null);
            }
        }

        @Override
        public Object[] data() {
            this.safe = true;
            if (this.data != null && this.data.length != this.size) {
                if (this.size == 0) {
                    this.data = null;
                } else {
                    Object[] oldData = this.data;
                    this.data = this.newData(this.size);
                    System.arraycopy(oldData, 0, this.data, 0, this.size);
                }
            }
            return this.data;
        }

        protected void ensureSafety() {
            if (this.safe && this.data != null) {
                Object[] oldData = this.data;
                this.data = this.newData(this.data.length);
                System.arraycopy(oldData, 0, this.data, 0, this.size);
                this.safe = false;
            }
        }

        @Override
        public boolean add(E object) {
            this.ensureSafety();
            return super.add(object);
        }

        @Override
        public void add(int index, E object) {
            this.ensureSafety();
            super.add(index, object);
        }

        @Override
        public boolean addAll(Collection<? extends E> collection) {
            this.ensureSafety();
            return super.addAll(collection);
        }

        @Override
        public boolean remove(Object object) {
            this.ensureSafety();
            return super.remove(object);
        }

        @Override
        public E remove(int index) {
            this.ensureSafety();
            return super.remove(index);
        }

        @Override
        public boolean removeAll(Collection<?> collection) {
            this.ensureSafety();
            return super.removeAll(collection);
        }

        @Override
        public void clear() {
            this.ensureSafety();
            super.clear();
        }

        @Override
        public boolean retainAll(Collection<?> collection) {
            this.ensureSafety();
            return super.retainAll(collection);
        }

        @Override
        public E set(int index, E object) {
            this.ensureSafety();
            return super.set(index, object);
        }

        @Override
        public void move(int newPosition, E object) {
            this.ensureSafety();
            super.move(newPosition, object);
        }

        @Override
        public E move(int newPosition, int oldPosition) {
            this.ensureSafety();
            return super.move(newPosition, oldPosition);
        }

        @Override
        public void addListener(EObservableAdapterList.Listener listener) {
            if (this.listeners == null) {
                this.listeners = new EObservableAdapterList.Listener[]{listener};
            } else {
                EObservableAdapterList.Listener[] newListeners = new EObservableAdapterList.Listener[this.listeners.length + 1];
                System.arraycopy(this.listeners, 0, newListeners, 0, this.listeners.length);
                newListeners[this.listeners.length] = listener;
                this.listeners = newListeners;
            }
        }

        @Override
        public void removeListener(EObservableAdapterList.Listener listener) {
            if (this.listeners != null) {
                int i = 0;
                while (i < this.listeners.length) {
                    if (this.listeners[i] == listener) {
                        if (this.listeners.length == 1) {
                            this.listeners = null;
                            break;
                        }
                        EObservableAdapterList.Listener[] newListeners = new EObservableAdapterList.Listener[this.listeners.length - 1];
                        System.arraycopy(this.listeners, 0, newListeners, 0, i);
                        if (i != newListeners.length) {
                            System.arraycopy(this.listeners, i + 1, newListeners, i, newListeners.length - i);
                        }
                        this.listeners = newListeners;
                        break;
                    }
                    ++i;
                }
            }
        }
    }

    public static interface EObservableAdapterList {
        public void addListener(Listener var1);

        public void removeListener(Listener var1);

        public static interface Listener {
            public void added(Notifier var1, Adapter var2);

            public void removed(Notifier var1, Adapter var2);
        }
    }
}

