/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.DiagnosticChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar3x.ecuresource.basicelements.impl;

import autosar3x.ecuresource.HWElement;
import autosar3x.ecuresource.basicelements.BasicelementsPackage;
import autosar3x.ecuresource.basicelements.Temperature;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import java.util.Map;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TemperatureImpl
extends ARObjectImpl
implements Temperature {
    protected static final Boolean NEEDS_COOLING_EDEFAULT = Boolean.FALSE;
    protected Boolean needsCooling = NEEDS_COOLING_EDEFAULT;
    protected boolean needsCoolingESet;
    protected static final Boolean NEEDS_HEATING_EDEFAULT = Boolean.FALSE;
    protected Boolean needsHeating = NEEDS_HEATING_EDEFAULT;
    protected boolean needsHeatingESet;
    protected static final Integer OPERATION_MAX_EDEFAULT = new Integer(0);
    protected Integer operationMax = OPERATION_MAX_EDEFAULT;
    protected boolean operationMaxESet;
    protected static final Integer OPERATION_MIN_EDEFAULT = new Integer(0);
    protected Integer operationMin = OPERATION_MIN_EDEFAULT;
    protected boolean operationMinESet;
    protected static final Integer OPERATION_TYPICAL_EDEFAULT = new Integer(0);
    protected Integer operationTypical = OPERATION_TYPICAL_EDEFAULT;
    protected boolean operationTypicalESet;
    protected static final Integer STORAGE_MAX_EDEFAULT = new Integer(0);
    protected Integer storageMax = STORAGE_MAX_EDEFAULT;
    protected boolean storageMaxESet;
    protected static final Integer STORAGE_MIN_EDEFAULT = new Integer(0);
    protected Integer storageMin = STORAGE_MIN_EDEFAULT;
    protected boolean storageMinESet;

    protected TemperatureImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return BasicelementsPackage.Literals.TEMPERATURE;
    }

    @Override
    public HWElement getHWElement() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (HWElement)this.eContainer();
    }

    public NotificationChain basicSetHWElement(HWElement newHWElement, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWElement, 4, msgs);
        return msgs;
    }

    @Override
    public void setHWElement(HWElement newHWElement) {
        if (newHWElement != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newHWElement != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWElement)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWElement != null) {
                msgs = ((InternalEObject)newHWElement).eInverseAdd((InternalEObject)this, 20, HWElement.class, msgs);
            }
            if ((msgs = this.basicSetHWElement(newHWElement, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newHWElement, (Object)newHWElement));
        }
    }

    @Override
    public Boolean getNeedsCooling() {
        return this.needsCooling;
    }

    @Override
    public void setNeedsCooling(Boolean newNeedsCooling) {
        Boolean oldNeedsCooling = this.needsCooling;
        this.needsCooling = newNeedsCooling;
        boolean oldNeedsCoolingESet = this.needsCoolingESet;
        this.needsCoolingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNeedsCooling, (Object)this.needsCooling, !oldNeedsCoolingESet));
        }
    }

    @Override
    public void unsetNeedsCooling() {
        Boolean oldNeedsCooling = this.needsCooling;
        boolean oldNeedsCoolingESet = this.needsCoolingESet;
        this.needsCooling = NEEDS_COOLING_EDEFAULT;
        this.needsCoolingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldNeedsCooling, (Object)NEEDS_COOLING_EDEFAULT, oldNeedsCoolingESet));
        }
    }

    @Override
    public boolean isSetNeedsCooling() {
        return this.needsCoolingESet;
    }

    @Override
    public Boolean getNeedsHeating() {
        return this.needsHeating;
    }

    @Override
    public void setNeedsHeating(Boolean newNeedsHeating) {
        Boolean oldNeedsHeating = this.needsHeating;
        this.needsHeating = newNeedsHeating;
        boolean oldNeedsHeatingESet = this.needsHeatingESet;
        this.needsHeatingESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNeedsHeating, (Object)this.needsHeating, !oldNeedsHeatingESet));
        }
    }

    @Override
    public void unsetNeedsHeating() {
        Boolean oldNeedsHeating = this.needsHeating;
        boolean oldNeedsHeatingESet = this.needsHeatingESet;
        this.needsHeating = NEEDS_HEATING_EDEFAULT;
        this.needsHeatingESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNeedsHeating, (Object)NEEDS_HEATING_EDEFAULT, oldNeedsHeatingESet));
        }
    }

    @Override
    public boolean isSetNeedsHeating() {
        return this.needsHeatingESet;
    }

    @Override
    public Integer getOperationMax() {
        return this.operationMax;
    }

    @Override
    public void setOperationMax(Integer newOperationMax) {
        Integer oldOperationMax = this.operationMax;
        this.operationMax = newOperationMax;
        boolean oldOperationMaxESet = this.operationMaxESet;
        this.operationMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldOperationMax, (Object)this.operationMax, !oldOperationMaxESet));
        }
    }

    @Override
    public void unsetOperationMax() {
        Integer oldOperationMax = this.operationMax;
        boolean oldOperationMaxESet = this.operationMaxESet;
        this.operationMax = OPERATION_MAX_EDEFAULT;
        this.operationMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldOperationMax, (Object)OPERATION_MAX_EDEFAULT, oldOperationMaxESet));
        }
    }

    @Override
    public boolean isSetOperationMax() {
        return this.operationMaxESet;
    }

    @Override
    public Integer getOperationMin() {
        return this.operationMin;
    }

    @Override
    public void setOperationMin(Integer newOperationMin) {
        Integer oldOperationMin = this.operationMin;
        this.operationMin = newOperationMin;
        boolean oldOperationMinESet = this.operationMinESet;
        this.operationMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldOperationMin, (Object)this.operationMin, !oldOperationMinESet));
        }
    }

    @Override
    public void unsetOperationMin() {
        Integer oldOperationMin = this.operationMin;
        boolean oldOperationMinESet = this.operationMinESet;
        this.operationMin = OPERATION_MIN_EDEFAULT;
        this.operationMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldOperationMin, (Object)OPERATION_MIN_EDEFAULT, oldOperationMinESet));
        }
    }

    @Override
    public boolean isSetOperationMin() {
        return this.operationMinESet;
    }

    @Override
    public Integer getOperationTypical() {
        return this.operationTypical;
    }

    @Override
    public void setOperationTypical(Integer newOperationTypical) {
        Integer oldOperationTypical = this.operationTypical;
        this.operationTypical = newOperationTypical;
        boolean oldOperationTypicalESet = this.operationTypicalESet;
        this.operationTypicalESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldOperationTypical, (Object)this.operationTypical, !oldOperationTypicalESet));
        }
    }

    @Override
    public void unsetOperationTypical() {
        Integer oldOperationTypical = this.operationTypical;
        boolean oldOperationTypicalESet = this.operationTypicalESet;
        this.operationTypical = OPERATION_TYPICAL_EDEFAULT;
        this.operationTypicalESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldOperationTypical, (Object)OPERATION_TYPICAL_EDEFAULT, oldOperationTypicalESet));
        }
    }

    @Override
    public boolean isSetOperationTypical() {
        return this.operationTypicalESet;
    }

    @Override
    public Integer getStorageMax() {
        return this.storageMax;
    }

    @Override
    public void setStorageMax(Integer newStorageMax) {
        Integer oldStorageMax = this.storageMax;
        this.storageMax = newStorageMax;
        boolean oldStorageMaxESet = this.storageMaxESet;
        this.storageMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldStorageMax, (Object)this.storageMax, !oldStorageMaxESet));
        }
    }

    @Override
    public void unsetStorageMax() {
        Integer oldStorageMax = this.storageMax;
        boolean oldStorageMaxESet = this.storageMaxESet;
        this.storageMax = STORAGE_MAX_EDEFAULT;
        this.storageMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldStorageMax, (Object)STORAGE_MAX_EDEFAULT, oldStorageMaxESet));
        }
    }

    @Override
    public boolean isSetStorageMax() {
        return this.storageMaxESet;
    }

    @Override
    public Integer getStorageMin() {
        return this.storageMin;
    }

    @Override
    public void setStorageMin(Integer newStorageMin) {
        Integer oldStorageMin = this.storageMin;
        this.storageMin = newStorageMin;
        boolean oldStorageMinESet = this.storageMinESet;
        this.storageMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldStorageMin, (Object)this.storageMin, !oldStorageMinESet));
        }
    }

    @Override
    public void unsetStorageMin() {
        Integer oldStorageMin = this.storageMin;
        boolean oldStorageMinESet = this.storageMinESet;
        this.storageMin = STORAGE_MIN_EDEFAULT;
        this.storageMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldStorageMin, (Object)STORAGE_MIN_EDEFAULT, oldStorageMinESet));
        }
    }

    @Override
    public boolean isSetStorageMin() {
        return this.storageMinESet;
    }

    @Override
    public boolean _operationMinoperationTypicalandoperationTypicaloperationMax(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    @Override
    public boolean storageMinstorageMax(DiagnosticChain diagnostics, Map<Object, Object> context) {
        return true;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWElement((HWElement)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetHWElement(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 20, HWElement.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getHWElement();
            }
            case 5: {
                return this.getNeedsCooling();
            }
            case 6: {
                return this.getNeedsHeating();
            }
            case 7: {
                return this.getOperationMax();
            }
            case 8: {
                return this.getOperationMin();
            }
            case 9: {
                return this.getOperationTypical();
            }
            case 10: {
                return this.getStorageMax();
            }
            case 11: {
                return this.getStorageMin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setHWElement((HWElement)newValue);
                return;
            }
            case 5: {
                this.setNeedsCooling((Boolean)newValue);
                return;
            }
            case 6: {
                this.setNeedsHeating((Boolean)newValue);
                return;
            }
            case 7: {
                this.setOperationMax((Integer)newValue);
                return;
            }
            case 8: {
                this.setOperationMin((Integer)newValue);
                return;
            }
            case 9: {
                this.setOperationTypical((Integer)newValue);
                return;
            }
            case 10: {
                this.setStorageMax((Integer)newValue);
                return;
            }
            case 11: {
                this.setStorageMin((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setHWElement(null);
                return;
            }
            case 5: {
                this.unsetNeedsCooling();
                return;
            }
            case 6: {
                this.unsetNeedsHeating();
                return;
            }
            case 7: {
                this.unsetOperationMax();
                return;
            }
            case 8: {
                this.unsetOperationMin();
                return;
            }
            case 9: {
                this.unsetOperationTypical();
                return;
            }
            case 10: {
                this.unsetStorageMax();
                return;
            }
            case 11: {
                this.unsetStorageMin();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getHWElement() != null;
            }
            case 5: {
                return this.isSetNeedsCooling();
            }
            case 6: {
                return this.isSetNeedsHeating();
            }
            case 7: {
                return this.isSetOperationMax();
            }
            case 8: {
                return this.isSetOperationMin();
            }
            case 9: {
                return this.isSetOperationTypical();
            }
            case 10: {
                return this.isSetStorageMax();
            }
            case 11: {
                return this.isSetStorageMin();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (needsCooling: ");
        if (this.needsCoolingESet) {
            result.append(this.needsCooling);
        } else {
            result.append("<unset>");
        }
        result.append(", needsHeating: ");
        if (this.needsHeatingESet) {
            result.append(this.needsHeating);
        } else {
            result.append("<unset>");
        }
        result.append(", operationMax: ");
        if (this.operationMaxESet) {
            result.append(this.operationMax);
        } else {
            result.append("<unset>");
        }
        result.append(", operationMin: ");
        if (this.operationMinESet) {
            result.append(this.operationMin);
        } else {
            result.append("<unset>");
        }
        result.append(", operationTypical: ");
        if (this.operationTypicalESet) {
            result.append(this.operationTypical);
        } else {
            result.append("<unset>");
        }
        result.append(", storageMax: ");
        if (this.storageMaxESet) {
            result.append(this.storageMax);
        } else {
            result.append("<unset>");
        }
        result.append(", storageMin: ");
        if (this.storageMinESet) {
            result.append(this.storageMin);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

