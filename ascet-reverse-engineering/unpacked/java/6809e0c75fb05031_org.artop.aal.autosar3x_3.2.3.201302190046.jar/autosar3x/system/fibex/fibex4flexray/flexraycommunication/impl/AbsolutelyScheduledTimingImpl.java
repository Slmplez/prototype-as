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
package autosar3x.system.fibex.fibex4flexray.flexraycommunication.impl;

import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar3x.system.fibex.fibex4flexray.CommunicationCycle;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.AbsolutelyScheduledTiming;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexrayFrameTriggering;
import autosar3x.system.fibex.fibex4flexray.flexraycommunication.FlexraycommunicationPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class AbsolutelyScheduledTimingImpl
extends ARObjectImpl
implements AbsolutelyScheduledTiming {
    protected CommunicationCycle communicationCycle;
    protected static final Integer SLOT_ID_EDEFAULT = new Integer(0);
    protected Integer slotID = SLOT_ID_EDEFAULT;
    protected boolean slotIDESet;

    protected AbsolutelyScheduledTimingImpl() {
    }

    protected EClass eStaticClass() {
        return FlexraycommunicationPackage.Literals.ABSOLUTELY_SCHEDULED_TIMING;
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
                msgs = ((InternalEObject)newFlexrayFrameTriggering).eInverseAdd((InternalEObject)this, 21, FlexrayFrameTriggering.class, msgs);
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
                msgs = ((InternalEObject)this.communicationCycle).eInverseRemove((InternalEObject)this, 4, CommunicationCycle.class, msgs);
            }
            if (newCommunicationCycle != null) {
                msgs = ((InternalEObject)newCommunicationCycle).eInverseAdd((InternalEObject)this, 4, CommunicationCycle.class, msgs);
            }
            if ((msgs = this.basicSetCommunicationCycle(newCommunicationCycle, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newCommunicationCycle, (Object)newCommunicationCycle));
        }
    }

    public Integer getSlotID() {
        return this.slotID;
    }

    public void setSlotID(Integer newSlotID) {
        Integer oldSlotID = this.slotID;
        this.slotID = newSlotID;
        boolean oldSlotIDESet = this.slotIDESet;
        this.slotIDESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSlotID, (Object)this.slotID, !oldSlotIDESet));
        }
    }

    public void unsetSlotID() {
        Integer oldSlotID = this.slotID;
        boolean oldSlotIDESet = this.slotIDESet;
        this.slotID = SLOT_ID_EDEFAULT;
        this.slotIDESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSlotID, (Object)SLOT_ID_EDEFAULT, oldSlotIDESet));
        }
    }

    public boolean isSetSlotID() {
        return this.slotIDESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetFlexrayFrameTriggering((FlexrayFrameTriggering)otherEnd, msgs);
            }
            case 5: {
                if (this.communicationCycle != null) {
                    msgs = ((InternalEObject)this.communicationCycle).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetCommunicationCycle((CommunicationCycle)otherEnd, msgs);
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
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 21, FlexrayFrameTriggering.class, msgs);
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
                this.setSlotID((Integer)newValue);
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

