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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototype;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVariableDataPrototypeTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TdeventvfbPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.impl.TDEventVfbImpl;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventVariableDataPrototypeImpl
extends TDEventVfbImpl
implements TDEventVariableDataPrototype,
IReferringClass {
    protected VariableDataPrototype dataElement;
    protected static final TDEventVariableDataPrototypeTypeEnum TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_EDEFAULT = TDEventVariableDataPrototypeTypeEnum.VARIABLE_DATA_PROTOTYPE_SENT;
    protected TDEventVariableDataPrototypeTypeEnum tdEventVariableDataPrototypeType = TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_EDEFAULT;
    protected boolean tdEventVariableDataPrototypeTypeESet;

    protected TDEventVariableDataPrototypeImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventvfbPackage.Literals.TD_EVENT_VARIABLE_DATA_PROTOTYPE;
    }

    public VariableDataPrototype getDataElement() {
        if (this.dataElement != null && this.dataElement.eIsProxy()) {
            InternalEObject oldDataElement = (InternalEObject)this.dataElement;
            this.dataElement = (VariableDataPrototype)this.eResolveProxy(oldDataElement);
            if (this.dataElement != oldDataElement && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 24, (Object)oldDataElement, (Object)this.dataElement));
            }
        }
        return this.dataElement;
    }

    public VariableDataPrototype basicGetDataElement() {
        return this.dataElement;
    }

    public void setDataElement(VariableDataPrototype newDataElement) {
        VariableDataPrototype oldDataElement = this.dataElement;
        this.dataElement = newDataElement;
        AutosarObjectUtil.setDest((EObject)this, (int)24, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldDataElement, (Object)this.dataElement));
        }
    }

    public TDEventVariableDataPrototypeTypeEnum getTdEventVariableDataPrototypeType() {
        return this.tdEventVariableDataPrototypeType;
    }

    public void setTdEventVariableDataPrototypeType(TDEventVariableDataPrototypeTypeEnum newTdEventVariableDataPrototypeType) {
        TDEventVariableDataPrototypeTypeEnum oldTdEventVariableDataPrototypeType = this.tdEventVariableDataPrototypeType;
        this.tdEventVariableDataPrototypeType = newTdEventVariableDataPrototypeType == null ? TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_EDEFAULT : newTdEventVariableDataPrototypeType;
        boolean oldTdEventVariableDataPrototypeTypeESet = this.tdEventVariableDataPrototypeTypeESet;
        this.tdEventVariableDataPrototypeTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldTdEventVariableDataPrototypeType, (Object)this.tdEventVariableDataPrototypeType, !oldTdEventVariableDataPrototypeTypeESet));
        }
    }

    public void unsetTdEventVariableDataPrototypeType() {
        TDEventVariableDataPrototypeTypeEnum oldTdEventVariableDataPrototypeType = this.tdEventVariableDataPrototypeType;
        boolean oldTdEventVariableDataPrototypeTypeESet = this.tdEventVariableDataPrototypeTypeESet;
        this.tdEventVariableDataPrototypeType = TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_EDEFAULT;
        this.tdEventVariableDataPrototypeTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 25, (Object)oldTdEventVariableDataPrototypeType, (Object)TD_EVENT_VARIABLE_DATA_PROTOTYPE_TYPE_EDEFAULT, oldTdEventVariableDataPrototypeTypeESet));
        }
    }

    public boolean isSetTdEventVariableDataPrototypeType() {
        return this.tdEventVariableDataPrototypeTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 24: {
                if (resolve) {
                    return this.getDataElement();
                }
                return this.basicGetDataElement();
            }
            case 25: {
                return this.getTdEventVariableDataPrototypeType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 24: {
                this.setDataElement((VariableDataPrototype)newValue);
                return;
            }
            case 25: {
                this.setTdEventVariableDataPrototypeType((TDEventVariableDataPrototypeTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 24: {
                this.setDataElement(null);
                return;
            }
            case 25: {
                this.unsetTdEventVariableDataPrototypeType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 24: {
                return this.dataElement != null;
            }
            case 25: {
                return this.isSetTdEventVariableDataPrototypeType();
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
        result.append(" (tdEventVariableDataPrototypeType: ");
        if (this.tdEventVariableDataPrototypeTypeESet) {
            result.append((Object)this.tdEventVariableDataPrototypeType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

