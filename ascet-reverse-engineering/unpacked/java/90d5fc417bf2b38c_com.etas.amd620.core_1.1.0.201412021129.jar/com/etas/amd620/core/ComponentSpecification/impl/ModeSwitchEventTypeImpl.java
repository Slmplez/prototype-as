/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchEventType;
import com.etas.amd620.core.ComponentSpecification.ModeSwitchTypeType;
import com.etas.amd620.core.ComponentSpecification.ModeT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ModeSwitchEventTypeImpl
extends MinimalEObjectImpl.Container
implements ModeSwitchEventType {
    protected ModeT assignedMode;
    protected static final ModeSwitchTypeType MODE_SWITCH_TYPE_EDEFAULT = ModeSwitchTypeType.ENTRY;
    protected ModeSwitchTypeType modeSwitchType = MODE_SWITCH_TYPE_EDEFAULT;
    protected boolean modeSwitchTypeESet;

    protected ModeSwitchEventTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getModeSwitchEventType();
    }

    @Override
    public ModeT getAssignedMode() {
        return this.assignedMode;
    }

    public NotificationChain basicSetAssignedMode(ModeT newAssignedMode, NotificationChain msgs) {
        ModeT oldAssignedMode = this.assignedMode;
        this.assignedMode = newAssignedMode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldAssignedMode, (Object)newAssignedMode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAssignedMode(ModeT newAssignedMode) {
        if (newAssignedMode != this.assignedMode) {
            NotificationChain msgs = null;
            if (this.assignedMode != null) {
                msgs = ((InternalEObject)this.assignedMode).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newAssignedMode != null) {
                msgs = ((InternalEObject)newAssignedMode).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetAssignedMode(newAssignedMode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newAssignedMode, (Object)newAssignedMode));
        }
    }

    @Override
    public ModeSwitchTypeType getModeSwitchType() {
        return this.modeSwitchType;
    }

    @Override
    public void setModeSwitchType(ModeSwitchTypeType newModeSwitchType) {
        ModeSwitchTypeType oldModeSwitchType = this.modeSwitchType;
        this.modeSwitchType = newModeSwitchType == null ? MODE_SWITCH_TYPE_EDEFAULT : newModeSwitchType;
        boolean oldModeSwitchTypeESet = this.modeSwitchTypeESet;
        this.modeSwitchTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldModeSwitchType, (Object)this.modeSwitchType, !oldModeSwitchTypeESet));
        }
    }

    @Override
    public void unsetModeSwitchType() {
        ModeSwitchTypeType oldModeSwitchType = this.modeSwitchType;
        boolean oldModeSwitchTypeESet = this.modeSwitchTypeESet;
        this.modeSwitchType = MODE_SWITCH_TYPE_EDEFAULT;
        this.modeSwitchTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 1, (Object)oldModeSwitchType, (Object)MODE_SWITCH_TYPE_EDEFAULT, oldModeSwitchTypeESet));
        }
    }

    @Override
    public boolean isSetModeSwitchType() {
        return this.modeSwitchTypeESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetAssignedMode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getAssignedMode();
            }
            case 1: {
                return this.getModeSwitchType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setAssignedMode((ModeT)newValue);
                return;
            }
            case 1: {
                this.setModeSwitchType((ModeSwitchTypeType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setAssignedMode(null);
                return;
            }
            case 1: {
                this.unsetModeSwitchType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.assignedMode != null;
            }
            case 1: {
                return this.isSetModeSwitchType();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (modeSwitchType: ");
        if (this.modeSwitchTypeESet) {
            result.append((Object)this.modeSwitchType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

