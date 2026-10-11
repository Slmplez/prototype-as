/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayAbsolutelyScheduledTiming;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar40.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationCycle;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class FlexrayAbsolutelyScheduledTimingImpl
extends ARObjectImpl
implements FlexrayAbsolutelyScheduledTiming {
    protected CommunicationCycle communicationCycle;
    protected static final PositiveIntegerDatatype SLOT_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype slotID = SLOT_ID_EDEFAULT.clone();
    protected boolean slotIDESet;

    protected FlexrayAbsolutelyScheduledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraycommunicationPackage.Literals.FLEXRAY_ABSOLUTELY_SCHEDULED_TIMING;
    }

    public FlexrayFrameTriggering getFlexrayFrameTriggering() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (FlexrayFrameTriggering)this.eContainer();
    }

    public NotificationChain basicSetFlexrayFrameTriggering(FlexrayFrameTriggering newFlexrayFrameTriggering, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newFlexrayFrameTriggering, 4, msgs);
        return msgs;
    }

    public void setFlexrayFrameTriggering(FlexrayFrameTriggering newFlexrayFrameTriggering) {
        if (newFlexrayFrameTriggering != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newFlexrayFrameTriggering != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newFlexrayFrameTriggering)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newFlexrayFrameTriggering != null) {
                msgs = ((InternalEObject)newFlexrayFrameTriggering).eInverseAdd((InternalEObject)this, 23, FlexrayFrameTriggering.class, msgs);
            }
            if ((msgs = this.basicSetFlexrayFrameTriggering(newFlexrayFrameTriggering, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newFlexrayFrameTriggering, (Object)newFlexrayFrameTriggering));
        }
    }

    public CommunicationCycle getCommunicationCycle() {
        return this.communicationCycle;
    }

    public NotificationChain basicSetCommunicationCycle(CommunicationCycle newCommunicationCycle, NotificationChain msgs) {
        CommunicationCycle oldCommunicationCycle = this.communicationCycle;
        this.communicationCycle = newCommunicationCycle;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldCommunicationCycle, (Object)newCommunicationCycle);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCommunicationCycle(CommunicationCycle newCommunicationCycle) {
        if (newCommunicationCycle != this.communicationCycle) {
            NotificationChain msgs = null;
            if (this.communicationCycle != null) {
                msgs = ((InternalEObject)this.communicationCycle).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newCommunicationCycle != null) {
                msgs = ((InternalEObject)newCommunicationCycle).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetCommunicationCycle(newCommunicationCycle, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCommunicationCycle, (Object)newCommunicationCycle));
        }
    }

    public Long getSlotID() {
        return (Long)this.slotID.basicGetValue();
    }

    public void setSlotID(Long newSlotID) {
        Long oldSlotID = (Long)this.slotID.basicGetValue();
        this.slotID.basicSetValue((Object)newSlotID);
        boolean oldSlotIDESet = this.slotIDESet;
        this.slotIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSlotID, (Object)newSlotID, !oldSlotIDESet));
        }
    }

    public void unsetSlotID() {
        Long oldSlotID = (Long)this.slotID.basicGetValue();
        boolean oldSlotIDESet = this.slotIDESet;
        this.slotID = SLOT_ID_EDEFAULT.clone();
        this.slotIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSlotID, (Object)SLOT_ID_EDEFAULT, oldSlotIDESet));
        }
    }

    public boolean isSetSlotID() {
        return this.slotIDESet;
    }

    public PositiveIntegerDatatype getSlotIDData() {
        return this.slotID.clone();
    }

    public void setSlotIDData(PositiveIntegerDatatype newSlotID) {
        this.slotID.setRadix((int)newSlotID.getRadix());
        this.slotID.setNoOfDigits((int)newSlotID.getNoOfDigits());
        this.setSlotID(newSlotID.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayFrameTriggering((FlexrayFrameTriggering)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetFlexrayFrameTriggering(null, msgs);
            }
            case 5: {
                return this.basicSetCommunicationCycle(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 23, FlexrayFrameTriggering.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayFrameTriggering();
            }
            case 5: {
                return this.getCommunicationCycle();
            }
            case 6: {
                return this.getSlotID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setFlexrayFrameTriggering((FlexrayFrameTriggering)newValue);
                return;
            }
            case 5: {
                this.setCommunicationCycle((CommunicationCycle)newValue);
                return;
            }
            case 6: {
                this.setSlotID((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setFlexrayFrameTriggering(null);
                return;
            }
            case 5: {
                this.setCommunicationCycle(null);
                return;
            }
            case 6: {
                this.unsetSlotID();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getFlexrayFrameTriggering() != null;
            }
            case 5: {
                return this.communicationCycle != null;
            }
            case 6: {
                return this.isSetSlotID();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (slotID: ");
        if (this.slotIDESet) {
            result.append(this.slotID);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

