/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar21.swcomponent.datatype.datatypes.impl;

import autosar21.swcomponent.datatype.datatypes.DatatypesPackage;
import autosar21.swcomponent.datatype.datatypes.RecordElement;
import autosar21.swcomponent.datatype.datatypes.RecordType;
import autosar21.swcomponent.datatype.datatypes.impl.DataPrototypeImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RecordElementImpl
extends DataPrototypeImpl
implements RecordElement {
    protected RecordElementImpl() {
    }

    protected EClass eStaticClass() {
        return DatatypesPackage.Literals.RECORD_ELEMENT;
    }

    public RecordType getRecordType() {
        if (this.eContainerFeatureID() != 20) {
            return null;
        }
        return (RecordType)this.eContainer();
    }

    public NotificationChain basicSetRecordType(RecordType newRecordType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newRecordType, 20, msgs);
        return msgs;
    }

    public void setRecordType(RecordType newRecordType) {
        if (newRecordType != this.eInternalContainer() || this.eContainerFeatureID() != 20 && newRecordType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newRecordType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newRecordType != null) {
                msgs = ((InternalEObject)newRecordType).eInverseAdd((InternalEObject)this, 19, RecordType.class, msgs);
            }
            if ((msgs = this.basicSetRecordType(newRecordType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)newRecordType, (Object)newRecordType));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetRecordType((RecordType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 20: {
                return this.basicSetRecordType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 20: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, RecordType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 20: {
                return this.getRecordType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 20: {
                this.setRecordType((RecordType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 20: {
                this.setRecordType(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 20: {
                return this.getRecordType() != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

