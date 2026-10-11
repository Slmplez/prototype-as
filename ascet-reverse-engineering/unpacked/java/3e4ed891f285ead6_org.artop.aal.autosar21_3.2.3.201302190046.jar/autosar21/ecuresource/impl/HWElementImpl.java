/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.ecuresource.impl;

import autosar21.ecuresource.EcuresourcePackage;
import autosar21.ecuresource.HWElement;
import autosar21.ecuresource.HWElementContainer;
import autosar21.ecuresource.HWPort;
import autosar21.ecuresource.SignalTransformation;
import autosar21.ecuresource.basicelements.SupportsSafety;
import autosar21.ecuresource.basicelements.SupportsSecurity;
import autosar21.ecuresource.basicelements.Temperature;
import autosar21.genericstructure.infrastructure.identifiable.impl.ARElementImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public abstract class HWElementImpl
extends ARElementImpl
implements HWElement {
    protected Temperature hwElementTemperature;
    protected EList<HWPort> ports;
    protected EList<SignalTransformation> signalTransformations;
    protected static final Double STANDBY_CURRENT_EDEFAULT = new Double(0.0);
    protected Double standbyCurrent = STANDBY_CURRENT_EDEFAULT;
    protected boolean standbyCurrentESet;
    protected SupportsSafety supportsSafety;
    protected SupportsSecurity supportsSecurity;

    protected HWElementImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return EcuresourcePackage.Literals.HW_ELEMENT;
    }

    @Override
    public HWElementContainer getHWElementContainer() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (HWElementContainer)this.eContainer();
    }

    public NotificationChain basicSetHWElementContainer(HWElementContainer newHWElementContainer, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newHWElementContainer, 18, msgs);
        return msgs;
    }

    @Override
    public void setHWElementContainer(HWElementContainer newHWElementContainer) {
        if (newHWElementContainer != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newHWElementContainer != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newHWElementContainer)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newHWElementContainer != null) {
                msgs = ((InternalEObject)newHWElementContainer).eInverseAdd((InternalEObject)this, 26, HWElementContainer.class, msgs);
            }
            if ((msgs = this.basicSetHWElementContainer(newHWElementContainer, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newHWElementContainer, (Object)newHWElementContainer));
        }
    }

    @Override
    public Temperature getHwElementTemperature() {
        return this.hwElementTemperature;
    }

    public NotificationChain basicSetHwElementTemperature(Temperature newHwElementTemperature, NotificationChain msgs) {
        Temperature oldHwElementTemperature = this.hwElementTemperature;
        this.hwElementTemperature = newHwElementTemperature;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldHwElementTemperature, (Object)newHwElementTemperature);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHwElementTemperature(Temperature newHwElementTemperature) {
        if (newHwElementTemperature != this.hwElementTemperature) {
            NotificationChain msgs = null;
            if (this.hwElementTemperature != null) {
                msgs = ((InternalEObject)this.hwElementTemperature).eInverseRemove((InternalEObject)this, 4, Temperature.class, msgs);
            }
            if (newHwElementTemperature != null) {
                msgs = ((InternalEObject)newHwElementTemperature).eInverseAdd((InternalEObject)this, 4, Temperature.class, msgs);
            }
            if ((msgs = this.basicSetHwElementTemperature(newHwElementTemperature, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newHwElementTemperature, (Object)newHwElementTemperature));
        }
    }

    @Override
    public EList<HWPort> getPorts() {
        if (this.ports == null) {
            this.ports = new EObjectContainmentWithInverseEList(HWPort.class, (InternalEObject)this, 20, 16);
        }
        return this.ports;
    }

    @Override
    public EList<SignalTransformation> getSignalTransformations() {
        if (this.signalTransformations == null) {
            this.signalTransformations = new EObjectContainmentWithInverseEList(SignalTransformation.class, (InternalEObject)this, 21, 4);
        }
        return this.signalTransformations;
    }

    @Override
    public Double getStandbyCurrent() {
        return this.standbyCurrent;
    }

    @Override
    public void setStandbyCurrent(Double newStandbyCurrent) {
        Double oldStandbyCurrent = this.standbyCurrent;
        this.standbyCurrent = newStandbyCurrent;
        boolean oldStandbyCurrentESet = this.standbyCurrentESet;
        this.standbyCurrentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldStandbyCurrent, (Object)this.standbyCurrent, !oldStandbyCurrentESet));
        }
    }

    @Override
    public void unsetStandbyCurrent() {
        Double oldStandbyCurrent = this.standbyCurrent;
        boolean oldStandbyCurrentESet = this.standbyCurrentESet;
        this.standbyCurrent = STANDBY_CURRENT_EDEFAULT;
        this.standbyCurrentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldStandbyCurrent, (Object)STANDBY_CURRENT_EDEFAULT, oldStandbyCurrentESet));
        }
    }

    @Override
    public boolean isSetStandbyCurrent() {
        return this.standbyCurrentESet;
    }

    @Override
    public SupportsSafety getSupportsSafety() {
        return this.supportsSafety;
    }

    public NotificationChain basicSetSupportsSafety(SupportsSafety newSupportsSafety, NotificationChain msgs) {
        SupportsSafety oldSupportsSafety = this.supportsSafety;
        this.supportsSafety = newSupportsSafety;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldSupportsSafety, (Object)newSupportsSafety);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSupportsSafety(SupportsSafety newSupportsSafety) {
        if (newSupportsSafety != this.supportsSafety) {
            NotificationChain msgs = null;
            if (this.supportsSafety != null) {
                msgs = ((InternalEObject)this.supportsSafety).eInverseRemove((InternalEObject)this, 4, SupportsSafety.class, msgs);
            }
            if (newSupportsSafety != null) {
                msgs = ((InternalEObject)newSupportsSafety).eInverseAdd((InternalEObject)this, 4, SupportsSafety.class, msgs);
            }
            if ((msgs = this.basicSetSupportsSafety(newSupportsSafety, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newSupportsSafety, (Object)newSupportsSafety));
        }
    }

    @Override
    public SupportsSecurity getSupportsSecurity() {
        return this.supportsSecurity;
    }

    public NotificationChain basicSetSupportsSecurity(SupportsSecurity newSupportsSecurity, NotificationChain msgs) {
        SupportsSecurity oldSupportsSecurity = this.supportsSecurity;
        this.supportsSecurity = newSupportsSecurity;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldSupportsSecurity, (Object)newSupportsSecurity);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSupportsSecurity(SupportsSecurity newSupportsSecurity) {
        if (newSupportsSecurity != this.supportsSecurity) {
            NotificationChain msgs = null;
            if (this.supportsSecurity != null) {
                msgs = ((InternalEObject)this.supportsSecurity).eInverseRemove((InternalEObject)this, 4, SupportsSecurity.class, msgs);
            }
            if (newSupportsSecurity != null) {
                msgs = ((InternalEObject)newSupportsSecurity).eInverseAdd((InternalEObject)this, 4, SupportsSecurity.class, msgs);
            }
            if ((msgs = this.basicSetSupportsSecurity(newSupportsSecurity, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newSupportsSecurity, (Object)newSupportsSecurity));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetHWElementContainer((HWElementContainer)otherEnd, msgs);
            }
            case 19: {
                if (this.hwElementTemperature != null) {
                    msgs = ((InternalEObject)this.hwElementTemperature).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetHwElementTemperature((Temperature)otherEnd, msgs);
            }
            case 20: {
                return ((InternalEList)this.getPorts()).basicAdd((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSignalTransformations()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                if (this.supportsSafety != null) {
                    msgs = ((InternalEObject)this.supportsSafety).eInverseRemove((InternalEObject)this, -24, null, msgs);
                }
                return this.basicSetSupportsSafety((SupportsSafety)otherEnd, msgs);
            }
            case 24: {
                if (this.supportsSecurity != null) {
                    msgs = ((InternalEObject)this.supportsSecurity).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetSupportsSecurity((SupportsSecurity)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetHWElementContainer(null, msgs);
            }
            case 19: {
                return this.basicSetHwElementTemperature(null, msgs);
            }
            case 20: {
                return ((InternalEList)this.getPorts()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getSignalTransformations()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetSupportsSafety(null, msgs);
            }
            case 24: {
                return this.basicSetSupportsSecurity(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 26, HWElementContainer.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getHWElementContainer();
            }
            case 19: {
                return this.getHwElementTemperature();
            }
            case 20: {
                return this.getPorts();
            }
            case 21: {
                return this.getSignalTransformations();
            }
            case 22: {
                return this.getStandbyCurrent();
            }
            case 23: {
                return this.getSupportsSafety();
            }
            case 24: {
                return this.getSupportsSecurity();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setHWElementContainer((HWElementContainer)newValue);
                return;
            }
            case 19: {
                this.setHwElementTemperature((Temperature)newValue);
                return;
            }
            case 20: {
                this.getPorts().clear();
                this.getPorts().addAll((Collection)newValue);
                return;
            }
            case 21: {
                this.getSignalTransformations().clear();
                this.getSignalTransformations().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setStandbyCurrent((Double)newValue);
                return;
            }
            case 23: {
                this.setSupportsSafety((SupportsSafety)newValue);
                return;
            }
            case 24: {
                this.setSupportsSecurity((SupportsSecurity)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setHWElementContainer(null);
                return;
            }
            case 19: {
                this.setHwElementTemperature(null);
                return;
            }
            case 20: {
                this.getPorts().clear();
                return;
            }
            case 21: {
                this.getSignalTransformations().clear();
                return;
            }
            case 22: {
                this.unsetStandbyCurrent();
                return;
            }
            case 23: {
                this.setSupportsSafety(null);
                return;
            }
            case 24: {
                this.setSupportsSecurity(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getHWElementContainer() != null;
            }
            case 19: {
                return this.hwElementTemperature != null;
            }
            case 20: {
                return this.ports != null && !this.ports.isEmpty();
            }
            case 21: {
                return this.signalTransformations != null && !this.signalTransformations.isEmpty();
            }
            case 22: {
                return this.isSetStandbyCurrent();
            }
            case 23: {
                return this.supportsSafety != null;
            }
            case 24: {
                return this.supportsSecurity != null;
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (standbyCurrent: ");
        if (this.standbyCurrentESet) {
            result.append(this.standbyCurrent);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

