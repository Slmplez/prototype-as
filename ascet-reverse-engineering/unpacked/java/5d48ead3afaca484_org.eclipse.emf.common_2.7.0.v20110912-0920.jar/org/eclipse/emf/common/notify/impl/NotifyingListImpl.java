/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.NotifyingList;
import org.eclipse.emf.common.notify.impl.NotificationChainImpl;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.BasicEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NotifyingListImpl<E>
extends BasicEList<E>
implements NotifyingList<E> {
    private static final long serialVersionUID = 1L;

    public NotifyingListImpl() {
    }

    public NotifyingListImpl(int initialCapacity) {
        super(initialCapacity);
    }

    public NotifyingListImpl(Collection<? extends E> collection) {
        super(collection);
    }

    @Override
    public Object getNotifier() {
        return null;
    }

    @Override
    public Object getFeature() {
        return null;
    }

    @Override
    public int getFeatureID() {
        return -1;
    }

    protected int getFeatureID(Class<?> expectedClass) {
        return this.getFeatureID();
    }

    protected boolean isSet() {
        return !this.isEmpty();
    }

    protected boolean hasInverse() {
        return false;
    }

    @Override
    protected boolean canContainNull() {
        return !this.hasInverse();
    }

    protected boolean isNotificationRequired() {
        return false;
    }

    protected boolean hasShadow() {
        return false;
    }

    protected NotificationChain shadowAdd(E object, NotificationChain notifications) {
        return notifications;
    }

    protected NotificationChain shadowRemove(E object, NotificationChain notifications) {
        return notifications;
    }

    protected NotificationChain shadowSet(E oldObject, E newObject, NotificationChain notifications) {
        return notifications;
    }

    protected NotificationChain inverseAdd(E object, NotificationChain notifications) {
        return notifications;
    }

    protected NotificationChain inverseRemove(E object, NotificationChain notifications) {
        return notifications;
    }

    protected NotificationImpl createNotification(int eventType, Object oldObject, Object newObject, int index) {
        throw new UnsupportedOperationException("Please change your code to call new five argument version of this method");
    }

    protected NotificationImpl createNotification(int eventType, Object oldObject, Object newObject, int index, boolean wasSet) {
        return new NotificationImpl(eventType, oldObject, newObject, index, wasSet){

            @Override
            public Object getNotifier() {
                return NotifyingListImpl.this.getNotifier();
            }

            @Override
            public Object getFeature() {
                return NotifyingListImpl.this.getFeature();
            }

            @Override
            public int getFeatureID(Class<?> expectedClass) {
                return NotifyingListImpl.this.getFeatureID(expectedClass);
            }
        };
    }

    protected NotificationChain createNotificationChain(int capacity) {
        return capacity < 100 ? null : new NotificationChainImpl(capacity);
    }

    protected void dispatchNotification(Notification notification) {
        ((Notifier)this.getNotifier()).eNotify(notification);
    }

    @Override
    public void addUnique(E object) {
        if (this.isNotificationRequired()) {
            int index = this.size;
            boolean oldIsSet = this.isSet();
            this.doAddUnique(object);
            NotificationImpl notification = this.createNotification(3, null, object, index, oldIsSet);
            if (this.hasInverse()) {
                NotificationChain notifications = this.inverseAdd(object, null);
                if (this.hasShadow()) {
                    notifications = this.shadowAdd(object, notifications);
                }
                if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else {
                this.dispatchNotification(notification);
            }
        } else {
            NotificationChain notifications;
            this.doAddUnique(object);
            if (this.hasInverse() && (notifications = this.inverseAdd(object, null)) != null) {
                notifications.dispatch();
            }
        }
    }

    protected void doAddUnique(E object) {
        super.addUnique(object);
    }

    @Override
    public void addUnique(int index, E object) {
        if (this.isNotificationRequired()) {
            boolean oldIsSet = this.isSet();
            this.doAddUnique(index, object);
            NotificationImpl notification = this.createNotification(3, null, object, index, oldIsSet);
            if (this.hasInverse()) {
                NotificationChain notifications = this.inverseAdd(object, null);
                if (this.hasShadow()) {
                    notifications = this.shadowAdd(object, notifications);
                }
                if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else {
                this.dispatchNotification(notification);
            }
        } else {
            NotificationChain notifications;
            this.doAddUnique(index, object);
            if (this.hasInverse() && (notifications = this.inverseAdd(object, null)) != null) {
                notifications.dispatch();
            }
        }
    }

    protected void doAddUnique(int index, E object) {
        super.addUnique(index, object);
    }

    @Override
    public boolean addAllUnique(Collection<? extends E> collection) {
        return this.addAllUnique(this.size, collection);
    }

    protected boolean doAddAllUnique(Collection<? extends E> collection) {
        return super.addAllUnique(collection);
    }

    @Override
    public boolean addAllUnique(int index, Collection<? extends E> collection) {
        int collectionSize = collection.size();
        if (collectionSize == 0) {
            return false;
        }
        if (this.isNotificationRequired()) {
            NotificationImpl notification;
            boolean oldIsSet = this.isSet();
            this.doAddAllUnique(index, collection);
            NotificationImpl notificationImpl = notification = collectionSize == 1 ? this.createNotification(3, null, collection.iterator().next(), index, oldIsSet) : this.createNotification(5, null, collection, index, oldIsSet);
            if (this.hasInverse()) {
                NotificationChain notifications = this.createNotificationChain(collectionSize);
                int lastIndex = index + collectionSize;
                int i = index;
                while (i < lastIndex) {
                    Object value = this.data[i];
                    notifications = this.inverseAdd(value, notifications);
                    notifications = this.shadowAdd(value, notifications);
                    ++i;
                }
                if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else {
                this.dispatchNotification(notification);
            }
        } else {
            this.doAddAllUnique(index, collection);
            if (this.hasInverse()) {
                NotificationChain notifications = this.createNotificationChain(collectionSize);
                int lastIndex = index + collectionSize;
                int i = index;
                while (i < lastIndex) {
                    Object object = this.data[i];
                    notifications = this.inverseAdd(object, notifications);
                    ++i;
                }
                if (notifications != null) {
                    notifications.dispatch();
                }
            }
        }
        return true;
    }

    protected boolean doAddAllUnique(int index, Collection<? extends E> collection) {
        return super.addAllUnique(index, collection);
    }

    @Override
    public boolean addAllUnique(Object[] objects, int start, int end) {
        return this.addAllUnique(this.size, objects, start, end);
    }

    protected boolean doAddAllUnique(Object[] objects, int start, int end) {
        return super.addAllUnique(objects, start, end);
    }

    @Override
    public boolean addAllUnique(int index, Object[] objects, int start, int end) {
        int collectionSize = end - start;
        if (collectionSize == 0) {
            return false;
        }
        if (this.isNotificationRequired()) {
            NotificationImpl notification;
            boolean oldIsSet = this.isSet();
            this.doAddAllUnique(index, objects, start, end);
            if (collectionSize == 1) {
                notification = this.createNotification(3, null, objects[0], index, oldIsSet);
            } else if (start != 0 || end != objects.length) {
                Object[] actualObjects = new Object[collectionSize];
                int i = 0;
                int j = start;
                while (j < end) {
                    actualObjects[i] = objects[j];
                    ++i;
                    ++j;
                }
                notification = this.createNotification(5, null, Arrays.asList(actualObjects), index, oldIsSet);
            } else {
                notification = this.createNotification(5, null, Arrays.asList(objects), index, oldIsSet);
            }
            if (this.hasInverse()) {
                NotificationChain notifications = this.createNotificationChain(collectionSize);
                int lastIndex = index + collectionSize;
                int i = index;
                while (i < lastIndex) {
                    Object value = this.data[i];
                    notifications = this.inverseAdd(value, notifications);
                    notifications = this.shadowAdd(value, notifications);
                    ++i;
                }
                if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else {
                this.dispatchNotification(notification);
            }
        } else {
            this.doAddAllUnique(index, objects, start, end);
            if (this.hasInverse()) {
                NotificationChain notifications = this.createNotificationChain(collectionSize);
                int lastIndex = index + collectionSize;
                int i = index;
                while (i < lastIndex) {
                    Object object = this.data[i];
                    notifications = this.inverseAdd(object, notifications);
                    ++i;
                }
                if (notifications != null) {
                    notifications.dispatch();
                }
            }
        }
        return true;
    }

    protected boolean doAddAllUnique(int index, Object[] objects, int start, int end) {
        return super.addAllUnique(index, objects, start, end);
    }

    public NotificationChain basicAdd(E object, NotificationChain notifications) {
        if (this.isNotificationRequired()) {
            int index = this.size;
            boolean oldIsSet = this.isSet();
            this.doAddUnique(index, object);
            NotificationImpl notification = this.createNotification(3, null, object, index, oldIsSet);
            if (notifications == null) {
                notifications = notification;
            } else {
                notifications.add(notification);
            }
        } else {
            this.doAddUnique(this.size, object);
        }
        return notifications;
    }

    @Override
    public E remove(int index) {
        NotificationChain notifications;
        if (this.isNotificationRequired()) {
            NotificationChain notifications2 = null;
            boolean oldIsSet = this.isSet();
            if (this.hasShadow()) {
                notifications2 = this.shadowRemove(this.basicGet(index), null);
            }
            E oldObject = this.doRemove(index);
            NotificationImpl notification = this.createNotification(4, oldObject, null, index, oldIsSet);
            if (this.hasInverse() && oldObject != null) {
                if ((notifications2 = this.inverseRemove(oldObject, notifications2)) == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications2.add(notification);
                    notifications2.dispatch();
                }
            } else if (notifications2 == null) {
                this.dispatchNotification(notification);
            } else {
                notifications2.add(notification);
                notifications2.dispatch();
            }
            return oldObject;
        }
        E oldObject = this.doRemove(index);
        if (this.hasInverse() && oldObject != null && (notifications = this.inverseRemove(oldObject, null)) != null) {
            notifications.dispatch();
        }
        return oldObject;
    }

    protected E doRemove(int index) {
        return super.remove(index);
    }

    @Override
    public boolean removeAll(Collection<?> collection) {
        int[] positions;
        boolean result;
        boolean oldIsSet;
        block31: {
            block30: {
                oldIsSet = this.isSet();
                result = false;
                positions = null;
                if (!this.isNotificationRequired()) break block30;
                int listSize = collection.size();
                if (listSize <= 0) break block31;
                NotificationChain notifications = this.createNotificationChain(listSize);
                BasicEList<Object> list = new BasicEList<Object>(collection);
                Object[] objects = list.data();
                positions = new int[listSize];
                int count = 0;
                if (this.isUnique()) {
                    int i = 0;
                    while (i < this.size) {
                        Object initialObject;
                        Object object = initialObject = this.data[i];
                        int repeat = 0;
                        block1: while (repeat < 2) {
                            int j = listSize;
                            while (--j >= 0) {
                                if (!this.equalObjects(object, objects[j])) continue;
                                if (count != j) {
                                    Object x = objects[count];
                                    objects[count] = objects[j];
                                    objects[j] = x;
                                }
                                positions[count++] = i;
                                break block1;
                            }
                            if ((object = this.resolve(object)) == initialObject) break;
                            ++repeat;
                        }
                        ++i;
                    }
                } else {
                    BasicEList<Object> resultList = new BasicEList<Object>(listSize);
                    int i = 0;
                    while (i < this.size) {
                        Object initialObject;
                        Object object = initialObject = this.data[i];
                        int repeat = 0;
                        block4: while (repeat < 2) {
                            int j = listSize;
                            while (--j >= 0) {
                                if (!this.equalObjects(object, objects[j])) continue;
                                if (positions.length <= count) {
                                    int[] oldPositions = positions;
                                    positions = new int[2 * positions.length];
                                    System.arraycopy(oldPositions, 0, positions, 0, count);
                                }
                                positions[count++] = i;
                                resultList.add(objects[j]);
                                break block4;
                            }
                            if ((object = this.resolve(object)) == initialObject) break;
                            ++repeat;
                        }
                        ++i;
                    }
                    list = resultList;
                    objects = resultList.data();
                    listSize = count;
                    if (count > positions.length) {
                        int[] oldPositions = positions;
                        positions = new int[count];
                        System.arraycopy(oldPositions, 0, positions, 0, count);
                    }
                }
                if (count <= 0) break block31;
                result = true;
                if (this.hasShadow()) {
                    int i = 0;
                    while (i < count) {
                        Object object = objects[i];
                        notifications = this.shadowRemove(object, notifications);
                        ++i;
                    }
                }
                int i = count;
                while (--i >= 0) {
                    this.doRemove(positions[i]);
                }
                if (count != listSize) {
                    i = listSize;
                    while (--i >= count) {
                        list.remove(i);
                    }
                    int[] oldPositions = positions;
                    positions = new int[count];
                    System.arraycopy(oldPositions, 0, positions, 0, count);
                }
                collection = list;
                break block31;
            }
            collection = this.getDuplicates(collection);
            int i = this.size;
            while (--i >= 0) {
                if (!collection.contains(this.data[i])) continue;
                this.doRemove(i);
                result = true;
            }
        }
        if (result) {
            if (positions != null) {
                int collectionSize = collection.size();
                NotificationImpl notification = collectionSize == 1 ? this.createNotification(4, collection.iterator().next(), null, positions[0], oldIsSet) : this.createNotification(6, collection, positions, positions[0], oldIsSet);
                NotificationChain notifications = this.createNotificationChain(collectionSize);
                if (this.hasInverse()) {
                    for (Object object : collection) {
                        notifications = this.inverseRemove(object, notifications);
                    }
                    if (notifications == null) {
                        this.dispatchNotification(notification);
                    } else {
                        notifications.add(notification);
                        notifications.dispatch();
                    }
                } else if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else if (this.hasInverse()) {
                NotificationChain notifications = this.createNotificationChain(collection.size());
                for (Object object : collection) {
                    notifications = this.inverseRemove(object, notifications);
                }
                if (notifications != null) {
                    notifications.dispatch();
                }
            }
            return true;
        }
        return false;
    }

    protected E resolve(E object) {
        return object;
    }

    protected boolean doRemoveAll(Collection<?> collection) {
        return super.removeAll(collection);
    }

    public NotificationChain basicRemove(Object object, NotificationChain notifications) {
        int index = this.indexOf(object);
        if (index != -1) {
            if (this.isNotificationRequired()) {
                boolean oldIsSet = this.isSet();
                E oldObject = this.doRemove(index);
                NotificationImpl notification = this.createNotification(4, oldObject, null, index, oldIsSet);
                if (notifications == null) {
                    notifications = notification;
                } else {
                    notifications.add(notification);
                }
            } else {
                this.doRemove(index);
            }
        }
        return notifications;
    }

    @Override
    public void clear() {
        if (this.isNotificationRequired()) {
            boolean oldIsSet = this.isSet();
            if (this.size > 0) {
                NotificationImpl notification;
                BasicEList.UnmodifiableEList collection = new BasicEList.UnmodifiableEList(this.size, this.data);
                int collectionSize = this.size;
                NotificationChain notifications = this.createNotificationChain(collectionSize);
                if (this.hasShadow()) {
                    int i = 0;
                    while (i < this.size) {
                        Object object = this.data[i];
                        notifications = this.shadowRemove(object, notifications);
                        ++i;
                    }
                }
                this.doClear();
                NotificationImpl notificationImpl = notification = collectionSize == 1 ? this.createNotification(4, collection.get(0), null, 0, oldIsSet) : this.createNotification(6, collection, null, -1, oldIsSet);
                if (this.hasInverse()) {
                    Iterator i = collection.iterator();
                    while (i.hasNext()) {
                        notifications = this.inverseRemove(i.next(), notifications);
                    }
                    if (notifications == null) {
                        this.dispatchNotification(notification);
                    } else {
                        notifications.add(notification);
                        notifications.dispatch();
                    }
                } else if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else {
                this.doClear();
                this.dispatchNotification(this.createNotification(6, Collections.EMPTY_LIST, null, -1, oldIsSet));
            }
        } else if (this.hasInverse()) {
            if (this.size > 0) {
                Object[] oldData = this.data;
                int oldSize = this.size;
                this.doClear();
                NotificationChain notifications = this.createNotificationChain(oldSize);
                int i = 0;
                while (i < oldSize) {
                    Object object = oldData[i];
                    notifications = this.inverseRemove(object, notifications);
                    ++i;
                }
                if (notifications != null) {
                    notifications.dispatch();
                }
            } else {
                this.doClear();
            }
        } else {
            this.doClear();
        }
    }

    protected void doClear() {
        super.clear();
    }

    @Override
    public E setUnique(int index, E object) {
        if (this.isNotificationRequired()) {
            NotificationChain notifications = null;
            boolean oldIsSet = this.isSet();
            E oldObject = this.doSetUnique(index, object);
            NotificationImpl notification = this.createNotification(1, oldObject, object, index, oldIsSet);
            if (this.hasInverse() && !this.equalObjects(oldObject, object)) {
                if (oldObject != null) {
                    notifications = this.inverseRemove(oldObject, notifications);
                }
                notifications = this.inverseAdd(object, notifications);
                if (this.hasShadow()) {
                    notifications = this.shadowSet(oldObject, object, notifications);
                }
                if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            } else {
                if (this.hasShadow()) {
                    notifications = this.shadowSet(oldObject, object, notifications);
                }
                if (notifications == null) {
                    this.dispatchNotification(notification);
                } else {
                    notifications.add(notification);
                    notifications.dispatch();
                }
            }
            return oldObject;
        }
        E oldObject = this.doSetUnique(index, object);
        if (this.hasInverse() && !this.equalObjects(oldObject, object)) {
            NotificationChain notifications = null;
            if (oldObject != null) {
                notifications = this.inverseRemove(oldObject, null);
            }
            if ((notifications = this.inverseAdd(object, notifications)) != null) {
                notifications.dispatch();
            }
        }
        return oldObject;
    }

    protected E doSetUnique(int index, E object) {
        return super.setUnique(index, object);
    }

    public NotificationChain basicSet(int index, E object, NotificationChain notifications) {
        if (this.isNotificationRequired()) {
            boolean oldIsSet = this.isSet();
            NotificationImpl notification = this.createNotification(1, this.doSetUnique(index, object), object, index, oldIsSet);
            if (notifications == null) {
                notifications = notification;
            } else {
                notifications.add(notification);
            }
        } else {
            this.doSetUnique(index, object);
        }
        return notifications;
    }

    @Override
    public E move(int targetIndex, int sourceIndex) {
        if (this.isNotificationRequired()) {
            boolean oldIsSet = this.isSet();
            E object = this.doMove(targetIndex, sourceIndex);
            this.dispatchNotification(this.createNotification(7, sourceIndex, object, targetIndex, oldIsSet));
            return object;
        }
        return this.doMove(targetIndex, sourceIndex);
    }

    protected E doMove(int targetIndex, int sourceIndex) {
        return super.move(targetIndex, sourceIndex);
    }
}

