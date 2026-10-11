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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl;

import autosar40.commonstructure.modedeclaration.ModeDeclaration;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclaration;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModeDeclarationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TDEventBswImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventBswModeDeclarationImpl
extends TDEventBswImpl
implements TDEventBswModeDeclaration,
IReferringClass {
    protected ModeDeclaration entryModeDeclaration;
    protected ModeDeclaration exitModeDeclaration;
    protected ModeDeclarationGroupPrototype modeDeclaration;
    protected static final TDEventBswModeDeclarationTypeEnum TD_EVENT_BSW_MODE_DECLARATION_TYPE_EDEFAULT = TDEventBswModeDeclarationTypeEnum.MODE_DECLARATION_REQUESTED;
    protected TDEventBswModeDeclarationTypeEnum tdEventBswModeDeclarationType = TD_EVENT_BSW_MODE_DECLARATION_TYPE_EDEFAULT;
    protected boolean tdEventBswModeDeclarationTypeESet;

    protected TDEventBswModeDeclarationImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventbswPackage.Literals.TD_EVENT_BSW_MODE_DECLARATION;
    }

    public ModeDeclaration getEntryModeDeclaration() {
        if (this.entryModeDeclaration != null && this.entryModeDeclaration.eIsProxy()) {
            InternalEObject oldEntryModeDeclaration = (InternalEObject)this.entryModeDeclaration;
            this.entryModeDeclaration = (ModeDeclaration)this.eResolveProxy(oldEntryModeDeclaration);
            if (this.entryModeDeclaration != oldEntryModeDeclaration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldEntryModeDeclaration, (Object)this.entryModeDeclaration));
            }
        }
        return this.entryModeDeclaration;
    }

    public ModeDeclaration basicGetEntryModeDeclaration() {
        return this.entryModeDeclaration;
    }

    public void setEntryModeDeclaration(ModeDeclaration newEntryModeDeclaration) {
        ModeDeclaration oldEntryModeDeclaration = this.entryModeDeclaration;
        this.entryModeDeclaration = newEntryModeDeclaration;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldEntryModeDeclaration, (Object)this.entryModeDeclaration));
        }
    }

    public ModeDeclaration getExitModeDeclaration() {
        if (this.exitModeDeclaration != null && this.exitModeDeclaration.eIsProxy()) {
            InternalEObject oldExitModeDeclaration = (InternalEObject)this.exitModeDeclaration;
            this.exitModeDeclaration = (ModeDeclaration)this.eResolveProxy(oldExitModeDeclaration);
            if (this.exitModeDeclaration != oldExitModeDeclaration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldExitModeDeclaration, (Object)this.exitModeDeclaration));
            }
        }
        return this.exitModeDeclaration;
    }

    public ModeDeclaration basicGetExitModeDeclaration() {
        return this.exitModeDeclaration;
    }

    public void setExitModeDeclaration(ModeDeclaration newExitModeDeclaration) {
        ModeDeclaration oldExitModeDeclaration = this.exitModeDeclaration;
        this.exitModeDeclaration = newExitModeDeclaration;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldExitModeDeclaration, (Object)this.exitModeDeclaration));
        }
    }

    public ModeDeclarationGroupPrototype getModeDeclaration() {
        if (this.modeDeclaration != null && this.modeDeclaration.eIsProxy()) {
            InternalEObject oldModeDeclaration = (InternalEObject)this.modeDeclaration;
            this.modeDeclaration = (ModeDeclarationGroupPrototype)this.eResolveProxy(oldModeDeclaration);
            if (this.modeDeclaration != oldModeDeclaration && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldModeDeclaration, (Object)this.modeDeclaration));
            }
        }
        return this.modeDeclaration;
    }

    public ModeDeclarationGroupPrototype basicGetModeDeclaration() {
        return this.modeDeclaration;
    }

    public void setModeDeclaration(ModeDeclarationGroupPrototype newModeDeclaration) {
        ModeDeclarationGroupPrototype oldModeDeclaration = this.modeDeclaration;
        this.modeDeclaration = newModeDeclaration;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldModeDeclaration, (Object)this.modeDeclaration));
        }
    }

    public TDEventBswModeDeclarationTypeEnum getTdEventBswModeDeclarationType() {
        return this.tdEventBswModeDeclarationType;
    }

    public void setTdEventBswModeDeclarationType(TDEventBswModeDeclarationTypeEnum newTdEventBswModeDeclarationType) {
        TDEventBswModeDeclarationTypeEnum oldTdEventBswModeDeclarationType = this.tdEventBswModeDeclarationType;
        this.tdEventBswModeDeclarationType = newTdEventBswModeDeclarationType == null ? TD_EVENT_BSW_MODE_DECLARATION_TYPE_EDEFAULT : newTdEventBswModeDeclarationType;
        boolean oldTdEventBswModeDeclarationTypeESet = this.tdEventBswModeDeclarationTypeESet;
        this.tdEventBswModeDeclarationTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTdEventBswModeDeclarationType, (Object)this.tdEventBswModeDeclarationType, !oldTdEventBswModeDeclarationTypeESet));
        }
    }

    public void unsetTdEventBswModeDeclarationType() {
        TDEventBswModeDeclarationTypeEnum oldTdEventBswModeDeclarationType = this.tdEventBswModeDeclarationType;
        boolean oldTdEventBswModeDeclarationTypeESet = this.tdEventBswModeDeclarationTypeESet;
        this.tdEventBswModeDeclarationType = TD_EVENT_BSW_MODE_DECLARATION_TYPE_EDEFAULT;
        this.tdEventBswModeDeclarationTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTdEventBswModeDeclarationType, (Object)TD_EVENT_BSW_MODE_DECLARATION_TYPE_EDEFAULT, oldTdEventBswModeDeclarationTypeESet));
        }
    }

    public boolean isSetTdEventBswModeDeclarationType() {
        return this.tdEventBswModeDeclarationTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                if (resolve) {
                    return this.getEntryModeDeclaration();
                }
                return this.basicGetEntryModeDeclaration();
            }
            case 23: {
                if (resolve) {
                    return this.getExitModeDeclaration();
                }
                return this.basicGetExitModeDeclaration();
            }
            case 24: {
                if (resolve) {
                    return this.getModeDeclaration();
                }
                return this.basicGetModeDeclaration();
            }
            case 25: {
                return this.getTdEventBswModeDeclarationType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setEntryModeDeclaration((ModeDeclaration)newValue);
                return;
            }
            case 23: {
                this.setExitModeDeclaration((ModeDeclaration)newValue);
                return;
            }
            case 24: {
                this.setModeDeclaration((ModeDeclarationGroupPrototype)newValue);
                return;
            }
            case 25: {
                this.setTdEventBswModeDeclarationType((TDEventBswModeDeclarationTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setEntryModeDeclaration(null);
                return;
            }
            case 23: {
                this.setExitModeDeclaration(null);
                return;
            }
            case 24: {
                this.setModeDeclaration(null);
                return;
            }
            case 25: {
                this.unsetTdEventBswModeDeclarationType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.entryModeDeclaration != null;
            }
            case 23: {
                return this.exitModeDeclaration != null;
            }
            case 24: {
                return this.modeDeclaration != null;
            }
            case 25: {
                return this.isSetTdEventBswModeDeclarationType();
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
        result.append(" (tdEventBswModeDeclarationType: ");
        if (this.tdEventBswModeDeclarationTypeESet) {
            result.append((Object)this.tdEventBswModeDeclarationType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

