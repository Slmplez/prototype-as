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
package autosar3x.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar3x.swcomponent.modedeclaration.ModeActivationKind;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.ModeSwitchEvent;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import autosar3x.swcomponent.swcinternalbehavior.rteevents.instanceref.ModeSwitchEventMode;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ModeSwitchEventImpl
extends RTEEventImpl
implements ModeSwitchEvent {
    protected static final ModeActivationKind ACTIVATION_EDEFAULT = ModeActivationKind.ENTRY;
    protected ModeActivationKind activation = ACTIVATION_EDEFAULT;
    protected boolean activationESet;
    protected ModeSwitchEventMode mode;

    protected ModeSwitchEventImpl() {
    }

    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.MODE_SWITCH_EVENT;
    }

    public ModeActivationKind getActivation() {
        return this.activation;
    }

    public void setActivation(ModeActivationKind newActivation) {
        ModeActivationKind oldActivation = this.activation;
        this.activation = newActivation == null ? ACTIVATION_EDEFAULT : newActivation;
        boolean oldActivationESet = this.activationESet;
        this.activationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldActivation, (Object)this.activation, !oldActivationESet));
        }
    }

    public void unsetActivation() {
        ModeActivationKind oldActivation = this.activation;
        boolean oldActivationESet = this.activationESet;
        this.activation = ACTIVATION_EDEFAULT;
        this.activationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldActivation, (Object)ACTIVATION_EDEFAULT, oldActivationESet));
        }
    }

    public boolean isSetActivation() {
        return this.activationESet;
    }

    public ModeSwitchEventMode getMode() {
        return this.mode;
    }

    public NotificationChain basicSetMode(ModeSwitchEventMode newMode, NotificationChain msgs) {
        ModeSwitchEventMode oldMode = this.mode;
        this.mode = newMode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldMode, (Object)newMode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMode(ModeSwitchEventMode newMode) {
        if (newMode != this.mode) {
            NotificationChain msgs = null;
            if (this.mode != null) {
                msgs = ((InternalEObject)this.mode).eInverseRemove((InternalEObject)this, 7, ModeSwitchEventMode.class, msgs);
            }
            if (newMode != null) {
                msgs = ((InternalEObject)newMode).eInverseAdd((InternalEObject)this, 7, ModeSwitchEventMode.class, msgs);
            }
            if ((msgs = this.basicSetMode(newMode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newMode, (Object)newMode));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.mode != null) {
                    msgs = ((InternalEObject)this.mode).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetMode((ModeSwitchEventMode)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetMode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getActivation();
            }
            case 22: {
                return this.getMode();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setActivation((ModeActivationKind)((Object)newValue));
                return;
            }
            case 22: {
                this.setMode((ModeSwitchEventMode)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetActivation();
                return;
            }
            case 22: {
                this.setMode(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetActivation();
            }
            case 22: {
                return this.mode != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (activation: ");
        if (this.activationESet) {
            result.append((Object)this.activation);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

