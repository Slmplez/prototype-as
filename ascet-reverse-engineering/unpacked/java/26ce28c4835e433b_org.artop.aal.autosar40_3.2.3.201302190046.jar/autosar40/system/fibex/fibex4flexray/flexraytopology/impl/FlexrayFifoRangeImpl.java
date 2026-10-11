/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibex4flexray.flexraytopology.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoConfiguration;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexrayFifoRange;
import autosar40.system.fibex.fibex4flexray.flexraytopology.FlexraytopologyPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FlexrayFifoRangeImpl
extends ARObjectImpl
implements FlexrayFifoRange {
    protected static final IntegerDatatype RANGE_MAX_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype rangeMax = RANGE_MAX_EDEFAULT.clone();
    protected boolean rangeMaxESet;
    protected static final IntegerDatatype RANGE_MIN_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype rangeMin = RANGE_MIN_EDEFAULT.clone();
    protected boolean rangeMinESet;

    protected FlexrayFifoRangeImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraytopologyPackage.Literals.FLEXRAY_FIFO_RANGE;
    }

    public FlexrayFifoConfiguration getFlexrayFifoConfiguration() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FlexrayFifoConfiguration)this.eContainer();
    }

    public NotificationChain basicSetFlexrayFifoConfiguration(FlexrayFifoConfiguration newFlexrayFifoConfiguration, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayFifoConfiguration, 4, msgs);
        return msgs;
    }

    public void setFlexrayFifoConfiguration(FlexrayFifoConfiguration newFlexrayFifoConfiguration) {
        if (newFlexrayFifoConfiguration != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFlexrayFifoConfiguration != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayFifoConfiguration)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayFifoConfiguration != null) {
                msgs = ((InternalEObject)newFlexrayFifoConfiguration).eInverseAdd((InternalEObject)this, 10, FlexrayFifoConfiguration.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayFifoConfiguration(newFlexrayFifoConfiguration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFlexrayFifoConfiguration, (Object)newFlexrayFifoConfiguration));
        }
    }

    public Integer getRangeMax() {
        return (Integer)this.rangeMax.basicGetValue();
    }

    public void setRangeMax(Integer newRangeMax) {
        Integer oldRangeMax = (Integer)this.rangeMax.basicGetValue();
        this.rangeMax.basicSetValue((Object)newRangeMax);
        boolean oldRangeMaxESet = this.rangeMaxESet;
        this.rangeMaxESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldRangeMax, (Object)newRangeMax, !oldRangeMaxESet));
        }
    }

    public void unsetRangeMax() {
        Integer oldRangeMax = (Integer)this.rangeMax.basicGetValue();
        boolean oldRangeMaxESet = this.rangeMaxESet;
        this.rangeMax = RANGE_MAX_EDEFAULT.clone();
        this.rangeMaxESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldRangeMax, (Object)RANGE_MAX_EDEFAULT, oldRangeMaxESet));
        }
    }

    public boolean isSetRangeMax() {
        return this.rangeMaxESet;
    }

    public Integer getRangeMin() {
        return (Integer)this.rangeMin.basicGetValue();
    }

    public void setRangeMin(Integer newRangeMin) {
        Integer oldRangeMin = (Integer)this.rangeMin.basicGetValue();
        this.rangeMin.basicSetValue((Object)newRangeMin);
        boolean oldRangeMinESet = this.rangeMinESet;
        this.rangeMinESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldRangeMin, (Object)newRangeMin, !oldRangeMinESet));
        }
    }

    public void unsetRangeMin() {
        Integer oldRangeMin = (Integer)this.rangeMin.basicGetValue();
        boolean oldRangeMinESet = this.rangeMinESet;
        this.rangeMin = RANGE_MIN_EDEFAULT.clone();
        this.rangeMinESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldRangeMin, (Object)RANGE_MIN_EDEFAULT, oldRangeMinESet));
        }
    }

    public boolean isSetRangeMin() {
        return this.rangeMinESet;
    }

    public IntegerDatatype getRangeMaxData() {
        return this.rangeMax.clone();
    }

    public void setRangeMaxData(IntegerDatatype newRangeMax) {
        this.rangeMax.setRadix((int)newRangeMax.getRadix());
        this.rangeMax.setNoOfDigits((int)newRangeMax.getNoOfDigits());
        this.setRangeMax(newRangeMax.getValue());
    }

    public IntegerDatatype getRangeMinData() {
        return this.rangeMin.clone();
    }

    public void setRangeMinData(IntegerDatatype newRangeMin) {
        this.rangeMin.setRadix((int)newRangeMin.getRadix());
        this.rangeMin.setNoOfDigits((int)newRangeMin.getNoOfDigits());
        this.setRangeMin(newRangeMin.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayFifoConfiguration((FlexrayFifoConfiguration)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetFlexrayFifoConfiguration(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, FlexrayFifoConfiguration.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayFifoConfiguration();
            }
            case 5: {
                return this.getRangeMax();
            }
            case 6: {
                return this.getRangeMin();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFlexrayFifoConfiguration((FlexrayFifoConfiguration)newValue);
                return;
            }
            case 5: {
                this.setRangeMax((Integer)newValue);
                return;
            }
            case 6: {
                this.setRangeMin((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFlexrayFifoConfiguration(null);
                return;
            }
            case 5: {
                this.unsetRangeMax();
                return;
            }
            case 6: {
                this.unsetRangeMin();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayFifoConfiguration() != null;
            }
            case 5: {
                return this.isSetRangeMax();
            }
            case 6: {
                return this.isSetRangeMin();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (rangeMax: ");
        if (this.rangeMaxESet) {
            result.append(this.rangeMax);
        } else {
            result.append("<unset>");
        }
        result.append(", rangeMin: ");
        if (this.rangeMinESet) {
            result.append(this.rangeMin);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

