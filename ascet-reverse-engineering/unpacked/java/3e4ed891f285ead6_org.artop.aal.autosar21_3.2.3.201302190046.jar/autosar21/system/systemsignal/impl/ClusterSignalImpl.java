/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
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
package autosar21.system.systemsignal.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.pdustructure.SignalPosition;
import autosar21.system.systemsignal.ClusterSignal;
import autosar21.system.systemsignal.ClusterSignalReceiver;
import autosar21.system.systemsignal.ClusterSignalTransmitter;
import autosar21.system.systemsignal.SystemsignalPackage;
import java.util.Collection;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
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
public class ClusterSignalImpl
extends IdentifiableImpl
implements ClusterSignal,
IReferringClass {
    protected EList<ClusterSignalReceiver> receivers;
    protected SignalPosition signalPosition;
    protected ClusterSignalTransmitter transmitter;
    protected static final Integer UPDATE_INDICATION_BIT_POSITION_EDEFAULT = new Integer(0);
    protected Integer updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
    protected boolean updateIndicationBitPositionESet;

    protected ClusterSignalImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SystemsignalPackage.Literals.CLUSTER_SIGNAL;
    }

    @Override
    public PDUPrototype getPDUPrototype() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (PDUPrototype)this.eContainer();
    }

    public NotificationChain basicSetPDUPrototype(PDUPrototype newPDUPrototype, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newPDUPrototype, 16, msgs);
        return msgs;
    }

    @Override
    public void setPDUPrototype(PDUPrototype newPDUPrototype) {
        if (newPDUPrototype != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newPDUPrototype != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newPDUPrototype)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newPDUPrototype != null) {
                msgs = ((InternalEObject)newPDUPrototype).eInverseAdd((InternalEObject)this, 17, PDUPrototype.class, msgs);
            }
            if ((msgs = this.basicSetPDUPrototype(newPDUPrototype, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newPDUPrototype, (Object)newPDUPrototype));
        }
    }

    @Override
    public EList<ClusterSignalReceiver> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectContainmentWithInverseEList(ClusterSignalReceiver.class, (InternalEObject)this, 17, 4);
        }
        return this.receivers;
    }

    @Override
    public SignalPosition getSignalPosition() {
        if (this.signalPosition != null && this.signalPosition.eIsProxy()) {
            InternalEObject oldSignalPosition = (InternalEObject)this.signalPosition;
            this.signalPosition = (SignalPosition)this.eResolveProxy(oldSignalPosition);
            if (this.signalPosition != oldSignalPosition && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 18, (Object)oldSignalPosition, (Object)this.signalPosition));
            }
        }
        return this.signalPosition;
    }

    public SignalPosition basicGetSignalPosition() {
        return this.signalPosition;
    }

    @Override
    public void setSignalPosition(SignalPosition newSignalPosition) {
        SignalPosition oldSignalPosition = this.signalPosition;
        this.signalPosition = newSignalPosition;
        AutosarObjectUtil.setDest((EObject)this, (int)18, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSignalPosition, (Object)this.signalPosition));
        }
    }

    @Override
    public ClusterSignalTransmitter getTransmitter() {
        return this.transmitter;
    }

    public NotificationChain basicSetTransmitter(ClusterSignalTransmitter newTransmitter, NotificationChain msgs) {
        ClusterSignalTransmitter oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTransmitter, (Object)newTransmitter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransmitter(ClusterSignalTransmitter newTransmitter) {
        if (newTransmitter != this.transmitter) {
            NotificationChain msgs = null;
            if (this.transmitter != null) {
                msgs = ((InternalEObject)this.transmitter).eInverseRemove((InternalEObject)this, 4, ClusterSignalTransmitter.class, msgs);
            }
            if (newTransmitter != null) {
                msgs = ((InternalEObject)newTransmitter).eInverseAdd((InternalEObject)this, 4, ClusterSignalTransmitter.class, msgs);
            }
            if ((msgs = this.basicSetTransmitter(newTransmitter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newTransmitter, (Object)newTransmitter));
        }
    }

    @Override
    public Integer getUpdateIndicationBitPosition() {
        return this.updateIndicationBitPosition;
    }

    @Override
    public void setUpdateIndicationBitPosition(Integer newUpdateIndicationBitPosition) {
        Integer oldUpdateIndicationBitPosition = this.updateIndicationBitPosition;
        this.updateIndicationBitPosition = newUpdateIndicationBitPosition;
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPositionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldUpdateIndicationBitPosition, (Object)this.updateIndicationBitPosition, !oldUpdateIndicationBitPositionESet));
        }
    }

    @Override
    public void unsetUpdateIndicationBitPosition() {
        Integer oldUpdateIndicationBitPosition = this.updateIndicationBitPosition;
        boolean oldUpdateIndicationBitPositionESet = this.updateIndicationBitPositionESet;
        this.updateIndicationBitPosition = UPDATE_INDICATION_BIT_POSITION_EDEFAULT;
        this.updateIndicationBitPositionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldUpdateIndicationBitPosition, (Object)UPDATE_INDICATION_BIT_POSITION_EDEFAULT, oldUpdateIndicationBitPositionESet));
        }
    }

    @Override
    public boolean isSetUpdateIndicationBitPosition() {
        return this.updateIndicationBitPositionESet;
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetPDUPrototype((PDUPrototype)otherEnd, msgs);
            }
            case 17: {
                return ((InternalEList)this.getReceivers()).basicAdd((Object)otherEnd, msgs);
            }
            case 19: {
                if (this.transmitter != null) {
                    msgs = ((InternalEObject)this.transmitter).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetTransmitter((ClusterSignalTransmitter)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetPDUPrototype(null, msgs);
            }
            case 17: {
                return ((InternalEList)this.getReceivers()).basicRemove((Object)otherEnd, msgs);
            }
            case 19: {
                return this.basicSetTransmitter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 17, PDUPrototype.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getPDUPrototype();
            }
            case 17: {
                return this.getReceivers();
            }
            case 18: {
                if (resolve) {
                    return this.getSignalPosition();
                }
                return this.basicGetSignalPosition();
            }
            case 19: {
                return this.getTransmitter();
            }
            case 20: {
                return this.getUpdateIndicationBitPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setPDUPrototype((PDUPrototype)newValue);
                return;
            }
            case 17: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 18: {
                this.setSignalPosition((SignalPosition)newValue);
                return;
            }
            case 19: {
                this.setTransmitter((ClusterSignalTransmitter)newValue);
                return;
            }
            case 20: {
                this.setUpdateIndicationBitPosition((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setPDUPrototype(null);
                return;
            }
            case 17: {
                this.getReceivers().clear();
                return;
            }
            case 18: {
                this.setSignalPosition(null);
                return;
            }
            case 19: {
                this.setTransmitter(null);
                return;
            }
            case 20: {
                this.unsetUpdateIndicationBitPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getPDUPrototype() != null;
            }
            case 17: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 18: {
                return this.signalPosition != null;
            }
            case 19: {
                return this.transmitter != null;
            }
            case 20: {
                return this.isSetUpdateIndicationBitPosition();
            }
        }
        return super.eIsSet(featureID);
    }

    public void eSetReferringDest(int featureID, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)-1, (String)dest);
    }

    public void eSetReferringDest(int featureID, int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this, (int)featureID, (int)index, (String)dest);
    }

    public String eGetReferringDest(int featureID) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)-1);
    }

    public String eGetReferringDest(int featureID, int index) {
        return AutosarObjectUtil.getDest((EObject)this, (int)featureID, (int)index);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (UpdateIndicationBitPosition: ");
        if (this.updateIndicationBitPositionESet) {
            result.append(this.updateIndicationBitPosition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

