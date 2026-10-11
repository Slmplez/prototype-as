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
package autosar21.ecuresource.processingunit.impl;

import autosar21.ecuresource.processingunit.ProcessingUnit;
import autosar21.ecuresource.processingunit.ProcessingunitPackage;
import autosar21.ecuresource.processingunit.Register;
import autosar21.ecuresource.processingunit.RegisterTypeEnum;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class RegisterImpl
extends ARObjectImpl
implements Register {
    protected static final Integer COUNT_EDEFAULT = new Integer(0);
    protected Integer count = COUNT_EDEFAULT;
    protected boolean countESet;
    protected static final RegisterTypeEnum TYPE_EDEFAULT = RegisterTypeEnum.DATA;
    protected RegisterTypeEnum type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected RegisterImpl() {
    }

    protected EClass eStaticClass() {
        return ProcessingunitPackage.Literals.REGISTER;
    }

    public ProcessingUnit getProcessingUnit() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ProcessingUnit)this.eContainer();
    }

    public NotificationChain basicSetProcessingUnit(ProcessingUnit newProcessingUnit, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newProcessingUnit, 4, msgs);
        return msgs;
    }

    public void setProcessingUnit(ProcessingUnit newProcessingUnit) {
        if (newProcessingUnit != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newProcessingUnit != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newProcessingUnit)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newProcessingUnit != null) {
                msgs = ((InternalEObject)newProcessingUnit).eInverseAdd((InternalEObject)this, 37, ProcessingUnit.class, msgs);
            }
            if ((msgs = this.basicSetProcessingUnit(newProcessingUnit, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newProcessingUnit, (Object)newProcessingUnit));
        }
    }

    public Integer getCount() {
        return this.count;
    }

    public void setCount(Integer newCount) {
        Integer oldCount = this.count;
        this.count = newCount;
        boolean oldCountESet = this.countESet;
        this.countESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCount, (Object)this.count, !oldCountESet));
        }
    }

    public void unsetCount() {
        Integer oldCount = this.count;
        boolean oldCountESet = this.countESet;
        this.count = COUNT_EDEFAULT;
        this.countESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldCount, (Object)COUNT_EDEFAULT, oldCountESet));
        }
    }

    public boolean isSetCount() {
        return this.countESet;
    }

    public RegisterTypeEnum getType() {
        return this.type;
    }

    public void setType(RegisterTypeEnum newType) {
        RegisterTypeEnum oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    public void unsetType() {
        RegisterTypeEnum oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    public boolean isSetType() {
        return this.typeESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetProcessingUnit((ProcessingUnit)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetProcessingUnit(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 37, ProcessingUnit.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getProcessingUnit();
            }
            case 5: {
                return this.getCount();
            }
            case 6: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setProcessingUnit((ProcessingUnit)newValue);
                return;
            }
            case 5: {
                this.setCount((Integer)newValue);
                return;
            }
            case 6: {
                this.setType((RegisterTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setProcessingUnit(null);
                return;
            }
            case 5: {
                this.unsetCount();
                return;
            }
            case 6: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getProcessingUnit() != null;
            }
            case 5: {
                return this.isSetCount();
            }
            case 6: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (count: ");
        if (this.countESet) {
            result.append(this.count);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

