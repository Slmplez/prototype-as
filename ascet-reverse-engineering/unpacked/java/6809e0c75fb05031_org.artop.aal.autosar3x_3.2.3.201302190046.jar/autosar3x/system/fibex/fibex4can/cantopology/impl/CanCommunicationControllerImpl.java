/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar3x.system.fibex.fibex4can.cantopology.impl;

import autosar3x.system.fibex.fibex4can.cantopology.AbstractCanCommunicationControllerAttributes;
import autosar3x.system.fibex.fibex4can.cantopology.CanCommunicationController;
import autosar3x.system.fibex.fibex4can.cantopology.CantopologyPackage;
import autosar3x.system.fibex.fibexcore.coretopology.impl.CommunicationControllerImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class CanCommunicationControllerImpl
extends CommunicationControllerImpl
implements CanCommunicationController {
    protected AbstractCanCommunicationControllerAttributes canControllerAttributes;
    protected static final Double NM_MSG_CYCLE_OFFSET_EDEFAULT = new Double(0.0);
    protected Double nmMsgCycleOffset = NM_MSG_CYCLE_OFFSET_EDEFAULT;
    protected boolean nmMsgCycleOffsetESet;
    protected static final Double NM_MSG_REDUCED_TIME_EDEFAULT = new Double(0.0);
    protected Double nmMsgReducedTime = NM_MSG_REDUCED_TIME_EDEFAULT;
    protected boolean nmMsgReducedTimeESet;
    protected static final Boolean NM_USER_DATA_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmUserDataEnabled = NM_USER_DATA_ENABLED_EDEFAULT;
    protected boolean nmUserDataEnabledESet;

    protected CanCommunicationControllerImpl() {
    }

    protected EClass eStaticClass() {
        return CantopologyPackage.Literals.CAN_COMMUNICATION_CONTROLLER;
    }

    public AbstractCanCommunicationControllerAttributes getCanControllerAttributes() {
        return this.canControllerAttributes;
    }

    public NotificationChain basicSetCanControllerAttributes(AbstractCanCommunicationControllerAttributes newCanControllerAttributes, NotificationChain msgs) {
        AbstractCanCommunicationControllerAttributes oldCanControllerAttributes = this.canControllerAttributes;
        this.canControllerAttributes = newCanControllerAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldCanControllerAttributes, (Object)newCanControllerAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setCanControllerAttributes(AbstractCanCommunicationControllerAttributes newCanControllerAttributes) {
        if (newCanControllerAttributes != this.canControllerAttributes) {
            NotificationChain msgs = null;
            if (this.canControllerAttributes != null) {
                msgs = ((InternalEObject)this.canControllerAttributes).eInverseRemove((InternalEObject)this, 4, AbstractCanCommunicationControllerAttributes.class, msgs);
            }
            if (newCanControllerAttributes != null) {
                msgs = ((InternalEObject)newCanControllerAttributes).eInverseAdd((InternalEObject)this, 4, AbstractCanCommunicationControllerAttributes.class, msgs);
            }
            if ((msgs = this.basicSetCanControllerAttributes(newCanControllerAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newCanControllerAttributes, (Object)newCanControllerAttributes));
        }
    }

    public Double getNmMsgCycleOffset() {
        return this.nmMsgCycleOffset;
    }

    public void setNmMsgCycleOffset(Double newNmMsgCycleOffset) {
        Double oldNmMsgCycleOffset = this.nmMsgCycleOffset;
        this.nmMsgCycleOffset = newNmMsgCycleOffset;
        boolean oldNmMsgCycleOffsetESet = this.nmMsgCycleOffsetESet;
        this.nmMsgCycleOffsetESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldNmMsgCycleOffset, (Object)this.nmMsgCycleOffset, !oldNmMsgCycleOffsetESet));
        }
    }

    public void unsetNmMsgCycleOffset() {
        Double oldNmMsgCycleOffset = this.nmMsgCycleOffset;
        boolean oldNmMsgCycleOffsetESet = this.nmMsgCycleOffsetESet;
        this.nmMsgCycleOffset = NM_MSG_CYCLE_OFFSET_EDEFAULT;
        this.nmMsgCycleOffsetESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldNmMsgCycleOffset, (Object)NM_MSG_CYCLE_OFFSET_EDEFAULT, oldNmMsgCycleOffsetESet));
        }
    }

    public boolean isSetNmMsgCycleOffset() {
        return this.nmMsgCycleOffsetESet;
    }

    public Double getNmMsgReducedTime() {
        return this.nmMsgReducedTime;
    }

    public void setNmMsgReducedTime(Double newNmMsgReducedTime) {
        Double oldNmMsgReducedTime = this.nmMsgReducedTime;
        this.nmMsgReducedTime = newNmMsgReducedTime;
        boolean oldNmMsgReducedTimeESet = this.nmMsgReducedTimeESet;
        this.nmMsgReducedTimeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldNmMsgReducedTime, (Object)this.nmMsgReducedTime, !oldNmMsgReducedTimeESet));
        }
    }

    public void unsetNmMsgReducedTime() {
        Double oldNmMsgReducedTime = this.nmMsgReducedTime;
        boolean oldNmMsgReducedTimeESet = this.nmMsgReducedTimeESet;
        this.nmMsgReducedTime = NM_MSG_REDUCED_TIME_EDEFAULT;
        this.nmMsgReducedTimeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldNmMsgReducedTime, (Object)NM_MSG_REDUCED_TIME_EDEFAULT, oldNmMsgReducedTimeESet));
        }
    }

    public boolean isSetNmMsgReducedTime() {
        return this.nmMsgReducedTimeESet;
    }

    public Boolean getNmUserDataEnabled() {
        return this.nmUserDataEnabled;
    }

    public void setNmUserDataEnabled(Boolean newNmUserDataEnabled) {
        Boolean oldNmUserDataEnabled = this.nmUserDataEnabled;
        this.nmUserDataEnabled = newNmUserDataEnabled;
        boolean oldNmUserDataEnabledESet = this.nmUserDataEnabledESet;
        this.nmUserDataEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldNmUserDataEnabled, (Object)this.nmUserDataEnabled, !oldNmUserDataEnabledESet));
        }
    }

    public void unsetNmUserDataEnabled() {
        Boolean oldNmUserDataEnabled = this.nmUserDataEnabled;
        boolean oldNmUserDataEnabledESet = this.nmUserDataEnabledESet;
        this.nmUserDataEnabled = NM_USER_DATA_ENABLED_EDEFAULT;
        this.nmUserDataEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldNmUserDataEnabled, (Object)NM_USER_DATA_ENABLED_EDEFAULT, oldNmUserDataEnabledESet));
        }
    }

    public boolean isSetNmUserDataEnabled() {
        return this.nmUserDataEnabledESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                if (this.canControllerAttributes != null) {
                    msgs = ((InternalEObject)this.canControllerAttributes).eInverseRemove((InternalEObject)this, -20, null, msgs);
                }
                return this.basicSetCanControllerAttributes((AbstractCanCommunicationControllerAttributes)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetCanControllerAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                return this.getCanControllerAttributes();
            }
            case 20: {
                return this.getNmMsgCycleOffset();
            }
            case 21: {
                return this.getNmMsgReducedTime();
            }
            case 22: {
                return this.getNmUserDataEnabled();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setCanControllerAttributes((AbstractCanCommunicationControllerAttributes)newValue);
                return;
            }
            case 20: {
                this.setNmMsgCycleOffset((Double)newValue);
                return;
            }
            case 21: {
                this.setNmMsgReducedTime((Double)newValue);
                return;
            }
            case 22: {
                this.setNmUserDataEnabled((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setCanControllerAttributes(null);
                return;
            }
            case 20: {
                this.unsetNmMsgCycleOffset();
                return;
            }
            case 21: {
                this.unsetNmMsgReducedTime();
                return;
            }
            case 22: {
                this.unsetNmUserDataEnabled();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.canControllerAttributes != null;
            }
            case 20: {
                return this.isSetNmMsgCycleOffset();
            }
            case 21: {
                return this.isSetNmMsgReducedTime();
            }
            case 22: {
                return this.isSetNmUserDataEnabled();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmMsgCycleOffset: ");
        if (this.nmMsgCycleOffsetESet) {
            result.append(this.nmMsgCycleOffset);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMsgReducedTime: ");
        if (this.nmMsgReducedTimeESet) {
            result.append(this.nmMsgReducedTime);
        } else {
            result.append("<unset>");
        }
        result.append(", nmUserDataEnabled: ");
        if (this.nmUserDataEnabledESet) {
            result.append(this.nmUserDataEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

