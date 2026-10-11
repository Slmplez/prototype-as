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

import autosar40.bswmodule.bswinterfaces.BswModuleEntry;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModule;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TDEventBswModuleTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.TdeventbswPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbsw.impl.TDEventBswImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventBswModuleImpl
extends TDEventBswImpl
implements TDEventBswModule,
IReferringClass {
    protected BswModuleEntry bswModuleEntry;
    protected static final TDEventBswModuleTypeEnum TD_EVENT_BSW_MODULE_TYPE_EDEFAULT = TDEventBswModuleTypeEnum.BSW_MENTRY_CALLED;
    protected TDEventBswModuleTypeEnum tdEventBswModuleType = TD_EVENT_BSW_MODULE_TYPE_EDEFAULT;
    protected boolean tdEventBswModuleTypeESet;

    protected TDEventBswModuleImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventbswPackage.Literals.TD_EVENT_BSW_MODULE;
    }

    public BswModuleEntry getBswModuleEntry() {
        if (this.bswModuleEntry != null && this.bswModuleEntry.eIsProxy()) {
            InternalEObject oldBswModuleEntry = (InternalEObject)this.bswModuleEntry;
            this.bswModuleEntry = (BswModuleEntry)this.eResolveProxy(oldBswModuleEntry);
            if (this.bswModuleEntry != oldBswModuleEntry && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldBswModuleEntry, (Object)this.bswModuleEntry));
            }
        }
        return this.bswModuleEntry;
    }

    public BswModuleEntry basicGetBswModuleEntry() {
        return this.bswModuleEntry;
    }

    public void setBswModuleEntry(BswModuleEntry newBswModuleEntry) {
        BswModuleEntry oldBswModuleEntry = this.bswModuleEntry;
        this.bswModuleEntry = newBswModuleEntry;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldBswModuleEntry, (Object)this.bswModuleEntry));
        }
    }

    public TDEventBswModuleTypeEnum getTdEventBswModuleType() {
        return this.tdEventBswModuleType;
    }

    public void setTdEventBswModuleType(TDEventBswModuleTypeEnum newTdEventBswModuleType) {
        TDEventBswModuleTypeEnum oldTdEventBswModuleType = this.tdEventBswModuleType;
        this.tdEventBswModuleType = newTdEventBswModuleType == null ? TD_EVENT_BSW_MODULE_TYPE_EDEFAULT : newTdEventBswModuleType;
        boolean oldTdEventBswModuleTypeESet = this.tdEventBswModuleTypeESet;
        this.tdEventBswModuleTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldTdEventBswModuleType, (Object)this.tdEventBswModuleType, !oldTdEventBswModuleTypeESet));
        }
    }

    public void unsetTdEventBswModuleType() {
        TDEventBswModuleTypeEnum oldTdEventBswModuleType = this.tdEventBswModuleType;
        boolean oldTdEventBswModuleTypeESet = this.tdEventBswModuleTypeESet;
        this.tdEventBswModuleType = TD_EVENT_BSW_MODULE_TYPE_EDEFAULT;
        this.tdEventBswModuleTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 23, (Object)oldTdEventBswModuleType, (Object)TD_EVENT_BSW_MODULE_TYPE_EDEFAULT, oldTdEventBswModuleTypeESet));
        }
    }

    public boolean isSetTdEventBswModuleType() {
        return this.tdEventBswModuleTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                if (resolve) {
                    return this.getBswModuleEntry();
                }
                return this.basicGetBswModuleEntry();
            }
            case 23: {
                return this.getTdEventBswModuleType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setBswModuleEntry((BswModuleEntry)newValue);
                return;
            }
            case 23: {
                this.setTdEventBswModuleType((TDEventBswModuleTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setBswModuleEntry(null);
                return;
            }
            case 23: {
                this.unsetTdEventBswModuleType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.bswModuleEntry != null;
            }
            case 23: {
                return this.isSetTdEventBswModuleType();
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
        result.append(" (tdEventBswModuleType: ");
        if (this.tdEventBswModuleTypeESet) {
            result.append((Object)this.tdEventBswModuleType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

