/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar21.system.communication.impl;

import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import autosar21.system.communication.CommunicationPackage;
import autosar21.system.communication.SignalTrigger;
import autosar21.system.communication.SignalTriggerDataEventConditionEnum;
import autosar21.system.systemsignal.ClusterSignal;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SignalTriggerImpl
extends ARObjectImpl
implements SignalTrigger,
IReferringClass {
    protected ClusterSignal comparedSignal;
    protected static final SignalTriggerDataEventConditionEnum DATA_EVENT_CONDITION_EDEFAULT = SignalTriggerDataEventConditionEnum.ON_CHANGE;
    protected SignalTriggerDataEventConditionEnum dataEventCondition = DATA_EVENT_CONDITION_EDEFAULT;
    protected boolean dataEventConditionESet;

    protected SignalTriggerImpl() {
    }

    protected EClass eStaticClass() {
        return CommunicationPackage.Literals.SIGNAL_TRIGGER;
    }

    public ClusterSignal getComparedSignal() {
        if (this.comparedSignal != null && this.comparedSignal.eIsProxy()) {
            InternalEObject oldComparedSignal = (InternalEObject)this.comparedSignal;
            this.comparedSignal = (ClusterSignal)this.eResolveProxy(oldComparedSignal);
            if (this.comparedSignal != oldComparedSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 4, (Object)oldComparedSignal, (Object)this.comparedSignal));
            }
        }
        return this.comparedSignal;
    }

    public ClusterSignal basicGetComparedSignal() {
        return this.comparedSignal;
    }

    public void setComparedSignal(ClusterSignal newComparedSignal) {
        ClusterSignal oldComparedSignal = this.comparedSignal;
        this.comparedSignal = newComparedSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)4, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldComparedSignal, (Object)this.comparedSignal));
        }
    }

    public SignalTriggerDataEventConditionEnum getDataEventCondition() {
        return this.dataEventCondition;
    }

    public void setDataEventCondition(SignalTriggerDataEventConditionEnum newDataEventCondition) {
        SignalTriggerDataEventConditionEnum oldDataEventCondition = this.dataEventCondition;
        this.dataEventCondition = newDataEventCondition == null ? DATA_EVENT_CONDITION_EDEFAULT : newDataEventCondition;
        boolean oldDataEventConditionESet = this.dataEventConditionESet;
        this.dataEventConditionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldDataEventCondition, (Object)this.dataEventCondition, !oldDataEventConditionESet));
        }
    }

    public void unsetDataEventCondition() {
        SignalTriggerDataEventConditionEnum oldDataEventCondition = this.dataEventCondition;
        boolean oldDataEventConditionESet = this.dataEventConditionESet;
        this.dataEventCondition = DATA_EVENT_CONDITION_EDEFAULT;
        this.dataEventConditionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldDataEventCondition, (Object)DATA_EVENT_CONDITION_EDEFAULT, oldDataEventConditionESet));
        }
    }

    public boolean isSetDataEventCondition() {
        return this.dataEventConditionESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                if (resolve) {
                    return this.getComparedSignal();
                }
                return this.basicGetComparedSignal();
            }
            case 5: {
                return this.getDataEventCondition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setComparedSignal((ClusterSignal)newValue);
                return;
            }
            case 5: {
                this.setDataEventCondition((SignalTriggerDataEventConditionEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setComparedSignal(null);
                return;
            }
            case 5: {
                this.unsetDataEventCondition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.comparedSignal != null;
            }
            case 5: {
                return this.isSetDataEventCondition();
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

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (dataEventCondition: ");
        if (this.dataEventConditionESet) {
            result.append((Object)this.dataEventCondition);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

