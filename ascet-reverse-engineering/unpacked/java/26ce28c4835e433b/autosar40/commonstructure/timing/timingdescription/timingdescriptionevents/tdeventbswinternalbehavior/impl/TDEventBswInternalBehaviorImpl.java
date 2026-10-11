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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.impl;

import autosar40.bswmodule.bswbehavior.BswModuleEntity;
import autosar40.commonstructure.timing.timingdescription.impl.TimingDescriptionEventImpl;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehavior;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TDEventBswInternalBehaviorTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventbswinternalbehavior.TdeventbswinternalbehaviorPackage;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventBswInternalBehaviorImpl
extends TimingDescriptionEventImpl
implements TDEventBswInternalBehavior,
IReferringClass {
    protected BswModuleEntity bswModuleEntity;
    protected static final TDEventBswInternalBehaviorTypeEnum TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_EDEFAULT = TDEventBswInternalBehaviorTypeEnum.BSW_MODULE_ENTITY_ACTIVATED;
    protected TDEventBswInternalBehaviorTypeEnum tdEventBswInternalBehaviorType = TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_EDEFAULT;
    protected boolean tdEventBswInternalBehaviorTypeESet;

    protected TDEventBswInternalBehaviorImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventbswinternalbehaviorPackage.Literals.TD_EVENT_BSW_INTERNAL_BEHAVIOR;
    }

    public BswModuleEntity getBswModuleEntity() {
        if (this.bswModuleEntity != null && this.bswModuleEntity.eIsProxy()) {
            InternalEObject oldBswModuleEntity = (InternalEObject)this.bswModuleEntity;
            this.bswModuleEntity = (BswModuleEntity)this.eResolveProxy(oldBswModuleEntity);
            if (this.bswModuleEntity != oldBswModuleEntity && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 21, (Object)oldBswModuleEntity, (Object)this.bswModuleEntity));
            }
        }
        return this.bswModuleEntity;
    }

    public BswModuleEntity basicGetBswModuleEntity() {
        return this.bswModuleEntity;
    }

    public void setBswModuleEntity(BswModuleEntity newBswModuleEntity) {
        BswModuleEntity oldBswModuleEntity = this.bswModuleEntity;
        this.bswModuleEntity = newBswModuleEntity;
        AutosarObjectUtil.setDest((EObject)this, (int)21, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldBswModuleEntity, (Object)this.bswModuleEntity));
        }
    }

    public TDEventBswInternalBehaviorTypeEnum getTdEventBswInternalBehaviorType() {
        return this.tdEventBswInternalBehaviorType;
    }

    public void setTdEventBswInternalBehaviorType(TDEventBswInternalBehaviorTypeEnum newTdEventBswInternalBehaviorType) {
        TDEventBswInternalBehaviorTypeEnum oldTdEventBswInternalBehaviorType = this.tdEventBswInternalBehaviorType;
        this.tdEventBswInternalBehaviorType = newTdEventBswInternalBehaviorType == null ? TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_EDEFAULT : newTdEventBswInternalBehaviorType;
        boolean oldTdEventBswInternalBehaviorTypeESet = this.tdEventBswInternalBehaviorTypeESet;
        this.tdEventBswInternalBehaviorTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldTdEventBswInternalBehaviorType, (Object)this.tdEventBswInternalBehaviorType, !oldTdEventBswInternalBehaviorTypeESet));
        }
    }

    public void unsetTdEventBswInternalBehaviorType() {
        TDEventBswInternalBehaviorTypeEnum oldTdEventBswInternalBehaviorType = this.tdEventBswInternalBehaviorType;
        boolean oldTdEventBswInternalBehaviorTypeESet = this.tdEventBswInternalBehaviorTypeESet;
        this.tdEventBswInternalBehaviorType = TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_EDEFAULT;
        this.tdEventBswInternalBehaviorTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 22, (Object)oldTdEventBswInternalBehaviorType, (Object)TD_EVENT_BSW_INTERNAL_BEHAVIOR_TYPE_EDEFAULT, oldTdEventBswInternalBehaviorTypeESet));
        }
    }

    public boolean isSetTdEventBswInternalBehaviorType() {
        return this.tdEventBswInternalBehaviorTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                if (resolve) {
                    return this.getBswModuleEntity();
                }
                return this.basicGetBswModuleEntity();
            }
            case 22: {
                return this.getTdEventBswInternalBehaviorType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setBswModuleEntity((BswModuleEntity)newValue);
                return;
            }
            case 22: {
                this.setTdEventBswInternalBehaviorType((TDEventBswInternalBehaviorTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.setBswModuleEntity(null);
                return;
            }
            case 22: {
                this.unsetTdEventBswInternalBehaviorType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.bswModuleEntity != null;
            }
            case 22: {
                return this.isSetTdEventBswInternalBehaviorType();
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
        result.append(" (tdEventBswInternalBehaviorType: ");
        if (this.tdEventBswInternalBehaviorTypeESet) {
            result.append((Object)this.tdEventBswInternalBehaviorType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

