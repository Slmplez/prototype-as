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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import autosar21.system.communication.CommunicationMatrixType;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.Frame;
import autosar21.system.communication.PDUPrototype;
import autosar21.system.communication.Timing;
import autosar21.system.communication.instanceref.FrameReceiver;
import autosar21.system.communication.instanceref.FrameTransmitter;
import autosar21.system.communication.instanceref.FrameUsedPhysicalChannel;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class FrameImpl
extends IdentifiableImpl
implements Frame {
    protected static final Integer FRAME_ID_EDEFAULT = new Integer(0);
    protected Integer frameID = FRAME_ID_EDEFAULT;
    protected boolean frameIDESet;
    protected static final Integer FRAME_LENGTH_EDEFAULT = new Integer(0);
    protected Integer frameLength = FRAME_LENGTH_EDEFAULT;
    protected boolean frameLengthESet;
    protected EList<Timing> frameTimings;
    protected static final Double MINIMUM_DELAY_TIME_EDEFAULT = new Double(0.0);
    protected Double minimumDelayTime = MINIMUM_DELAY_TIME_EDEFAULT;
    protected boolean minimumDelayTimeESet;
    protected EList<PDUPrototype> pduPrototypes;
    protected EList<FrameReceiver> receivers;
    protected FrameTransmitter transmitter;
    protected FrameUsedPhysicalChannel usedPhysicalChannel;

    protected FrameImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.FRAME;
    }

    @Override
    public CommunicationMatrixType getCommunicationMatrixType() {
        if (this.eContainerFeatureID() != 16) {
            return null;
        }
        return (CommunicationMatrixType)this.eContainer();
    }

    public NotificationChain basicSetCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCommunicationMatrixType, 16, msgs);
        return msgs;
    }

    @Override
    public void setCommunicationMatrixType(CommunicationMatrixType newCommunicationMatrixType) {
        if (newCommunicationMatrixType != this.eInternalContainer() || this.eContainerFeatureID() != 16 && newCommunicationMatrixType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCommunicationMatrixType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCommunicationMatrixType != null) {
                msgs = ((InternalEObject)newCommunicationMatrixType).eInverseAdd((InternalEObject)this, 19, CommunicationMatrixType.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationMatrixType(newCommunicationMatrixType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newCommunicationMatrixType, (Object)newCommunicationMatrixType));
        }
    }

    @Override
    public Integer getFrameID() {
        return this.frameID;
    }

    @Override
    public void setFrameID(Integer newFrameID) {
        Integer oldFrameID = this.frameID;
        this.frameID = newFrameID;
        boolean oldFrameIDESet = this.frameIDESet;
        this.frameIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, (Object)oldFrameID, (Object)this.frameID, !oldFrameIDESet));
        }
    }

    @Override
    public void unsetFrameID() {
        Integer oldFrameID = this.frameID;
        boolean oldFrameIDESet = this.frameIDESet;
        this.frameID = FRAME_ID_EDEFAULT;
        this.frameIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 17, (Object)oldFrameID, (Object)FRAME_ID_EDEFAULT, oldFrameIDESet));
        }
    }

    @Override
    public boolean isSetFrameID() {
        return this.frameIDESet;
    }

    @Override
    public Integer getFrameLength() {
        return this.frameLength;
    }

    @Override
    public void setFrameLength(Integer newFrameLength) {
        Integer oldFrameLength = this.frameLength;
        this.frameLength = newFrameLength;
        boolean oldFrameLengthESet = this.frameLengthESet;
        this.frameLengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldFrameLength, (Object)this.frameLength, !oldFrameLengthESet));
        }
    }

    @Override
    public void unsetFrameLength() {
        Integer oldFrameLength = this.frameLength;
        boolean oldFrameLengthESet = this.frameLengthESet;
        this.frameLength = FRAME_LENGTH_EDEFAULT;
        this.frameLengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldFrameLength, (Object)FRAME_LENGTH_EDEFAULT, oldFrameLengthESet));
        }
    }

    @Override
    public boolean isSetFrameLength() {
        return this.frameLengthESet;
    }

    @Override
    public EList<Timing> getFrameTimings() {
        if (this.frameTimings == null) {
            this.frameTimings = new EObjectContainmentEList(Timing.class, (InternalEObject)this, 19);
        }
        return this.frameTimings;
    }

    @Override
    public Double getMinimumDelayTime() {
        return this.minimumDelayTime;
    }

    @Override
    public void setMinimumDelayTime(Double newMinimumDelayTime) {
        Double oldMinimumDelayTime = this.minimumDelayTime;
        this.minimumDelayTime = newMinimumDelayTime;
        boolean oldMinimumDelayTimeESet = this.minimumDelayTimeESet;
        this.minimumDelayTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldMinimumDelayTime, (Object)this.minimumDelayTime, !oldMinimumDelayTimeESet));
        }
    }

    @Override
    public void unsetMinimumDelayTime() {
        Double oldMinimumDelayTime = this.minimumDelayTime;
        boolean oldMinimumDelayTimeESet = this.minimumDelayTimeESet;
        this.minimumDelayTime = MINIMUM_DELAY_TIME_EDEFAULT;
        this.minimumDelayTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldMinimumDelayTime, (Object)MINIMUM_DELAY_TIME_EDEFAULT, oldMinimumDelayTimeESet));
        }
    }

    @Override
    public boolean isSetMinimumDelayTime() {
        return this.minimumDelayTimeESet;
    }

    @Override
    public EList<PDUPrototype> getPduPrototypes() {
        if (this.pduPrototypes == null) {
            this.pduPrototypes = new EObjectContainmentWithInverseEList(PDUPrototype.class, (InternalEObject)this, 21, 16);
        }
        return this.pduPrototypes;
    }

    @Override
    public EList<FrameReceiver> getReceivers() {
        if (this.receivers == null) {
            this.receivers = new EObjectContainmentWithInverseEList(FrameReceiver.class, (InternalEObject)this, 22, 4);
        }
        return this.receivers;
    }

    @Override
    public FrameTransmitter getTransmitter() {
        return this.transmitter;
    }

    public NotificationChain basicSetTransmitter(FrameTransmitter newTransmitter, NotificationChain msgs) {
        FrameTransmitter oldTransmitter = this.transmitter;
        this.transmitter = newTransmitter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTransmitter, (Object)newTransmitter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransmitter(FrameTransmitter newTransmitter) {
        if (newTransmitter != this.transmitter) {
            NotificationChain msgs = null;
            if (this.transmitter != null) {
                msgs = ((InternalEObject)this.transmitter).eInverseRemove((InternalEObject)this, 4, FrameTransmitter.class, msgs);
            }
            if (newTransmitter != null) {
                msgs = ((InternalEObject)newTransmitter).eInverseAdd((InternalEObject)this, 4, FrameTransmitter.class, msgs);
            }
            if ((msgs = this.basicSetTransmitter(newTransmitter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newTransmitter, (Object)newTransmitter));
        }
    }

    @Override
    public FrameUsedPhysicalChannel getUsedPhysicalChannel() {
        return this.usedPhysicalChannel;
    }

    public NotificationChain basicSetUsedPhysicalChannel(FrameUsedPhysicalChannel newUsedPhysicalChannel, NotificationChain msgs) {
        FrameUsedPhysicalChannel oldUsedPhysicalChannel = this.usedPhysicalChannel;
        this.usedPhysicalChannel = newUsedPhysicalChannel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldUsedPhysicalChannel, (Object)newUsedPhysicalChannel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setUsedPhysicalChannel(FrameUsedPhysicalChannel newUsedPhysicalChannel) {
        if (newUsedPhysicalChannel != this.usedPhysicalChannel) {
            NotificationChain msgs = null;
            if (this.usedPhysicalChannel != null) {
                msgs = ((InternalEObject)this.usedPhysicalChannel).eInverseRemove((InternalEObject)this, 4, FrameUsedPhysicalChannel.class, msgs);
            }
            if (newUsedPhysicalChannel != null) {
                msgs = ((InternalEObject)newUsedPhysicalChannel).eInverseAdd((InternalEObject)this, 4, FrameUsedPhysicalChannel.class, msgs);
            }
            if ((msgs = this.basicSetUsedPhysicalChannel(newUsedPhysicalChannel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)newUsedPhysicalChannel, (Object)newUsedPhysicalChannel));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCommunicationMatrixType((CommunicationMatrixType)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getPduPrototypes()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getReceivers()).basicAdd((Object)otherEnd, msgs);
            }
            case 23: {
                if (this.transmitter != null) {
                    msgs = ((InternalEObject)this.transmitter).eInverseRemove((InternalEObject)this, -24, null, msgs);
                }
                return this.basicSetTransmitter((FrameTransmitter)otherEnd, msgs);
            }
            case 24: {
                if (this.usedPhysicalChannel != null) {
                    msgs = ((InternalEObject)this.usedPhysicalChannel).eInverseRemove((InternalEObject)this, -25, null, msgs);
                }
                return this.basicSetUsedPhysicalChannel((FrameUsedPhysicalChannel)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 16: {
                return this.basicSetCommunicationMatrixType(null, msgs);
            }
            case 19: {
                return ((InternalEList)this.getFrameTimings()).basicRemove((Object)otherEnd, msgs);
            }
            case 21: {
                return ((InternalEList)this.getPduPrototypes()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return ((InternalEList)this.getReceivers()).basicRemove((Object)otherEnd, msgs);
            }
            case 23: {
                return this.basicSetTransmitter(null, msgs);
            }
            case 24: {
                return this.basicSetUsedPhysicalChannel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 16: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 19, CommunicationMatrixType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationMatrixType();
            }
            case 17: {
                return this.getFrameID();
            }
            case 18: {
                return this.getFrameLength();
            }
            case 19: {
                return this.getFrameTimings();
            }
            case 20: {
                return this.getMinimumDelayTime();
            }
            case 21: {
                return this.getPduPrototypes();
            }
            case 22: {
                return this.getReceivers();
            }
            case 23: {
                return this.getTransmitter();
            }
            case 24: {
                return this.getUsedPhysicalChannel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 16: {
                this.setCommunicationMatrixType((CommunicationMatrixType)newValue);
                return;
            }
            case 17: {
                this.setFrameID((Integer)newValue);
                return;
            }
            case 18: {
                this.setFrameLength((Integer)newValue);
                return;
            }
            case 19: {
                this.getFrameTimings().clear();
                this.getFrameTimings().addAll((Collection)newValue);
                return;
            }
            case 20: {
                this.setMinimumDelayTime((Double)newValue);
                return;
            }
            case 21: {
                this.getPduPrototypes().clear();
                this.getPduPrototypes().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.getReceivers().clear();
                this.getReceivers().addAll((Collection)newValue);
                return;
            }
            case 23: {
                this.setTransmitter((FrameTransmitter)newValue);
                return;
            }
            case 24: {
                this.setUsedPhysicalChannel((FrameUsedPhysicalChannel)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 16: {
                this.setCommunicationMatrixType(null);
                return;
            }
            case 17: {
                this.unsetFrameID();
                return;
            }
            case 18: {
                this.unsetFrameLength();
                return;
            }
            case 19: {
                this.getFrameTimings().clear();
                return;
            }
            case 20: {
                this.unsetMinimumDelayTime();
                return;
            }
            case 21: {
                this.getPduPrototypes().clear();
                return;
            }
            case 22: {
                this.getReceivers().clear();
                return;
            }
            case 23: {
                this.setTransmitter(null);
                return;
            }
            case 24: {
                this.setUsedPhysicalChannel(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 16: {
                return this.getCommunicationMatrixType() != null;
            }
            case 17: {
                return this.isSetFrameID();
            }
            case 18: {
                return this.isSetFrameLength();
            }
            case 19: {
                return this.frameTimings != null && !this.frameTimings.isEmpty();
            }
            case 20: {
                return this.isSetMinimumDelayTime();
            }
            case 21: {
                return this.pduPrototypes != null && !this.pduPrototypes.isEmpty();
            }
            case 22: {
                return this.receivers != null && !this.receivers.isEmpty();
            }
            case 23: {
                return this.transmitter != null;
            }
            case 24: {
                return this.usedPhysicalChannel != null;
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
        result.append(" (frameID: ");
        if (this.frameIDESet) {
            result.append(this.frameID);
        } else {
            result.append("<unset>");
        }
        result.append(", frameLength: ");
        if (this.frameLengthESet) {
            result.append(this.frameLength);
        } else {
            result.append("<unset>");
        }
        result.append(", minimumDelayTime: ");
        if (this.minimumDelayTimeESet) {
            result.append(this.minimumDelayTime);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

