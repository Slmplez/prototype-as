/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DelegatingEList
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EAttribute
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EDataTypeEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.FeatureMap$Entry
 *  org.eclipse.emf.ecore.util.FeatureMapUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.ecore.change.impl;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DelegatingEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.ChangeKind;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EDataTypeEList;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.FeatureMapUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ListChangeImpl
extends EObjectImpl
implements ListChange {
    protected static final ChangeKind KIND_EDEFAULT = ChangeKind.ADD_LITERAL;
    protected ChangeKind kind = KIND_EDEFAULT;
    protected EList<String> dataValues;
    protected static final int INDEX_EDEFAULT = -1;
    protected int index = -1;
    protected static final int MOVE_TO_INDEX_EDEFAULT = 0;
    protected int moveToIndex = 0;
    protected EList<EObject> referenceValues;
    protected EStructuralFeature feature;
    protected EList<FeatureMapEntry> featureMapEntryValues;
    protected EList<Object> dataValueDelegatingList = null;

    protected ListChangeImpl() {
    }

    protected EClass eStaticClass() {
        return ChangePackage.Literals.LIST_CHANGE;
    }

    @Override
    public ChangeKind getKind() {
        return this.kind;
    }

    @Override
    public void setKind(ChangeKind newKind) {
        ChangeKind oldKind = this.kind;
        ChangeKind changeKind = this.kind = newKind == null ? KIND_EDEFAULT : newKind;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldKind, (Object)this.kind));
        }
    }

    @Override
    public EList<String> getDataValues() {
        if (this.dataValues == null) {
            this.dataValues = new EDataTypeEList(String.class, (InternalEObject)this, 1);
        }
        return this.dataValues;
    }

    protected EList<Object> createDataValueDelegatingList() {
        if (FeatureMapUtil.isFeatureMap((EStructuralFeature)this.getFeature())) {
            return new DelegatingEList<Object>(){
                private static final long serialVersionUID = 1L;

                protected List<Object> delegateList() {
                    return ListChangeImpl.this.getFeatureMapEntryValues();
                }

                protected Object validate(int index, Object object) {
                    if (object instanceof FeatureMapEntry) {
                        return object;
                    }
                    FeatureMap.Entry entry = (FeatureMap.Entry)object;
                    return ListChangeImpl.this.createFeatureMapEntry(entry.getEStructuralFeature(), entry.getValue());
                }
            };
        }
        return new DelegatingEList<Object>(){
            private static final long serialVersionUID = 1L;

            protected List<Object> delegateList() {
                return ListChangeImpl.this.getDataValues();
            }

            protected Object resolve(int index, Object object) {
                EDataType type = (EDataType)ListChangeImpl.this.getFeature().getEType();
                return EcoreUtil.createFromString((EDataType)type, (String)((String)object));
            }

            protected Object validate(int index, Object object) {
                EDataType type = (EDataType)ListChangeImpl.this.getFeature().getEType();
                return EcoreUtil.convertToString((EDataType)type, (Object)object);
            }
        };
    }

    protected FeatureMapEntry createFeatureMapEntry(EStructuralFeature feature, Object value) {
        return ChangeFactory.eINSTANCE.createFeatureMapEntry(feature, value);
    }

    @Override
    public int getIndex() {
        return this.index;
    }

    @Override
    public void setIndex(int newIndex) {
        int oldIndex = this.index;
        this.index = newIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, oldIndex, this.index));
        }
    }

    @Override
    public int getMoveToIndex() {
        return this.moveToIndex;
    }

    @Override
    public void setMoveToIndex(int newMoveToIndex) {
        int oldMoveToIndex = this.moveToIndex;
        this.moveToIndex = newMoveToIndex;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, oldMoveToIndex, this.moveToIndex));
        }
    }

    @Override
    public EList<EObject> getReferenceValues() {
        if (this.referenceValues == null) {
            this.referenceValues = new EObjectResolvingEList(EObject.class, (InternalEObject)this, 5);
        }
        return this.referenceValues;
    }

    public EStructuralFeature getFeatureGen() {
        if (this.feature != null && this.feature.eIsProxy()) {
            InternalEObject oldFeature = (InternalEObject)this.feature;
            this.feature = (EStructuralFeature)this.eResolveProxy(oldFeature);
            if (this.feature != oldFeature && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 6, (Object)oldFeature, (Object)this.feature));
            }
        }
        return this.feature;
    }

    @Override
    public EStructuralFeature getFeature() {
        EObject container;
        EStructuralFeature result = this.getFeatureGen();
        if (result == null && (container = this.eContainer()) instanceof FeatureChange) {
            result = ((FeatureChange)container).getFeature();
        }
        return result;
    }

    public EStructuralFeature basicGetFeature() {
        return this.feature;
    }

    @Override
    public void setFeature(EStructuralFeature newFeature) {
        EStructuralFeature oldFeature = this.feature;
        this.feature = newFeature;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldFeature, (Object)this.feature));
        }
    }

    @Override
    public EList<FeatureMapEntry> getFeatureMapEntryValues() {
        if (this.featureMapEntryValues == null) {
            this.featureMapEntryValues = new EObjectContainmentEList(FeatureMapEntry.class, (InternalEObject)this, 7);
        }
        return this.featureMapEntryValues;
    }

    @Override
    public EList<Object> getValues() {
        EStructuralFeature feature = this.getFeature();
        if (feature instanceof EAttribute) {
            if (this.dataValueDelegatingList == null) {
                this.dataValueDelegatingList = this.createDataValueDelegatingList();
            }
            return this.dataValueDelegatingList;
        }
        EList<EObject> result = this.getReferenceValues();
        return result;
    }

    public void setValues(EList<?> values) {
        EList<Object> featureValues = this.getValues();
        featureValues.clear();
        featureValues.addAll(values);
    }

    @Override
    public void apply(EList<Object> originalList) {
        this.process(originalList, false, true);
    }

    @Override
    public void applyAndReverse(EList<Object> originalList) {
        this.process(originalList, true, true);
    }

    @Override
    public void reverse(EList<Object> originalList) {
        this.process(originalList, true, false);
    }

    protected void process(EList<Object> originalList, boolean reverse, boolean apply) {
        switch (this.getKind().getValue()) {
            case 0: {
                if (this.index == -1) {
                    if (reverse) {
                        this.index = originalList.size();
                    }
                    if (apply) {
                        originalList.addAll(this.getValues());
                    }
                } else if (apply) {
                    originalList.addAll(this.index, this.getValues());
                }
                if (!reverse) break;
                if (this.getValues().size() == 1) {
                    this.getValues().clear();
                }
                this.setKind(ChangeKind.REMOVE_LITERAL);
                break;
            }
            case 1: {
                int removeCount;
                if (this.getValues().isEmpty()) {
                    if (reverse) {
                        this.getValues().add(originalList.get(this.getIndex()));
                    }
                    removeCount = 1;
                } else {
                    removeCount = this.getValues().size();
                }
                if (apply) {
                    int i = 0;
                    while (i < removeCount) {
                        originalList.remove(this.index);
                        ++i;
                    }
                }
                if (!reverse) break;
                this.setKind(ChangeKind.ADD_LITERAL);
                break;
            }
            case 2: {
                if (apply) {
                    originalList.move(this.moveToIndex, this.index);
                }
                if (!reverse) break;
                int temp = this.moveToIndex;
                this.setMoveToIndex(this.index);
                this.setIndex(temp);
            }
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return ((InternalEList)this.getFeatureMapEntryValues()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getKind();
            }
            case 1: {
                return this.getDataValues();
            }
            case 2: {
                return this.getIndex();
            }
            case 3: {
                return this.getMoveToIndex();
            }
            case 4: {
                return this.getValues();
            }
            case 5: {
                return this.getReferenceValues();
            }
            case 6: {
                if (resolve) {
                    return this.getFeature();
                }
                return this.basicGetFeature();
            }
            case 7: {
                return this.getFeatureMapEntryValues();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setKind((ChangeKind)((Object)newValue));
                return;
            }
            case 1: {
                this.getDataValues().clear();
                this.getDataValues().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setIndex((Integer)newValue);
                return;
            }
            case 3: {
                this.setMoveToIndex((Integer)newValue);
                return;
            }
            case 4: {
                this.getValues().clear();
                this.getValues().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getReferenceValues().clear();
                this.getReferenceValues().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setFeature((EStructuralFeature)newValue);
                return;
            }
            case 7: {
                this.getFeatureMapEntryValues().clear();
                this.getFeatureMapEntryValues().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setKind(KIND_EDEFAULT);
                return;
            }
            case 1: {
                this.getDataValues().clear();
                return;
            }
            case 2: {
                this.setIndex(-1);
                return;
            }
            case 3: {
                this.setMoveToIndex(0);
                return;
            }
            case 4: {
                this.getValues().clear();
                return;
            }
            case 5: {
                this.getReferenceValues().clear();
                return;
            }
            case 6: {
                this.setFeature(null);
                return;
            }
            case 7: {
                this.getFeatureMapEntryValues().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.kind != KIND_EDEFAULT;
            }
            case 1: {
                return this.dataValues != null && !this.dataValues.isEmpty();
            }
            case 2: {
                return this.index != -1;
            }
            case 3: {
                return this.moveToIndex != 0;
            }
            case 4: {
                return !this.getValues().isEmpty();
            }
            case 5: {
                return this.referenceValues != null && !this.referenceValues.isEmpty();
            }
            case 6: {
                return this.feature != null;
            }
            case 7: {
                return this.featureMapEntryValues != null && !this.featureMapEntryValues.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (kind: ");
        result.append((Object)this.kind);
        result.append(", dataValues: ");
        result.append(this.dataValues);
        result.append(", index: ");
        result.append(this.index);
        result.append(", moveToIndex: ");
        result.append(this.moveToIndex);
        result.append(')');
        return result.toString();
    }
}

