/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.swcinternalbehavior.rteevents.impl;

import autosar40.commonstructure.modedeclaration.ModeActivationKind;
import autosar40.swcomponent.components.instancerefs.RModeInAtomicSwcInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.rteevents.RteeventsPackage;
import autosar40.swcomponent.swcinternalbehavior.rteevents.SwcModeSwitchEvent;
import autosar40.swcomponent.swcinternalbehavior.rteevents.impl.RTEEventImpl;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwcModeSwitchEventImpl
extends RTEEventImpl
implements SwcModeSwitchEvent {
    protected static final ModeActivationKind ACTIVATION_EDEFAULT = ModeActivationKind.ON_ENTRY;
    protected ModeActivationKind activation = ACTIVATION_EDEFAULT;
    protected boolean activationESet;
    protected EList<RModeInAtomicSwcInstanceRef> modes;

    protected SwcModeSwitchEventImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return RteeventsPackage.Literals.SWC_MODE_SWITCH_EVENT;
    }

    @Override
    public ModeActivationKind getActivation() {
        return this.activation;
    }

    @Override
    public void setActivation(ModeActivationKind newActivation) {
        ModeActivationKind oldActivation = this.activation;
        this.activation = newActivation == null ? ACTIVATION_EDEFAULT : newActivation;
        boolean oldActivationESet = this.activationESet;
        this.activationESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldActivation, (Object)this.activation, !oldActivationESet));
        }
    }

    @Override
    public void unsetActivation() {
        ModeActivationKind oldActivation = this.activation;
        boolean oldActivationESet = this.activationESet;
        this.activation = ACTIVATION_EDEFAULT;
        this.activationESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldActivation, (Object)ACTIVATION_EDEFAULT, oldActivationESet));
        }
    }

    @Override
    public boolean isSetActivation() {
        return this.activationESet;
    }

    @Override
    public EList<RModeInAtomicSwcInstanceRef> getModes() {
        if (this.modes == null) {
            this.modes = new EObjectContainmentEList(RModeInAtomicSwcInstanceRef.class, (InternalEObject)this, 25);
        }
        return this.modes;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 25: {
                return ((InternalEList)this.getModes()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                return this.getActivation();
            }
            case 25: {
                return this.getModes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setActivation((ModeActivationKind)((Object)newValue));
                return;
            }
            case 25: {
                this.getModes().clear();
                this.getModes().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.unsetActivation();
                return;
            }
            case 25: {
                this.getModes().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.isSetActivation();
            }
            case 25: {
                return this.modes != null && !this.modes.isEmpty();
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

