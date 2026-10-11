/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EReference
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.edit.command;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CommandParameter {
    public static final int NO_INDEX = -1;
    public Object owner;
    public Object feature;
    public Collection<?> collection;
    public Object value;
    public int index;

    public CommandParameter(Object owner) {
        this.owner = owner;
    }

    public CommandParameter(Object owner, Object feature, Object value) {
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.index = -1;
    }

    public CommandParameter(Object owner, Object feature, Object value, int index) {
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.index = index;
    }

    public CommandParameter(Object owner, Object feature, Collection<?> collection) {
        this.owner = owner;
        this.feature = feature;
        this.collection = collection;
        this.index = -1;
    }

    public CommandParameter(Object owner, Object feature, Collection<?> collection, int index) {
        this.owner = owner;
        this.feature = feature;
        this.collection = collection;
        this.index = index;
    }

    public CommandParameter(Object owner, Object feature, Object value, Collection<?> collection) {
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.collection = collection;
        this.index = -1;
    }

    public CommandParameter(Object owner, Object feature, Object value, Collection<?> collection, int index) {
        this.owner = owner;
        this.feature = feature;
        this.value = value;
        this.collection = collection;
        this.index = index;
    }

    public Object getOwner() {
        return this.owner;
    }

    public EObject getEOwner() {
        return this.owner instanceof EObject ? (EObject)this.owner : null;
    }

    public void setOwner(Object owner) {
        this.owner = owner;
    }

    public Object getFeature() {
        return this.feature;
    }

    public EStructuralFeature getEStructuralFeature() {
        return this.feature instanceof EStructuralFeature ? (EStructuralFeature)this.feature : null;
    }

    public EReference getEReference() {
        return this.feature instanceof EReference ? (EReference)this.feature : null;
    }

    public EAttribute getEAttribute() {
        return this.feature instanceof EAttribute ? (EAttribute)this.feature : null;
    }

    public EList<?> getOwnerList() {
        if (this.owner instanceof EObject) {
            EStructuralFeature eStructuralFeature;
            EObject eOwner = (EObject)this.owner;
            if (eOwner.eClass().getEAllStructuralFeatures().contains(this.feature) && (eStructuralFeature = (EStructuralFeature)this.feature).isMany()) {
                return (EList)eOwner.eGet(eStructuralFeature);
            }
        } else if (this.owner instanceof EList) {
            return (EList)this.owner;
        }
        return null;
    }

    public Collection<?> getCollection() {
        return this.collection;
    }

    public List<?> getList() {
        return this.collection == null ? null : (this.collection instanceof List ? (List)this.collection : new ArrayList(this.collection));
    }

    public Object getValue() {
        return this.value;
    }

    public EObject getEValue() {
        return this.value instanceof EObject ? (EObject)this.value : null;
    }

    public int getIndex() {
        return this.index;
    }

    public Collection<String> getParameters() {
        ArrayList<String> parameters = new ArrayList<String>();
        EObject eObject = this.getEOwner();
        EStructuralFeature eStructuralFeature = this.getEStructuralFeature();
        if (eObject != null && eStructuralFeature != null) {
            parameters.add(eObject.eClass().getName());
            parameters.add(eStructuralFeature.getEType().getName());
        }
        return parameters;
    }

    public static String collectionToString(Collection<?> collection) {
        if (collection == null) {
            return "null";
        }
        StringBuffer result = new StringBuffer();
        result.append("{ ");
        Iterator<?> objects = collection.iterator();
        while (objects.hasNext()) {
            result.append(objects.next());
            if (!objects.hasNext()) continue;
            result.append(", ");
        }
        result.append(" }");
        return result.toString();
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("CommandParameter");
        result.append("\n  owner        = ");
        result.append(this.owner);
        result.append("\n  feature      = ");
        result.append(this.feature);
        if (this.getOwnerList() != null) {
            result.append("\n  ownerList  = ");
            result.append(CommandParameter.collectionToString(this.getOwnerList()));
        }
        if (this.collection != null) {
            result.append("\n  collection   = ");
            result.append(CommandParameter.collectionToString(this.collection));
        }
        if (this.value != null) {
            result.append("\n  value        = ");
            result.append(this.value);
        }
        if (this.index != -1) {
            result.append("\n  index        = ");
            result.append(this.index);
        }
        return result.toString();
    }
}

