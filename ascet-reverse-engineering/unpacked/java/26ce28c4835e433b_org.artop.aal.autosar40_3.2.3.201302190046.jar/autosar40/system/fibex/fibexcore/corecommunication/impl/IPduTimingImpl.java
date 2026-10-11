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
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.IPduTiming;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalIPdu;
import autosar40.system.fibex.fibexcore.corecommunication.timing.TransmissionModeDeclaration;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class IPduTimingImpl
extends ARObjectImpl
implements IPduTiming {
    protected static final Double MINIMUM_DELAY_EDEFAULT = new Double(0.0);
    protected Double minimumDelay = MINIMUM_DELAY_EDEFAULT;
    protected boolean minimumDelayESet;
    protected TransmissionModeDeclaration transmissionModeDeclaration;
    protected VariationPoint variationPoint;

    protected IPduTimingImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.IPDU_TIMING;
    }

    public ISignalIPdu getISignalIPdu() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ISignalIPdu)this.eContainer();
    }

    public NotificationChain basicSetISignalIPdu(ISignalIPdu newISignalIPdu, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newISignalIPdu, 4, msgs);
        return msgs;
    }

    public void setISignalIPdu(ISignalIPdu newISignalIPdu) {
        if (newISignalIPdu != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newISignalIPdu != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newISignalIPdu)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newISignalIPdu != null) {
                msgs = ((InternalEObject)newISignalIPdu).eInverseAdd((InternalEObject)this, 22, ISignalIPdu.class, msgs);
            }
            if ((msgs = this.basicSetISignalIPdu(newISignalIPdu, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newISignalIPdu, (Object)newISignalIPdu));
        }
    }

    public Double getMinimumDelay() {
        return this.minimumDelay;
    }

    public void setMinimumDelay(Double newMinimumDelay) {
        Double oldMinimumDelay = this.minimumDelay;
        this.minimumDelay = newMinimumDelay;
        boolean oldMinimumDelayESet = this.minimumDelayESet;
        this.minimumDelayESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMinimumDelay, (Object)this.minimumDelay, !oldMinimumDelayESet));
        }
    }

    public void unsetMinimumDelay() {
        Double oldMinimumDelay = this.minimumDelay;
        boolean oldMinimumDelayESet = this.minimumDelayESet;
        this.minimumDelay = MINIMUM_DELAY_EDEFAULT;
        this.minimumDelayESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldMinimumDelay, (Object)MINIMUM_DELAY_EDEFAULT, oldMinimumDelayESet));
        }
    }

    public boolean isSetMinimumDelay() {
        return this.minimumDelayESet;
    }

    public TransmissionModeDeclaration getTransmissionModeDeclaration() {
        return this.transmissionModeDeclaration;
    }

    public NotificationChain basicSetTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration, NotificationChain msgs) {
        TransmissionModeDeclaration oldTransmissionModeDeclaration = this.transmissionModeDeclaration;
        this.transmissionModeDeclaration = newTransmissionModeDeclaration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldTransmissionModeDeclaration, (Object)newTransmissionModeDeclaration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTransmissionModeDeclaration(TransmissionModeDeclaration newTransmissionModeDeclaration) {
        if (newTransmissionModeDeclaration != this.transmissionModeDeclaration) {
            NotificationChain msgs = null;
            if (this.transmissionModeDeclaration != null) {
                msgs = ((InternalEObject)this.transmissionModeDeclaration).eInverseRemove((InternalEObject)this, 4, TransmissionModeDeclaration.class, msgs);
            }
            if (newTransmissionModeDeclaration != null) {
                msgs = ((InternalEObject)newTransmissionModeDeclaration).eInverseAdd((InternalEObject)this, 4, TransmissionModeDeclaration.class, msgs);
            }
            if ((msgs = this.basicSetTransmissionModeDeclaration(newTransmissionModeDeclaration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newTransmissionModeDeclaration, (Object)newTransmissionModeDeclaration));
        }
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetISignalIPdu((ISignalIPdu)otherEnd, msgs);
            }
            case 6: {
                if (this.transmissionModeDeclaration != null) {
                    msgs = ((InternalEObject)this.transmissionModeDeclaration).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetTransmissionModeDeclaration((TransmissionModeDeclaration)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetISignalIPdu(null, msgs);
            }
            case 6: {
                return this.basicSetTransmissionModeDeclaration(null, msgs);
            }
            case 7: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, ISignalIPdu.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPdu();
            }
            case 5: {
                return this.getMinimumDelay();
            }
            case 6: {
                return this.getTransmissionModeDeclaration();
            }
            case 7: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setISignalIPdu((ISignalIPdu)newValue);
                return;
            }
            case 5: {
                this.setMinimumDelay((Double)newValue);
                return;
            }
            case 6: {
                this.setTransmissionModeDeclaration((TransmissionModeDeclaration)newValue);
                return;
            }
            case 7: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setISignalIPdu(null);
                return;
            }
            case 5: {
                this.unsetMinimumDelay();
                return;
            }
            case 6: {
                this.setTransmissionModeDeclaration(null);
                return;
            }
            case 7: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getISignalIPdu() != null;
            }
            case 5: {
                return this.isSetMinimumDelay();
            }
            case 6: {
                return this.transmissionModeDeclaration != null;
            }
            case 7: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (minimumDelay: ");
        if (this.minimumDelayESet) {
            result.append(this.minimumDelay);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

