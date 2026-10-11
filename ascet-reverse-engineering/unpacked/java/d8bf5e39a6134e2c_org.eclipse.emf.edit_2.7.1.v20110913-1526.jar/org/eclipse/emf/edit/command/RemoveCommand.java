/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.command.Command
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.command.Command;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.edit.EMFEditPlugin;
import org.eclipse.emf.edit.command.AbstractOverrideableCommand;
import org.eclipse.emf.edit.command.CommandParameter;
import org.eclipse.emf.edit.domain.EditingDomain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RemoveCommand
extends AbstractOverrideableCommand {
    protected static final String LABEL = EMFEditPlugin.INSTANCE.getString("_UI_RemoveCommand_label");
    protected static final String DESCRIPTION = EMFEditPlugin.INSTANCE.getString("_UI_RemoveCommand_description");
    protected static final String DESCRIPTION_FOR_LIST = EMFEditPlugin.INSTANCE.getString("_UI_RemoveCommand_description_for_list");
    protected EObject owner;
    protected EStructuralFeature feature;
    protected EList<Object> ownerList;
    protected Collection<Object> collection;
    protected int[] indices;
    protected Collection<?> affectedObjects;

    public static Command create(EditingDomain domain, Object value) {
        return RemoveCommand.create(domain, Collections.singleton(value));
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Object value) {
        return RemoveCommand.create(domain, owner, feature, Collections.singleton(value));
    }

    public static Command create(EditingDomain domain, Collection<?> collection) {
        return RemoveCommand.create(domain, null, null, collection);
    }

    public static Command create(EditingDomain domain, Object owner, Object feature, Collection<?> collection) {
        return domain.createCommand(RemoveCommand.class, new CommandParameter(owner, feature, collection));
    }

    public RemoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Object value) {
        this(domain, owner, feature, Collections.singleton(value));
    }

    public RemoveCommand(EditingDomain domain, EObject owner, EStructuralFeature feature, Collection<?> collection) {
        super(domain, LABEL, DESCRIPTION);
        this.owner = owner;
        this.feature = feature;
        this.collection = collection == null ? null : new ArrayList(collection);
        this.ownerList = RemoveCommand.getOwnerList(this.owner, feature);
    }

    public RemoveCommand(EditingDomain domain, EList<?> list, Object value) {
        this(domain, list, Collections.singleton(value));
    }

    public RemoveCommand(EditingDomain domain, EList<?> list, Collection<?> collection) {
        super(domain, LABEL, DESCRIPTION_FOR_LIST);
        this.collection = collection == null ? null : new ArrayList(collection);
        EList<?> untypedList = list;
        this.ownerList = untypedList;
    }

    public EObject getOwner() {
        return this.owner;
    }

    public EStructuralFeature getFeature() {
        return this.feature;
    }

    public EList<Object> getOwnerList() {
        return this.ownerList;
    }

    public Collection<?> getCollection() {
        return this.collection;
    }

    public int[] getIndices() {
        return this.indices;
    }

    protected boolean prepare() {
        boolean result = this.ownerList != null && this.collection != null && this.ownerList.containsAll(this.collection) && (this.owner == null || !this.domain.isReadOnly(this.owner.eResource()));
        return result;
    }

    @Override
    public void doExecute() {
        ArrayList<Object> identity = new ArrayList<Object>(this.collection.size());
        int[] identityIndices = new int[this.collection.size()];
        int i = 0;
        ListIterator ownedObjects = this.ownerList.listIterator();
        while (ownedObjects.hasNext()) {
            Object ownedObject = ownedObjects.next();
            if (!this.containsExact(this.collection, ownedObject)) continue;
            this.removeExact(this.collection, ownedObject);
            identity.add(ownedObject);
            identityIndices[i++] = ownedObjects.previousIndex();
        }
        while (i < identityIndices.length) {
            identityIndices[i++] = -1;
        }
        ArrayList<Object> equality = new ArrayList<Object>(this.collection.size());
        int[] equalityIndices = new int[this.collection.size()];
        i = 0;
        ListIterator ownedObjects2 = this.ownerList.listIterator();
        while (ownedObjects2.hasNext()) {
            Object ownedObject = ownedObjects2.next();
            int index = ownedObjects2.previousIndex();
            if (!this.collection.contains(ownedObject) || this.contains(identityIndices, index)) continue;
            this.collection.remove(ownedObject);
            equality.add(ownedObject);
            equalityIndices[i++] = index;
        }
        this.merge(identity, identityIndices, equality, equalityIndices);
        i = this.indices.length - 1;
        while (i >= 0) {
            this.ownerList.remove(this.indices[i]);
            --i;
        }
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.owner == null ? Collections.EMPTY_SET : Collections.singleton(this.owner);
    }

    protected boolean containsExact(Collection<?> collection, Object target) {
        for (Object object : collection) {
            if (object != target) continue;
            return true;
        }
        return false;
    }

    protected boolean contains(int[] values, int target) {
        int i = 0;
        int len = values.length;
        while (i < len) {
            if (values[i] == target) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected boolean removeExact(Collection<?> collection, Object target) {
        Iterator<?> i = collection.iterator();
        while (i.hasNext()) {
            if (i.next() != target) continue;
            i.remove();
            return true;
        }
        return false;
    }

    protected void merge(List<Object> objects1, int[] indices1, List<Object> objects2, int[] indices2) {
        if (objects2.isEmpty()) {
            this.collection = objects1;
            this.indices = indices1;
            return;
        }
        if (objects1.isEmpty()) {
            this.collection = objects2;
            this.indices = indices2;
            return;
        }
        int size = objects1.size() + objects2.size();
        this.collection = new ArrayList<Object>(size);
        this.indices = new int[size];
        int i1 = 0;
        int i2 = 0;
        int i = 0;
        Iterator<Object> iter1 = objects1.iterator();
        Iterator<Object> iter2 = objects2.iterator();
        Object o1 = iter1.hasNext() ? iter1.next() : null;
        Object o2 = iter2.hasNext() ? iter2.next() : null;
        while (o1 != null && o2 != null) {
            if (indices1[i1] < indices2[i2]) {
                this.indices[i++] = indices1[i1++];
                this.collection.add(o1);
                o1 = iter1.hasNext() ? iter1.next() : null;
                continue;
            }
            this.indices[i++] = indices2[i2++];
            this.collection.add(o2);
            Object object = o2 = iter2.hasNext() ? iter2.next() : null;
        }
        while (o1 != null) {
            this.indices[i++] = indices1[i1++];
            this.collection.add(o1);
            Object object = o1 = iter1.hasNext() ? iter1.next() : null;
        }
        while (o2 != null) {
            this.indices[i++] = indices2[i2++];
            this.collection.add(o2);
            Object object = o2 = iter2.hasNext() ? iter2.next() : null;
        }
    }

    @Override
    public void doUndo() {
        int i = 0;
        for (Object object : this.collection) {
            this.ownerList.add(this.indices[i++], object);
        }
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.collection;
    }

    @Override
    public void doRedo() {
        int i = this.indices.length - 1;
        while (i >= 0) {
            this.ownerList.remove(this.indices[i]);
            --i;
        }
        this.updateEMap(this.owner, this.feature);
        this.affectedObjects = this.owner == null ? Collections.EMPTY_SET : Collections.singleton(this.owner);
    }

    @Override
    public Collection<?> doGetResult() {
        return this.collection;
    }

    @Override
    public Collection<?> doGetAffectedObjects() {
        return this.affectedObjects;
    }

    @Override
    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (owner: " + this.owner + ")");
        result.append(" (feature: " + this.feature + ")");
        result.append(" (ownerList: " + this.ownerList + ")");
        result.append(" (collection: " + this.collection + ")");
        result.append(" (indices: " + Arrays.toString(this.indices) + ")");
        result.append(" (affectedObjects: " + this.affectedObjects + ")");
        return result.toString();
    }
}

