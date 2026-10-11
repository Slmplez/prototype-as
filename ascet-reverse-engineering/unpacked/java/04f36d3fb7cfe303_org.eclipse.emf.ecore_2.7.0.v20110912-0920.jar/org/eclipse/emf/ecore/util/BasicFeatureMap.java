/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.notify.impl.NotificationImpl
 *  org.eclipse.emf.common.util.AbstractEList
 *  org.eclipse.emf.common.util.AbstractEList$EListIterator
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.EList
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.impl.NotificationImpl;
import org.eclipse.emf.common.util.AbstractEList;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.ETypedElement;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EDataTypeEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.XMLTypeFeatures;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicFeatureMap
extends EDataTypeEList<FeatureMap.Entry>
implements FeatureMap.Internal,
FeatureMap.Internal.Wrapper {
    private static final long serialVersionUID = 1L;
    protected FeatureMap.Internal.Wrapper wrapper = this;
    protected final FeatureMapUtil.Validator featureMapValidator;

    public BasicFeatureMap(InternalEObject owner, int featureID) {
        super(FeatureMap.Entry.Internal.class, owner, featureID);
        this.featureMapValidator = FeatureMapUtil.getValidator(owner.eClass(), this.getEStructuralFeature());
    }

    public BasicFeatureMap(InternalEObject owner, int featureID, EStructuralFeature eStructuralFeature) {
        super(FeatureMap.Entry.Internal.class, owner, featureID);
        this.featureMapValidator = FeatureMapUtil.getValidator(owner.eClass(), eStructuralFeature);
    }

    @Override
    public FeatureMap.Internal.Wrapper getWrapper() {
        return this.wrapper;
    }

    @Override
    public void setWrapper(FeatureMap.Internal.Wrapper wrapper) {
        this.wrapper = wrapper;
    }

    @Override
    public FeatureMap featureMap() {
        return this;
    }

    @Override
    protected Object[] newData(int capacity) {
        return new FeatureMap.Entry.Internal[capacity];
    }

    @Override
    protected FeatureMap.Entry validate(int index, FeatureMap.Entry object) {
        if (this.modCount == 0) {
            return object;
        }
        FeatureMap.Entry result = super.validate(index, object);
        EStructuralFeature eStructuralFeature = object.getEStructuralFeature();
        if (!eStructuralFeature.isChangeable() || !this.featureMapValidator.isValid(eStructuralFeature)) {
            throw new RuntimeException("Invalid entry feature '" + eStructuralFeature.getEContainingClass().getName() + "." + eStructuralFeature.getName() + "'");
        }
        return result;
    }

    protected FeatureMap.Entry createEntry(EStructuralFeature eStructuralFeature, Object value) {
        return FeatureMapUtil.createEntry(eStructuralFeature, value);
    }

    protected FeatureMap.Entry.Internal createRawEntry(EStructuralFeature eStructuralFeature, Object value) {
        return FeatureMapUtil.createRawEntry(eStructuralFeature, value);
    }

    protected NotificationImpl createNotification(int eventType, EStructuralFeature feature, Object oldObject, Object newObject, int index, boolean wasSet) {
        return new FeatureMapUtil.FeatureENotificationImpl(this.owner, eventType, feature, oldObject, newObject, index, wasSet);
    }

    protected boolean isMany(EStructuralFeature feature) {
        return FeatureMapUtil.isMany(this.owner, feature);
    }

    protected boolean hasInverse() {
        return true;
    }

    protected boolean hasShadow() {
        return true;
    }

    protected int entryIndex(EStructuralFeature feature, int index) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        int count = 0;
        int result = this.size;
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                if (index == count) {
                    return i;
                }
                ++count;
                result = i + 1;
            }
            ++i;
        }
        if (index == count) {
            return result;
        }
        throw new IndexOutOfBoundsException("index=" + index + ", size=" + count);
    }

    protected boolean isResolveProxies(EStructuralFeature feature) {
        return feature instanceof EReference && ((EReference)feature).isResolveProxies();
    }

    @Override
    public Object resolveProxy(EStructuralFeature feature, int entryIndex, int index, Object object) {
        EObject resolved = this.resolveProxy((EObject)object);
        if (resolved != object) {
            FeatureMap.Entry oldObject = (FeatureMap.Entry)this.data[entryIndex];
            FeatureMap.Entry entry = this.createEntry(feature, resolved);
            this.assign(entryIndex, this.validate(entryIndex, entry));
            this.didSet(entryIndex, entry, oldObject);
            if (this.isNotificationRequired()) {
                NotificationImpl notifications = this.createNotification(9, entry.getEStructuralFeature(), object, resolved, index, false);
                notifications.add((Notification)this.createNotification(9, oldObject, entry, index, false));
                notifications.dispatch();
            }
            return resolved;
        }
        return object;
    }

    @Override
    protected EObject resolveProxy(EObject eObject) {
        return this.owner.eResolveProxy((InternalEObject)eObject);
    }

    @Override
    public int getModCount() {
        return this.modCount;
    }

    @Override
    public EStructuralFeature getEStructuralFeature(int index) {
        return ((FeatureMap.Entry)this.get(index)).getEStructuralFeature();
    }

    @Override
    public Object getValue(int index) {
        return ((FeatureMap.Entry)this.get(index)).getValue();
    }

    @Override
    public Object setValue(int index, Object value) {
        return this.set(index, this.createEntry(this.getEStructuralFeature(index), value)).getValue();
    }

    public NotificationChain shadowAdd(FeatureMap.Entry object, NotificationChain notifications) {
        return this.shadowAdd((FeatureMap.Entry.Internal)object, notifications);
    }

    public NotificationChain shadowAdd(FeatureMap.Entry.Internal entry, NotificationChain notifications) {
        NotificationImpl notification;
        EStructuralFeature feature = entry.getEStructuralFeature();
        Object value = entry.getValue();
        NotificationImpl notificationImpl = notification = feature.isMany() ? this.createNotification(3, feature, null, value, this.indexOf(feature, value), true) : this.createNotification(1, feature, feature.getDefaultValue(), value, -1, true);
        if (notifications != null) {
            notifications.add((Notification)notification);
        } else {
            notifications = notification;
        }
        return notifications;
    }

    @Override
    public NotificationChain inverseAdd(FeatureMap.Entry object, NotificationChain notifications) {
        return this.inverseAdd((FeatureMap.Entry.Internal)object, notifications);
    }

    @Override
    public NotificationChain inverseAdd(FeatureMap.Entry.Internal entry, NotificationChain notifications) {
        return entry.inverseAdd(this.owner, this.featureID, notifications);
    }

    public NotificationChain shadowRemove(FeatureMap.Entry object, NotificationChain notifications) {
        return this.shadowRemove((FeatureMap.Entry.Internal)object, notifications);
    }

    public NotificationChain shadowRemove(FeatureMap.Entry.Internal entry, NotificationChain notifications) {
        NotificationImpl notification;
        EStructuralFeature feature = entry.getEStructuralFeature();
        Object value = entry.getValue();
        NotificationImpl notificationImpl = feature.isMany() ? this.createNotification(4, feature, value, null, this.indexOf(feature, value), true) : (notification = this.createNotification(feature.isUnsettable() ? 2 : 1, feature, value, feature.getDefaultValue(), -1, true));
        if (notifications != null) {
            notifications.add((Notification)notification);
        } else {
            notifications = notification;
        }
        return notifications;
    }

    @Override
    public NotificationChain inverseRemove(FeatureMap.Entry object, NotificationChain notifications) {
        return this.inverseRemove((FeatureMap.Entry.Internal)object, notifications);
    }

    @Override
    public NotificationChain inverseRemove(FeatureMap.Entry.Internal entry, NotificationChain notifications) {
        return entry.inverseRemove(this.owner, this.featureID, notifications);
    }

    public NotificationChain shadowSet(FeatureMap.Entry oldObject, FeatureMap.Entry newObject, NotificationChain notifications) {
        if (this.isNotificationRequired()) {
            EStructuralFeature feature = oldObject.getEStructuralFeature();
            Object oldValue = oldObject.getValue();
            Object newValue = newObject.getValue();
            NotificationImpl notification = this.createNotification(1, feature, oldValue, newValue, feature.isMany() ? this.indexOf(feature, newValue) : -1, true);
            if (notifications != null) {
                notifications.add((Notification)notification);
            } else {
                notifications = notification;
            }
        }
        return notifications;
    }

    public NotificationChain inverseTouch(Object object, NotificationChain notifications) {
        if (this.isNotificationRequired()) {
            FeatureMap.Entry entry = (FeatureMap.Entry)object;
            EStructuralFeature feature = entry.getEStructuralFeature();
            Object value = entry.getValue();
            NotificationImpl notification = this.createNotification(1, feature, value, value, feature.isMany() ? this.indexOf(feature, value) : -1, true);
            if (notifications != null) {
                notifications.add((Notification)notification);
            } else {
                notifications = notification;
            }
        }
        return notifications;
    }

    public FeatureMap.Entry move(int targetIndex, int sourceIndex) {
        FeatureMap.Entry[] entries;
        FeatureMap.Entry sourceEntry;
        EStructuralFeature feature;
        if (!this.isNotificationRequired()) {
            return (FeatureMap.Entry)this.doMove(targetIndex, sourceIndex);
        }
        if (targetIndex != sourceIndex && this.isMany(feature = (sourceEntry = (entries = (FeatureMap.Entry[])this.data)[sourceIndex]).getEStructuralFeature())) {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            int featureTargetIndex = -1;
            int featureSourceIndex = -1;
            int count = 0;
            int i = 0;
            int maxIndex = targetIndex > sourceIndex ? targetIndex : sourceIndex;
            while (i <= maxIndex) {
                if (i == sourceIndex) {
                    featureSourceIndex = count++;
                } else {
                    FeatureMap.Entry entry = entries[i];
                    boolean isValid = validator.isValid(entry.getEStructuralFeature());
                    if (i == targetIndex) {
                        int n = featureTargetIndex = i == maxIndex && !isValid ? count - 1 : count;
                    }
                    if (isValid) {
                        ++count;
                    }
                }
                ++i;
            }
            FeatureMap.Entry result = (FeatureMap.Entry)super.move(targetIndex, sourceIndex);
            if (featureSourceIndex != featureTargetIndex) {
                this.dispatchNotification((Notification)new ENotificationImpl(this.owner, 7, feature, (Object)featureSourceIndex, sourceEntry.getValue(), featureTargetIndex));
            }
            return result;
        }
        return (FeatureMap.Entry)super.move(targetIndex, sourceIndex);
    }

    public FeatureMap.Entry set(int index, FeatureMap.Entry object) {
        block5: {
            EStructuralFeature entryFeature;
            block4: {
                FeatureMap.Entry entry = object;
                entryFeature = entry.getEStructuralFeature();
                if (!this.isMany(entryFeature)) break block4;
                if (!entryFeature.isUnique()) break block5;
                FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
                int i = 0;
                while (i < this.size) {
                    FeatureMap.Entry otherEntry = entries[i];
                    if (otherEntry.equals(entry) && i != index) {
                        throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
                    }
                    ++i;
                }
                break block5;
            }
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), entryFeature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry otherEntry = entries[i];
                if (validator.isValid(otherEntry.getEStructuralFeature()) && i != index) {
                    throw new IllegalArgumentException("The multiplicity constraint is violated");
                }
                ++i;
            }
        }
        return this.doSet(index, object);
    }

    public FeatureMap.Entry doSet(int index, FeatureMap.Entry object) {
        return (FeatureMap.Entry)super.set(index, (Object)object);
    }

    public boolean add(FeatureMap.Entry object) {
        FeatureMap.Entry entry = object;
        EStructuralFeature entryFeature = entry.getEStructuralFeature();
        if (this.isMany(entryFeature)) {
            if (entryFeature.isUnique() && this.contains(entryFeature, entry.getValue())) {
                return false;
            }
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), entryFeature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry otherEntry = entries[i];
                if (validator.isValid(otherEntry.getEStructuralFeature())) {
                    if (otherEntry.equals(entry)) {
                        return false;
                    }
                    this.doSet(i, object);
                    return true;
                }
                ++i;
            }
        }
        return this.doAdd(object);
    }

    protected boolean doAdd(FeatureMap.Entry object) {
        return super.add((Object)object);
    }

    public void add(int index, FeatureMap.Entry object) {
        FeatureMap.Entry entry = object;
        EStructuralFeature entryFeature = entry.getEStructuralFeature();
        if (this.isMany(entryFeature)) {
            if (entryFeature.isUnique()) {
                FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
                int i = 0;
                while (i < this.size) {
                    FeatureMap.Entry otherEntry = entries[i];
                    if (otherEntry.equals(entry) && i != index) {
                        throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
                    }
                    ++i;
                }
            }
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), entryFeature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry otherEntry = entries[i];
                if (validator.isValid(otherEntry.getEStructuralFeature())) {
                    throw new IllegalArgumentException("The multiplicity constraint is violated");
                }
                ++i;
            }
        }
        this.doAdd(index, object);
    }

    public void doAdd(int index, FeatureMap.Entry object) {
        super.add(index, (Object)object);
    }

    public boolean addAll(Collection<? extends FeatureMap.Entry> collection) {
        BasicEList uniqueCollection = new BasicEList(collection.size());
        for (FeatureMap.Entry entry : collection) {
            EStructuralFeature entryFeature = entry.getEStructuralFeature();
            if (this.isMany(entryFeature)) {
                if (entryFeature.isUnique() && (this.contains(entryFeature, entry.getValue()) || uniqueCollection.contains(entry))) continue;
                uniqueCollection.add(entry);
                continue;
            }
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), entryFeature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            boolean include = true;
            int j = 0;
            while (j < this.size) {
                FeatureMap.Entry otherEntry = entries[j];
                if (validator.isValid(otherEntry.getEStructuralFeature())) {
                    this.doSet(j, entry);
                    include = false;
                    break;
                }
                ++j;
            }
            if (!include) continue;
            uniqueCollection.add(entry);
        }
        return this.doAddAll((Collection<? extends FeatureMap.Entry>)uniqueCollection);
    }

    public boolean doAddAll(Collection<? extends FeatureMap.Entry> collection) {
        return super.addAll(collection);
    }

    public boolean addAll(int index, Collection<? extends FeatureMap.Entry> collection) {
        BasicEList uniqueCollection = new BasicEList(collection.size());
        for (FeatureMap.Entry entry : collection) {
            EStructuralFeature entryFeature = entry.getEStructuralFeature();
            if (this.isMany(entryFeature)) {
                if (entryFeature.isUnique() && (this.contains(entryFeature, entry.getValue()) || uniqueCollection.contains(entry))) continue;
                uniqueCollection.add(entry);
                continue;
            }
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), entryFeature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            boolean include = true;
            int j = 0;
            while (j < this.size) {
                FeatureMap.Entry otherEntry = entries[j];
                if (validator.isValid(otherEntry.getEStructuralFeature())) {
                    this.doSet(j, entry);
                    include = false;
                    break;
                }
                ++j;
            }
            if (!include) continue;
            uniqueCollection.add(entry);
        }
        return this.doAddAll(index, (Collection<? extends FeatureMap.Entry>)uniqueCollection);
    }

    public boolean doAddAll(int index, Collection<? extends FeatureMap.Entry> collection) {
        return super.addAll(index, collection);
    }

    @Override
    public int size(EStructuralFeature feature) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        int result = 0;
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                ++result;
            }
            ++i;
        }
        return result;
    }

    @Override
    public boolean isEmpty(EStructuralFeature feature) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                return false;
            }
            ++i;
        }
        return true;
    }

    @Override
    public boolean contains(EStructuralFeature feature, Object object) {
        return this.contains(feature, object, this.isResolveProxies(feature));
    }

    @Override
    public boolean basicContains(EStructuralFeature feature, Object object) {
        return this.contains(feature, object, false);
    }

    protected boolean contains(EStructuralFeature feature, Object object, boolean resolve) {
        block9: {
            FeatureMap.Entry[] entries;
            FeatureMapUtil.Validator validator;
            block10: {
                FeatureMap.Entry entry;
                block8: {
                    validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
                    entries = (FeatureMap.Entry[])this.data;
                    if (!FeatureMapUtil.isFeatureMap(feature)) break block8;
                    int i = 0;
                    while (i < this.size) {
                        FeatureMap.Entry entry2 = entries[i];
                        if (validator.isValid(entry2.getEStructuralFeature()) && entry2.equals(object)) {
                            return true;
                        }
                        ++i;
                    }
                    break block9;
                }
                if (object == null) break block10;
                int i = 0;
                while (i < this.size) {
                    entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature()) && object.equals(entry.getValue())) {
                        return true;
                    }
                    ++i;
                }
                if (!resolve) break block9;
                i = 0;
                while (i < this.size) {
                    entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature()) && object == this.resolveProxy((EObject)entry.getValue())) {
                        return true;
                    }
                    ++i;
                }
                break block9;
            }
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature()) && entry.getValue() == null) {
                    return false;
                }
                ++i;
            }
        }
        return false;
    }

    @Override
    public boolean containsAll(EStructuralFeature feature, Collection<?> collection) {
        Iterator<?> i = collection.iterator();
        while (i.hasNext()) {
            if (this.contains(feature, i.next())) continue;
            return false;
        }
        return true;
    }

    @Override
    public boolean basicContainsAll(EStructuralFeature feature, Collection<?> collection) {
        Iterator<?> i = collection.iterator();
        while (i.hasNext()) {
            if (this.basicContains(feature, i.next())) continue;
            return false;
        }
        return true;
    }

    @Override
    public int indexOf(EStructuralFeature feature, Object object) {
        return this.indexOf(feature, object, this.isResolveProxies(feature));
    }

    @Override
    public int basicIndexOf(EStructuralFeature feature, Object object) {
        return this.indexOf(feature, object, false);
    }

    protected int indexOf(EStructuralFeature feature, Object object, boolean resolve) {
        block13: {
            FeatureMap.Entry[] entries;
            int result;
            FeatureMapUtil.Validator validator;
            block14: {
                FeatureMap.Entry entry;
                block12: {
                    validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
                    result = 0;
                    entries = (FeatureMap.Entry[])this.data;
                    if (!FeatureMapUtil.isFeatureMap(feature)) break block12;
                    int i = 0;
                    while (i < this.size) {
                        FeatureMap.Entry entry2 = entries[i];
                        if (validator.isValid(entry2.getEStructuralFeature())) {
                            if (entry2.equals(object)) {
                                return result;
                            }
                            ++result;
                        }
                        ++i;
                    }
                    break block13;
                }
                if (object == null) break block14;
                int i = 0;
                while (i < this.size) {
                    entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature())) {
                        if (object.equals(entry.getValue())) {
                            return result;
                        }
                        ++result;
                    }
                    ++i;
                }
                if (!resolve) break block13;
                result = 0;
                i = 0;
                while (i < this.size) {
                    entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature())) {
                        if (object == this.resolveProxy((EObject)entry.getValue())) {
                            return result;
                        }
                        ++result;
                    }
                    ++i;
                }
                break block13;
            }
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (entry.getValue() == null) {
                        return result;
                    }
                    ++result;
                }
                ++i;
            }
        }
        return -1;
    }

    @Override
    public int lastIndexOf(EStructuralFeature feature, Object object) {
        return this.lastIndexOf(feature, object, this.isResolveProxies(feature));
    }

    @Override
    public int basicLastIndexOf(EStructuralFeature feature, Object object) {
        return this.lastIndexOf(feature, object, false);
    }

    protected int lastIndexOf(EStructuralFeature feature, Object object, boolean resolve) {
        int result;
        block13: {
            FeatureMap.Entry[] entries;
            int count;
            FeatureMapUtil.Validator validator;
            block14: {
                FeatureMap.Entry entry;
                block12: {
                    validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
                    result = -1;
                    count = 0;
                    entries = (FeatureMap.Entry[])this.data;
                    if (!FeatureMapUtil.isFeatureMap(feature)) break block12;
                    int i = 0;
                    while (i < this.size) {
                        FeatureMap.Entry entry2 = entries[i];
                        if (validator.isValid(entry2.getEStructuralFeature())) {
                            if (entry2.equals(object)) {
                                result = count;
                            }
                            ++count;
                        }
                        ++i;
                    }
                    break block13;
                }
                if (object == null) break block14;
                int i = 0;
                while (i < this.size) {
                    entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature())) {
                        if (object.equals(entry.getValue())) {
                            result = count;
                        }
                        ++count;
                    }
                    ++i;
                }
                if (!resolve) break block13;
                result = -1;
                count = 0;
                i = 0;
                while (i < this.size) {
                    entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature())) {
                        if (object == this.resolveProxy((EObject)entry.getValue())) {
                            result = count;
                        }
                        ++count;
                    }
                    ++i;
                }
                break block13;
            }
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (entry.getValue() == null) {
                        result = count;
                    }
                    ++count;
                }
                ++i;
            }
        }
        return result;
    }

    @Override
    public Iterator<Object> iterator(EStructuralFeature feature) {
        return feature instanceof EReference && ((EReference)feature).isResolveProxies() ? new ResolvingFeatureEIterator(feature, this) : new ResolvingFeatureEIterator(feature, this);
    }

    @Override
    public ListIterator<Object> listIterator(EStructuralFeature feature) {
        return feature instanceof EReference && ((EReference)feature).isResolveProxies() ? new ResolvingFeatureEIterator(feature, this) : new ResolvingFeatureEIterator(feature, this);
    }

    @Override
    public ListIterator<Object> listIterator(EStructuralFeature feature, int index) {
        ResolvingFeatureEIterator<Object> result = feature instanceof EReference && ((EReference)feature).isResolveProxies() ? new ResolvingFeatureEIterator<Object>(feature, this) : new ResolvingFeatureEIterator<Object>(feature, this);
        int i = 0;
        while (i < index) {
            result.next();
            ++i;
        }
        return result;
    }

    @Override
    public FeatureMap.ValueListIterator<Object> valueListIterator() {
        return new ValueListIteratorImpl<Object>();
    }

    @Override
    public FeatureMap.ValueListIterator<Object> valueListIterator(int index) {
        return new ValueListIteratorImpl<Object>(index);
    }

    @Override
    public <T> EList<T> list(EStructuralFeature feature) {
        return FeatureMapUtil.isFeatureMap(feature) ? new FeatureMapUtil.FeatureFeatureMap(feature, this) : new FeatureMapUtil.FeatureEList(feature, this);
    }

    @Override
    public EStructuralFeature.Setting setting(EStructuralFeature feature) {
        return this.isMany(feature) ? (EStructuralFeature.Setting)this.list(feature) : new FeatureMapUtil.FeatureValue(feature, this);
    }

    @Override
    public List<Object> basicList(EStructuralFeature feature) {
        return new FeatureMapUtil.FeatureEList.Basic<Object>(feature, this);
    }

    @Override
    public Iterator<Object> basicIterator(EStructuralFeature feature) {
        return new FeatureEIterator<Object>(feature, this);
    }

    @Override
    public ListIterator<Object> basicListIterator(EStructuralFeature feature) {
        return new FeatureEIterator<Object>(feature, this);
    }

    @Override
    public ListIterator<Object> basicListIterator(EStructuralFeature feature, int index) {
        FeatureEIterator<Object> result = new FeatureEIterator<Object>(feature, this);
        int i = 0;
        while (i < index) {
            result.next();
            ++i;
        }
        return result;
    }

    @Override
    public Object[] toArray(EStructuralFeature feature) {
        return this.toArray(feature, this.isResolveProxies(feature));
    }

    @Override
    public Object[] basicToArray(EStructuralFeature feature) {
        return this.toArray(feature, false);
    }

    protected Object[] toArray(EStructuralFeature feature, boolean resolve) {
        BasicEList result = new BasicEList();
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (FeatureMapUtil.isFeatureMap(feature)) {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    result.add(entry);
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    Object value = entry.getValue();
                    result.add(resolve ? this.resolveProxy(feature, i, result.size(), value) : value);
                }
                ++i;
            }
        }
        return result.toArray();
    }

    @Override
    public <T> T[] toArray(EStructuralFeature feature, T[] array) {
        return this.toArray(feature, array, this.isResolveProxies(feature));
    }

    @Override
    public <T> T[] basicToArray(EStructuralFeature feature, T[] array) {
        return this.toArray(feature, array, false);
    }

    protected <T> T[] toArray(EStructuralFeature feature, T[] array, boolean resolve) {
        BasicEList result = new BasicEList();
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (FeatureMapUtil.isFeatureMap(feature)) {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    result.add(entry);
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    Object value = entry.getValue();
                    result.add(resolve ? this.resolveProxy(feature, i, result.size(), value) : value);
                }
                ++i;
            }
        }
        return result.toArray(array);
    }

    @Override
    public void set(EStructuralFeature feature, Object object) {
        if (this.isMany(feature)) {
            EList list = this.list(feature);
            list.clear();
            list.addAll((Collection)object);
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                EStructuralFeature entryFeature = entry.getEStructuralFeature();
                if (validator.isValid(entryFeature)) {
                    if (entryFeature == XMLTypeFeatures.TEXT || entryFeature == XMLTypeFeatures.CDATA) {
                        boolean shouldUnset = this.shouldUnset(feature, object);
                        int index = i++;
                        if (shouldUnset) {
                            this.remove(i);
                        }
                        while (i < this.size) {
                            entry = entries[i];
                            entryFeature = entry.getEStructuralFeature();
                            if (entryFeature == XMLTypeFeatures.TEXT || entryFeature == XMLTypeFeatures.CDATA) {
                                this.remove(i);
                                continue;
                            }
                            ++i;
                        }
                        if (!shouldUnset) {
                            this.doSet(index, this.createEntry(feature, object));
                        }
                    } else if (this.shouldUnset(feature, object)) {
                        this.remove(i);
                    } else {
                        this.doSet(i, FeatureMapUtil.isFeatureMap(feature) ? (FeatureMap.Entry)object : this.createEntry(feature, object));
                    }
                    return;
                }
                ++i;
            }
            if (!this.shouldUnset(feature, object)) {
                this.doAdd(FeatureMapUtil.isFeatureMap(feature) ? (FeatureMap.Entry)object : this.createEntry(feature, object));
            }
        }
    }

    protected boolean shouldUnset(EStructuralFeature feature, Object value) {
        if (feature.isUnsettable()) {
            return false;
        }
        if (feature.getUpperBound() != -2) {
            Object defaultValue = feature.getDefaultValue();
            return defaultValue == null ? value == null : defaultValue.equals(value);
        }
        if (feature.getEContainingClass() == this.owner.eClass()) {
            return value == null;
        }
        return false;
    }

    @Override
    public void add(int index, EStructuralFeature feature, Object object) {
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        if (this.isMany(feature)) {
            if (feature.isUnique() && this.contains(feature, object)) {
                throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
            }
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature()) && (isFeatureMap ? entry.equals(object) : (object == null ? entry.getValue() == null : object.equals(entry.getValue())))) {
                    throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
                }
                ++i;
            }
        }
        this.doAdd(index, isFeatureMap ? (FeatureMap.Entry)object : this.createEntry(feature, object));
    }

    @Override
    public boolean add(EStructuralFeature feature, Object object) {
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        if (this.isMany(feature)) {
            if (feature.isUnique() && this.contains(feature, object)) {
                return false;
            }
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (isFeatureMap ? entry.equals(object) : (object == null ? entry.getValue() == null : object.equals(entry.getValue()))) {
                        return false;
                    }
                    this.doSet(i, isFeatureMap ? (FeatureMap.Entry)object : this.createEntry(feature, object));
                    return true;
                }
                ++i;
            }
        }
        return this.doAdd(isFeatureMap ? (FeatureMap.Entry)object : this.createEntry(feature, object));
    }

    @Override
    public void add(EStructuralFeature feature, int index, Object object) {
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        if (this.isMany(feature)) {
            if (feature.isUnique() && this.contains(feature, object)) {
                throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
            }
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    throw new IllegalArgumentException("The multiplicity constraint is violated");
                }
                ++i;
            }
        }
        this.doAdd(this.entryIndex(feature, index), isFeatureMap ? (FeatureMap.Entry)object : this.createEntry(feature, object));
    }

    @Override
    public boolean addAll(int index, EStructuralFeature feature, Collection<?> collection) {
        BasicEList entryCollection;
        if (collection.size() == 0) {
            return false;
        }
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        BasicEList basicEList = entryCollection = isFeatureMap ? collection : new BasicEList(collection.size());
        if (this.isMany(feature)) {
            if (feature.isUnique()) {
                for (Object object : collection) {
                    FeatureMap.Entry entry;
                    if (this.contains(feature, object) || entryCollection.contains(entry = this.createEntry(feature, object))) continue;
                    entryCollection.add(entry);
                }
            } else if (!isFeatureMap) {
                for (Object object : collection) {
                    FeatureMap.Entry entry = this.createEntry(feature, object);
                    entryCollection.add(entry);
                }
            }
        } else {
            if (collection.size() > 1) {
                throw new IllegalArgumentException("The multiplicity constraint is violated");
            }
            if (isFeatureMap) {
                if (this.contains(feature, collection.iterator().next())) {
                    return false;
                }
            } else {
                FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
                FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
                int i = 0;
                while (i < this.size) {
                    FeatureMap.Entry entry = entries[i];
                    if (validator.isValid(entry.getEStructuralFeature())) {
                        if (collection.contains(entry.getValue())) {
                            return false;
                        }
                        throw new IllegalArgumentException("The multiplicity constraint is violated");
                    }
                    ++i;
                }
                FeatureMap.Entry entry = this.createEntry(feature, collection.iterator().next());
                entryCollection.add(entry);
            }
        }
        return this.doAddAll(index, (Collection<? extends FeatureMap.Entry>)entryCollection);
    }

    @Override
    public boolean addAll(EStructuralFeature feature, Collection<?> collection) {
        BasicEList entryCollection;
        if (collection.size() == 0) {
            return false;
        }
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        BasicEList basicEList = entryCollection = isFeatureMap ? collection : new BasicEList(collection.size());
        if (this.isMany(feature)) {
            if (feature.isUnique()) {
                for (Object object : collection) {
                    FeatureMap.Entry entry;
                    if (this.contains(feature, object) || entryCollection.contains(entry = this.createEntry(feature, object))) continue;
                    entryCollection.add(entry);
                }
            } else if (!isFeatureMap) {
                for (Object object : collection) {
                    FeatureMap.Entry entry = this.createEntry(feature, object);
                    entryCollection.add(entry);
                }
            }
        } else {
            if (collection.size() > 1) {
                throw new IllegalArgumentException("The multiplicity constraint is violated");
            }
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (collection.contains(isFeatureMap ? entry : entry.getValue())) {
                        return false;
                    }
                    for (Object object : collection) {
                        this.doSet(i, isFeatureMap ? (FeatureMap.Entry)object : this.createEntry(feature, object));
                    }
                    return true;
                }
                ++i;
            }
            if (!isFeatureMap) {
                FeatureMap.Entry entry = this.createEntry(feature, collection.iterator().next());
                entryCollection.add(entry);
            }
        }
        return this.doAddAll((Collection<? extends FeatureMap.Entry>)entryCollection);
    }

    @Override
    public boolean addAll(EStructuralFeature feature, int index, Collection<?> collection) {
        BasicEList entryCollection;
        if (collection.size() == 0) {
            return false;
        }
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        BasicEList basicEList = entryCollection = isFeatureMap ? collection : new BasicEList(collection.size());
        if (this.isMany(feature)) {
            if (feature.isUnique()) {
                for (Object object : collection) {
                    if (this.contains(feature, object)) continue;
                    FeatureMap.Entry entry = this.createEntry(feature, object);
                    entryCollection.add(entry);
                }
            } else if (!isFeatureMap) {
                for (Object object : collection) {
                    FeatureMap.Entry entry = this.createEntry(feature, object);
                    entryCollection.add(entry);
                }
            }
        } else {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    throw new IllegalArgumentException("The multiplicity constraint is violated");
                }
                ++i;
            }
            if (collection.size() > 1) {
                throw new IllegalArgumentException("The multiplicity constraint is violated");
            }
            if (!isFeatureMap) {
                FeatureMap.Entry entry = this.createEntry(feature, collection.iterator().next());
                entryCollection.add(entry);
            }
        }
        return this.doAddAll(this.entryIndex(feature, index), (Collection<? extends FeatureMap.Entry>)entryCollection);
    }

    @Override
    public void addUnique(EStructuralFeature feature, Object object) {
        this.modCount = -1;
        this.addUnique(this.createRawEntry(feature, object));
    }

    @Override
    public void addUnique(EStructuralFeature feature, int index, Object object) {
        this.modCount = -1;
        this.addUnique(this.entryIndex(feature, index), this.createRawEntry(feature, object));
    }

    @Override
    public void addUnique(FeatureMap.Entry object) {
        ++this.modCount;
        this.validate(this.size, object);
        this.addUnique((FeatureMap.Entry.Internal)object);
    }

    @Override
    public void addUnique(FeatureMap.Entry.Internal entry) {
        this.modCount = -1;
        if (this.isNotificationRequired()) {
            int index = this.size;
            boolean oldIsSet = this.isSet();
            this.doAddUnique(entry);
            NotificationImpl notification = this.createNotification(3, null, entry, index, oldIsSet);
            if (this.hasInverse()) {
                NotificationChain notifications = this.inverseAdd(entry, (NotificationChain)null);
                if ((notifications = this.shadowAdd(entry, notifications)) == null) {
                    this.dispatchNotification((Notification)notification);
                } else {
                    notifications.add((Notification)notification);
                    notifications.dispatch();
                }
            } else {
                this.dispatchNotification((Notification)notification);
            }
        } else {
            this.doAddUnique(entry);
            NotificationChain notifications = this.inverseAdd(entry, (NotificationChain)null);
            if (notifications != null) {
                notifications.dispatch();
            }
        }
    }

    @Override
    public boolean addAllUnique(Collection<? extends FeatureMap.Entry> collection) {
        this.modCount = -1;
        return super.addAllUnique(collection);
    }

    @Override
    public boolean addAllUnique(FeatureMap.Entry.Internal[] entries, int start, int end) {
        return this.addAllUnique(this.size, entries, start, end);
    }

    @Override
    public boolean addAllUnique(int index, FeatureMap.Entry.Internal[] entries, int start, int end) {
        this.modCount = -1;
        int collectionSize = end - start;
        if (collectionSize == 0) {
            return false;
        }
        if (this.isNotificationRequired()) {
            int i;
            NotificationImpl notification;
            boolean oldIsSet = this.isSet();
            this.doAddAllUnique(index, entries, start, end);
            if (collectionSize == 0) {
                notification = this.createNotification(3, null, entries[0], index, oldIsSet);
            } else if (start != 0 || end != entries.length) {
                Object[] actualObjects = new Object[collectionSize];
                i = 0;
                int j = start;
                while (j < end) {
                    actualObjects[i] = entries[j];
                    ++i;
                    ++j;
                }
                notification = this.createNotification(5, null, actualObjects, index, oldIsSet);
            } else {
                notification = this.createNotification(5, null, entries, index, oldIsSet);
            }
            NotificationChain notifications = null;
            i = start;
            while (i < end) {
                FeatureMap.Entry.Internal value = entries[i];
                notifications = this.inverseAdd(value, notifications);
                notifications = this.shadowAdd(value, notifications);
                ++i;
            }
            if (notifications == null) {
                this.dispatchNotification((Notification)notification);
            } else {
                notifications.add((Notification)notification);
                notifications.dispatch();
            }
        } else {
            this.doAddAllUnique(index, entries, start, end);
            NotificationChain notifications = null;
            int i = start;
            while (i < end) {
                notifications = this.inverseAdd(entries[i], notifications);
                ++i;
            }
            if (notifications != null) {
                notifications.dispatch();
            }
        }
        return true;
    }

    @Override
    public NotificationChain basicAdd(EStructuralFeature feature, Object object, NotificationChain notifications) {
        FeatureMap.Entry entry;
        if (object == null) {
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry2 = entries[i];
                if (entry2.getEStructuralFeature() == feature) {
                    return super.basicRemove((Object)entry2, notifications);
                }
                ++i;
            }
        }
        FeatureMap.Entry entry3 = entry = FeatureMapUtil.isFeatureMap(feature) ? (FeatureMap.Entry)object : this.createEntry(feature, object);
        if (this.isNotificationRequired()) {
            NotificationImpl notification;
            boolean oldIsSet = !this.isEmpty(feature);
            notifications = this.basicAdd(entry, notifications);
            NotificationImpl notificationImpl = notification = feature.isMany() ? this.createNotification(3, feature, null, object, this.indexOf(feature, object), oldIsSet) : this.createNotification(1, feature, feature.getDefaultValue(), object, -1, oldIsSet);
            if (notifications != null) {
                notifications.add((Notification)notification);
            } else {
                notifications = notification;
            }
        } else {
            notifications = this.basicAdd(entry, notifications);
        }
        return notifications;
    }

    @Override
    public boolean remove(EStructuralFeature feature, Object object) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (FeatureMapUtil.isFeatureMap(feature)) {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature()) && entry.equals(object)) {
                    this.remove(i);
                    return true;
                }
                ++i;
            }
        } else if (object != null) {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature()) && object.equals(entry.getValue())) {
                    this.remove(i);
                    return true;
                }
                ++i;
            }
        } else {
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature()) && entry.getValue() == null) {
                    this.remove(i);
                    return true;
                }
                ++i;
            }
        }
        return false;
    }

    @Override
    public Object remove(EStructuralFeature feature, int index) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int count = 0;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                if (count == index) {
                    this.remove(i);
                    return FeatureMapUtil.isFeatureMap(feature) ? entry : entry.getValue();
                }
                ++count;
            }
            ++i;
        }
        throw new IndexOutOfBoundsException("index=" + index + ", size=" + count);
    }

    @Override
    public boolean removeAll(EStructuralFeature feature, Collection<?> collection) {
        if (FeatureMapUtil.isFeatureMap(feature)) {
            return this.removeAll(collection);
        }
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        BasicEList entryCollection = new BasicEList(collection.size());
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = this.size;
        while (--i >= 0) {
            FeatureMap.Entry entry = entries[i];
            if (!validator.isValid(entry.getEStructuralFeature()) || !collection.contains(entry.getValue())) continue;
            entryCollection.add(entry);
        }
        return this.removeAll((Collection)entryCollection);
    }

    @Override
    public NotificationChain basicRemove(EStructuralFeature feature, Object object, NotificationChain notifications) {
        int i;
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        int count = 0;
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        FeatureMap.Entry match = null;
        if (FeatureMapUtil.isFeatureMap(feature)) {
            i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (entry.equals(object)) {
                        match = entry;
                        break;
                    }
                    ++count;
                }
                ++i;
            }
        } else if (object != null) {
            i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (object.equals(entry.getValue())) {
                        match = entry;
                        break;
                    }
                    ++count;
                }
                ++i;
            }
        } else {
            i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (entry.getValue() == null) {
                        match = entry;
                        break;
                    }
                    ++count;
                }
                ++i;
            }
        }
        if (match != null) {
            if (this.isNotificationRequired()) {
                NotificationImpl notification;
                NotificationImpl notificationImpl = feature.isMany() ? this.createNotification(4, feature, object, null, count, true) : (notification = this.createNotification(feature.isUnsettable() ? 2 : 1, feature, object, feature.getDefaultValue(), -1, true));
                if (notifications != null) {
                    notifications.add((Notification)notification);
                } else {
                    notifications = notification;
                }
            }
            notifications = this.basicRemove(match, notifications);
        }
        return notifications;
    }

    @Override
    public boolean retainAll(EStructuralFeature feature, Collection<?> collection) {
        boolean isFeatureMap = FeatureMapUtil.isFeatureMap(feature);
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        BasicEList entryCollection = new BasicEList(collection.size());
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = this.size;
        while (--i >= 0) {
            FeatureMap.Entry entry = entries[i];
            if (!validator.isValid(entry.getEStructuralFeature()) || collection.contains(isFeatureMap ? entry : entry.getValue())) continue;
            entryCollection.add(entry);
        }
        return this.removeAll((Collection)entryCollection);
    }

    @Override
    public void clear(EStructuralFeature feature) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        BasicEList entryCollection = new BasicEList();
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = this.size;
        while (--i >= 0) {
            FeatureMap.Entry entry = entries[i];
            if (!validator.isValid(entry.getEStructuralFeature())) continue;
            entryCollection.add(entry);
        }
        if (!this.removeAll((Collection)entryCollection) && this.owner.eNotificationRequired()) {
            this.dispatchNotification((Notification)(feature.isMany() ? this.createNotification(6, feature, Collections.EMPTY_LIST, null, -1, false) : this.createNotification(feature.isUnsettable() ? 2 : 1, feature, null, null, -1, false)));
        }
    }

    @Override
    public void move(EStructuralFeature feature, int index, Object object) {
        this.move(feature, index, this.indexOf(feature, object));
    }

    @Override
    public Object move(EStructuralFeature feature, int targetIndex, int sourceIndex) {
        if (this.isMany(feature)) {
            FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
            Object result = null;
            int entryTargetIndex = -1;
            int entrySourceIndex = -1;
            int count = 0;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (count == targetIndex) {
                        entryTargetIndex = i;
                    }
                    if (count == sourceIndex) {
                        entrySourceIndex = i;
                        result = entry.getValue();
                    }
                    ++count;
                }
                ++i;
            }
            if (entryTargetIndex == -1) {
                throw new IndexOutOfBoundsException("targetIndex=" + targetIndex + ", size=" + count);
            }
            if (entrySourceIndex == -1) {
                throw new IndexOutOfBoundsException("sourceIndex=" + sourceIndex + ", size=" + count);
            }
            super.move(entryTargetIndex, entrySourceIndex);
            if (this.isNotificationRequired()) {
                this.dispatchNotification((Notification)this.createNotification(7, feature, sourceIndex, result, targetIndex, true));
            }
            return result;
        }
        throw new IllegalArgumentException("The feature must be many-valued to support move");
    }

    @Override
    public Object get(EStructuralFeature feature, boolean resolve) {
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (this.isMany(feature)) {
            return this.list(feature);
        }
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        int count = 0;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            EStructuralFeature entryFeature = entry.getEStructuralFeature();
            if (validator.isValid(entryFeature)) {
                if (FeatureMapUtil.isFeatureMap(feature)) {
                    return entry;
                }
                if (entryFeature == XMLTypeFeatures.TEXT || entryFeature == XMLTypeFeatures.CDATA) {
                    StringBuilder result = new StringBuilder(entry.getValue().toString());
                    while (++i < this.size) {
                        entry = entries[i];
                        entryFeature = entry.getEStructuralFeature();
                        if (entryFeature != XMLTypeFeatures.TEXT && entryFeature != XMLTypeFeatures.CDATA) continue;
                        result.append(entry.getValue().toString());
                    }
                    return EcoreUtil.createFromString((EDataType)feature.getEType(), result.toString());
                }
                Object value = entry.getValue();
                if (value != null && resolve && this.isResolveProxies(feature)) {
                    value = this.resolveProxy(feature, i, count, value);
                }
                return value;
            }
            ++count;
            ++i;
        }
        return feature.getDefaultValue();
    }

    @Override
    public Object get(EStructuralFeature feature, int index, boolean resolve) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (this.isMany(feature)) {
            int count = 0;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (count == index) {
                        if (FeatureMapUtil.isFeatureMap(feature)) {
                            return entry;
                        }
                        Object value = entry.getValue();
                        if (value != null && resolve && this.isResolveProxies(feature)) {
                            value = this.resolveProxy(feature, i, count, value);
                        }
                        return value;
                    }
                    ++count;
                }
                ++i;
            }
            throw new IndexOutOfBoundsException("index=" + index + ", size=" + count);
        }
        int count = 0;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                if (FeatureMapUtil.isFeatureMap(feature)) {
                    return entry;
                }
                Object value = entry.getValue();
                if (value != null && resolve && this.isResolveProxies(feature)) {
                    value = this.resolveProxy(feature, i, count, value);
                }
                return value;
            }
            ++count;
            ++i;
        }
        return feature.getDefaultValue();
    }

    @Override
    public Object set(EStructuralFeature feature, int index, Object object) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (this.isMany(feature)) {
            int currentIndex;
            if (feature.isUnique() && (currentIndex = this.indexOf(feature, object)) >= 0 && currentIndex != index) {
                throw new IllegalArgumentException("The 'no duplicates' constraint is violated");
            }
            int count = 0;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (count == index) {
                        return this.doSet(i, FeatureMapUtil.isFeatureMap(feature) ? (FeatureMap.Entry)object : this.createEntry(feature, object));
                    }
                    ++count;
                }
                ++i;
            }
            throw new IndexOutOfBoundsException("index=" + index + ", size=" + count);
        }
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                return FeatureMapUtil.isFeatureMap(feature) ? entry : entry.getValue();
            }
            ++i;
        }
        return null;
    }

    @Override
    public Object setUnique(EStructuralFeature feature, int index, Object object) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        if (this.isMany(feature)) {
            int count = 0;
            int i = 0;
            while (i < this.size) {
                FeatureMap.Entry entry = entries[i];
                if (validator.isValid(entry.getEStructuralFeature())) {
                    if (count == index) {
                        return this.setUnique(i, FeatureMapUtil.isFeatureMap(feature) ? (FeatureMap.Entry)object : this.createEntry(feature, object));
                    }
                    ++count;
                }
                ++i;
            }
            throw new IndexOutOfBoundsException("index=" + index + ", size=" + count);
        }
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                return this.setUnique(i, FeatureMapUtil.isFeatureMap(feature) ? (FeatureMap.Entry)object : this.createEntry(feature, object));
            }
            ++i;
        }
        return feature.getDefaultValue();
    }

    @Override
    public boolean isSet(EStructuralFeature feature) {
        return !this.isEmpty(feature);
    }

    @Override
    public void unset(EStructuralFeature feature) {
        FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
        List removals = null;
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (validator.isValid(entry.getEStructuralFeature())) {
                if (removals == null) {
                    removals = new BasicEList();
                }
                removals.add(entry);
            }
            ++i;
        }
        if (removals != null) {
            this.removeAll(removals);
        }
    }

    @Override
    public NotificationChain basicRemove(Object object, NotificationChain notifications) {
        if (object instanceof FeatureMap.Entry) {
            return super.basicRemove(object, notifications);
        }
        FeatureMap.Entry match = null;
        ETypedElement feature = null;
        FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
        int i = 0;
        while (i < this.size) {
            FeatureMap.Entry entry = entries[i];
            if (object.equals(entry.getValue()) && (feature = entry.getEStructuralFeature()) instanceof EReference && ((EReference)feature).isContainment()) {
                match = entry;
                break;
            }
            ++i;
        }
        if (match != null) {
            if (this.isNotificationRequired()) {
                NotificationImpl notification;
                NotificationImpl notificationImpl = feature.isMany() ? this.createNotification(4, (EStructuralFeature)feature, object, null, this.indexOf((EStructuralFeature)feature, object), true) : (notification = this.createNotification(feature.isUnsettable() ? 2 : 1, (EStructuralFeature)feature, object, feature.getDefaultValue(), -1, true));
                if (notifications != null) {
                    notifications.add((Notification)notification);
                } else {
                    notifications = notification;
                }
            }
            notifications = this.basicRemove(match, notifications);
        }
        return notifications;
    }

    @Override
    public void set(Object newValue) {
        super.set(newValue instanceof FeatureMap ? newValue : ((FeatureMap.Internal.Wrapper)newValue).featureMap());
    }

    @Override
    protected FeatureMap.Entry resolve(int index, FeatureMap.Entry entry) {
        InternalEObject object;
        EObject resolved;
        EStructuralFeature feature = entry.getEStructuralFeature();
        if (this.isResolveProxies(feature) && (resolved = this.resolveProxy(object = (InternalEObject)entry.getValue())) != object) {
            EReference reference;
            EReference opposite;
            EStructuralFeature affiliatedFeature;
            FeatureMap.Entry newEntry = this.createEntry(feature, resolved);
            this.assign(index, this.validate(index, newEntry));
            this.didSet(index, newEntry, entry);
            NotificationChain notifications = null;
            if (this.isNotificationRequired() && (affiliatedFeature = ExtendedMetaData.INSTANCE.getAffiliation(this.owner.eClass(), feature)) != this.getEStructuralFeature()) {
                FeatureMapUtil.Validator validator = FeatureMapUtil.getValidator(this.owner.eClass(), feature);
                int featureIndex = 0;
                FeatureMap.Entry[] entries = (FeatureMap.Entry[])this.data;
                int i = 0;
                while (i < index) {
                    FeatureMap.Entry affliatedEntry = entries[i];
                    if (validator.isValid(affliatedEntry.getEStructuralFeature())) {
                        ++featureIndex;
                    }
                    ++i;
                }
                notifications = this.createNotification(9, affiliatedFeature, object, resolved, featureIndex, false);
                notifications.add((Notification)this.createNotification(9, entry, newEntry, index, false));
            }
            if ((opposite = (reference = (EReference)feature).getEOpposite()) != null) {
                notifications = object.eInverseRemove(this.owner, object.eClass().getFeatureID(opposite), null, notifications);
                notifications = ((InternalEObject)resolved).eInverseAdd(this.owner, resolved.eClass().getFeatureID(opposite), null, notifications);
            } else if (reference.isContainment()) {
                int inverseFeatureID = -1 - this.owner.eClass().getFeatureID(reference);
                notifications = object.eInverseRemove(this.owner, inverseFeatureID, null, null);
                if (((InternalEObject)resolved).eInternalContainer() == null) {
                    notifications = ((InternalEObject)resolved).eInverseAdd(this.owner, inverseFeatureID, null, notifications);
                }
            }
            if (notifications != null) {
                notifications.dispatch();
            }
            return newEntry;
        }
        return entry;
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureEIterator<E>
    extends FeatureMapUtil.BasicFeatureEIterator<E> {
        public FeatureEIterator(EStructuralFeature eStructuralFeature, FeatureMap.Internal featureMap) {
            super(eStructuralFeature, featureMap);
        }

        @Override
        protected boolean scanNext() {
            int size = this.featureMap.size();
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])((BasicEList)this.featureMap).data();
            while (this.entryCursor < size) {
                FeatureMap.Entry entry = entries[this.entryCursor];
                if (this.validator.isValid(entry.getEStructuralFeature())) {
                    this.preparedResult = this.extractValue(entry);
                    this.prepared = 2;
                    return true;
                }
                ++this.entryCursor;
            }
            this.prepared = 1;
            this.lastCursor = -1;
            return false;
        }

        @Override
        protected boolean scanPrevious() {
            FeatureMap.Entry[] entries = (FeatureMap.Entry[])((BasicEList)this.featureMap).data();
            while (--this.entryCursor >= 0) {
                FeatureMap.Entry entry = entries[this.entryCursor];
                if (!this.validator.isValid(entry.getEStructuralFeature())) continue;
                this.preparedResult = this.extractValue(entry);
                this.prepared = -2;
                return true;
            }
            this.prepared = -1;
            this.lastCursor = -1;
            return false;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class FeatureMapEObjectImpl
    extends EObjectImpl {
        protected BasicFeatureMap featureMap = new BasicFeatureMap(this, -1);

        @Override
        public Object eDynamicGet(EStructuralFeature eFeature, boolean resolve) {
            if (eFeature instanceof EReference && ((EReference)eFeature).isContainer()) {
                return this.eSettingDelegate(eFeature).dynamicGet(this, null, -1, true, true);
            }
            return this.featureMap.setting(eFeature).get(resolve);
        }

        @Override
        public void eDynamicSet(EStructuralFeature eFeature, Object newValue) {
            if (eFeature instanceof EReference && ((EReference)eFeature).isContainer()) {
                this.eSettingDelegate(eFeature).dynamicSet(this, null, -1, newValue);
            } else {
                Object defaultValue;
                if (!eFeature.isUnsettable() && ((defaultValue = eFeature.getDefaultValue()) == null ? newValue == null : defaultValue.equals(newValue))) {
                    this.featureMap.setting(eFeature).unset();
                    return;
                }
                this.featureMap.setting(eFeature).set(newValue);
            }
        }

        @Override
        public void eDynamicUnset(EStructuralFeature eFeature) {
            if (eFeature instanceof EReference && ((EReference)eFeature).isContainer()) {
                this.eSettingDelegate(eFeature).dynamicUnset(this, null, -1);
            } else {
                this.featureMap.setting(eFeature).unset();
            }
        }

        @Override
        public boolean eDynamicIsSet(EStructuralFeature eFeature) {
            if (eFeature instanceof EReference && ((EReference)eFeature).isContainer()) {
                return this.eSettingDelegate(eFeature).dynamicIsSet(this, null, -1);
            }
            return this.featureMap.setting(eFeature).isSet();
        }

        @Override
        public NotificationChain eDynamicInverseAdd(InternalEObject otherEnd, int featureID, Class<?> inverseClass, NotificationChain notifications) {
            EStructuralFeature.Internal feature = (EStructuralFeature.Internal)this.eClass().getEStructuralFeature(featureID);
            if (feature.isMany()) {
                return this.featureMap.basicAdd(feature, otherEnd, notifications);
            }
            if (feature instanceof EReference && ((EReference)((Object)feature)).isContainer()) {
                return this.eSettingDelegate(feature).dynamicInverseAdd(this, null, -1, otherEnd, notifications);
            }
            InternalEObject oldValue = (InternalEObject)this.eDynamicGet(feature, false);
            if (oldValue != null) {
                notifications = oldValue.eInverseRemove(this, oldValue.eClass().getFeatureID(((EReference)((Object)feature)).getEOpposite()), null, notifications);
                notifications = this.featureMap.basicRemove(feature, oldValue, notifications);
            }
            return this.featureMap.basicAdd(feature, otherEnd, notifications);
        }

        @Override
        public NotificationChain eDynamicInverseRemove(InternalEObject otherEnd, int featureID, Class<?> inverseClass, NotificationChain notifications) {
            EStructuralFeature.Internal feature = (EStructuralFeature.Internal)this.eClass().getEStructuralFeature(featureID);
            if (feature instanceof EReference && ((EReference)((Object)feature)).isContainer()) {
                return this.eSettingDelegate(feature).dynamicInverseRemove(this, null, -1, otherEnd, notifications);
            }
            return this.featureMap.basicRemove(feature, otherEnd, notifications);
        }

        public FeatureMap featureMap() {
            return this.featureMap;
        }

        public void eNotify(Notification notification) {
            if (notification.getFeatureID(null) != -1) {
                super.eNotify(notification);
            }
        }

        @Override
        public String toString() {
            String result = super.toString();
            result = "org.eclipse.emf.ecore.impl.EObjectImpl" + result.substring(result.indexOf("@"));
            return result;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static class ResolvingFeatureEIterator<E>
    extends FeatureEIterator<E> {
        public ResolvingFeatureEIterator(EStructuralFeature eStructuralFeature, FeatureMap.Internal featureMap) {
            super(eStructuralFeature, featureMap);
        }

        @Override
        protected boolean resolve() {
            return true;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class ValueListIteratorImpl<E1>
    extends AbstractEList.EListIterator<E1>
    implements FeatureMap.ValueListIterator<E1> {
        public ValueListIteratorImpl() {
            super((AbstractEList)BasicFeatureMap.this);
        }

        public ValueListIteratorImpl(int index) {
            super((AbstractEList)BasicFeatureMap.this, index);
        }

        @Override
        public EStructuralFeature feature() {
            if (this.lastCursor == -1) {
                throw new IllegalStateException();
            }
            return BasicFeatureMap.this.getEStructuralFeature(this.lastCursor);
        }

        @Override
        public E1 next() {
            return (E1)((FeatureMap.Entry)this.doNext()).getValue();
        }

        @Override
        public E1 previous() {
            return (E1)((FeatureMap.Entry)this.doPrevious()).getValue();
        }

        @Override
        public void add(E1 value) {
            this.doAdd(FeatureMapUtil.createEntry(this.feature(), value));
        }

        @Override
        public void add(EStructuralFeature eStructuralFeature, Object value) {
            this.doAdd(FeatureMapUtil.createEntry(eStructuralFeature, value));
        }
    }
}

