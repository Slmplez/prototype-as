/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.networkmanagement.impl;

import autosar40.system.networkmanagement.FlexrayNmEcu;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import autosar40.system.networkmanagement.impl.BusspecificNmEcuImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class FlexrayNmEcuImpl
extends BusspecificNmEcuImpl
implements FlexrayNmEcu {
    protected static final Boolean NM_HW_VOTE_ENABLED_EDEFAULT = Boolean.FALSE;
    protected Boolean nmHwVoteEnabled = NM_HW_VOTE_ENABLED_EDEFAULT;
    protected boolean nmHwVoteEnabledESet;
    protected static final Boolean NM_MAIN_FUNCTION_ACROSS_FR_CYCLE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmMainFunctionAcrossFrCycle = NM_MAIN_FUNCTION_ACROSS_FR_CYCLE_EDEFAULT;
    protected boolean nmMainFunctionAcrossFrCycleESet;
    protected static final Boolean NM_REPEAT_MESSAGE_BIT_ENABLE_EDEFAULT = Boolean.FALSE;
    protected Boolean nmRepeatMessageBitEnable = NM_REPEAT_MESSAGE_BIT_ENABLE_EDEFAULT;
    protected boolean nmRepeatMessageBitEnableESet;

    protected FlexrayNmEcuImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.FLEXRAY_NM_ECU;
    }

    public Boolean getNmHwVoteEnabled() {
        return this.nmHwVoteEnabled;
    }

    public void setNmHwVoteEnabled(Boolean newNmHwVoteEnabled) {
        Boolean oldNmHwVoteEnabled = this.nmHwVoteEnabled;
        this.nmHwVoteEnabled = newNmHwVoteEnabled;
        boolean oldNmHwVoteEnabledESet = this.nmHwVoteEnabledESet;
        this.nmHwVoteEnabledESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldNmHwVoteEnabled, (Object)this.nmHwVoteEnabled, !oldNmHwVoteEnabledESet));
        }
    }

    public void unsetNmHwVoteEnabled() {
        Boolean oldNmHwVoteEnabled = this.nmHwVoteEnabled;
        boolean oldNmHwVoteEnabledESet = this.nmHwVoteEnabledESet;
        this.nmHwVoteEnabled = NM_HW_VOTE_ENABLED_EDEFAULT;
        this.nmHwVoteEnabledESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldNmHwVoteEnabled, (Object)NM_HW_VOTE_ENABLED_EDEFAULT, oldNmHwVoteEnabledESet));
        }
    }

    public boolean isSetNmHwVoteEnabled() {
        return this.nmHwVoteEnabledESet;
    }

    public Boolean getNmMainFunctionAcrossFrCycle() {
        return this.nmMainFunctionAcrossFrCycle;
    }

    public void setNmMainFunctionAcrossFrCycle(Boolean newNmMainFunctionAcrossFrCycle) {
        Boolean oldNmMainFunctionAcrossFrCycle = this.nmMainFunctionAcrossFrCycle;
        this.nmMainFunctionAcrossFrCycle = newNmMainFunctionAcrossFrCycle;
        boolean oldNmMainFunctionAcrossFrCycleESet = this.nmMainFunctionAcrossFrCycleESet;
        this.nmMainFunctionAcrossFrCycleESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldNmMainFunctionAcrossFrCycle, (Object)this.nmMainFunctionAcrossFrCycle, !oldNmMainFunctionAcrossFrCycleESet));
        }
    }

    public void unsetNmMainFunctionAcrossFrCycle() {
        Boolean oldNmMainFunctionAcrossFrCycle = this.nmMainFunctionAcrossFrCycle;
        boolean oldNmMainFunctionAcrossFrCycleESet = this.nmMainFunctionAcrossFrCycleESet;
        this.nmMainFunctionAcrossFrCycle = NM_MAIN_FUNCTION_ACROSS_FR_CYCLE_EDEFAULT;
        this.nmMainFunctionAcrossFrCycleESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldNmMainFunctionAcrossFrCycle, (Object)NM_MAIN_FUNCTION_ACROSS_FR_CYCLE_EDEFAULT, oldNmMainFunctionAcrossFrCycleESet));
        }
    }

    public boolean isSetNmMainFunctionAcrossFrCycle() {
        return this.nmMainFunctionAcrossFrCycleESet;
    }

    public Boolean getNmRepeatMessageBitEnable() {
        return this.nmRepeatMessageBitEnable;
    }

    public void setNmRepeatMessageBitEnable(Boolean newNmRepeatMessageBitEnable) {
        Boolean oldNmRepeatMessageBitEnable = this.nmRepeatMessageBitEnable;
        this.nmRepeatMessageBitEnable = newNmRepeatMessageBitEnable;
        boolean oldNmRepeatMessageBitEnableESet = this.nmRepeatMessageBitEnableESet;
        this.nmRepeatMessageBitEnableESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldNmRepeatMessageBitEnable, (Object)this.nmRepeatMessageBitEnable, !oldNmRepeatMessageBitEnableESet));
        }
    }

    public void unsetNmRepeatMessageBitEnable() {
        Boolean oldNmRepeatMessageBitEnable = this.nmRepeatMessageBitEnable;
        boolean oldNmRepeatMessageBitEnableESet = this.nmRepeatMessageBitEnableESet;
        this.nmRepeatMessageBitEnable = NM_REPEAT_MESSAGE_BIT_ENABLE_EDEFAULT;
        this.nmRepeatMessageBitEnableESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 7, (Object)oldNmRepeatMessageBitEnable, (Object)NM_REPEAT_MESSAGE_BIT_ENABLE_EDEFAULT, oldNmRepeatMessageBitEnableESet));
        }
    }

    public boolean isSetNmRepeatMessageBitEnable() {
        return this.nmRepeatMessageBitEnableESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                return this.getNmHwVoteEnabled();
            }
            case 6: {
                return this.getNmMainFunctionAcrossFrCycle();
            }
            case 7: {
                return this.getNmRepeatMessageBitEnable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setNmHwVoteEnabled((Boolean)newValue);
                return;
            }
            case 6: {
                this.setNmMainFunctionAcrossFrCycle((Boolean)newValue);
                return;
            }
            case 7: {
                this.setNmRepeatMessageBitEnable((Boolean)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.unsetNmHwVoteEnabled();
                return;
            }
            case 6: {
                this.unsetNmMainFunctionAcrossFrCycle();
                return;
            }
            case 7: {
                this.unsetNmRepeatMessageBitEnable();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.isSetNmHwVoteEnabled();
            }
            case 6: {
                return this.isSetNmMainFunctionAcrossFrCycle();
            }
            case 7: {
                return this.isSetNmRepeatMessageBitEnable();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (nmHwVoteEnabled: ");
        if (this.nmHwVoteEnabledESet) {
            result.append(this.nmHwVoteEnabled);
        } else {
            result.append("<unset>");
        }
        result.append(", nmMainFunctionAcrossFrCycle: ");
        if (this.nmMainFunctionAcrossFrCycleESet) {
            result.append(this.nmMainFunctionAcrossFrCycle);
        } else {
            result.append("<unset>");
        }
        result.append(", nmRepeatMessageBitEnable: ");
        if (this.nmRepeatMessageBitEnableESet) {
            result.append(this.nmRepeatMessageBitEnable);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

