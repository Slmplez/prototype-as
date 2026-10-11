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
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPdu;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TDEventIPduTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.TdeventcomPackage;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventcom.impl.TDEventComImpl;
import autosar40.system.fibex.fibexcore.corecommunication.IPdu;
import autosar40.system.fibex.fibexcore.coretopology.PhysicalChannel;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TDEventIPduImpl
extends TDEventComImpl
implements TDEventIPdu,
IReferringClass {
    protected IPdu iPdu;
    protected PhysicalChannel physicalChannel;
    protected static final TDEventIPduTypeEnum TD_EVENT_TYPE_EDEFAULT = TDEventIPduTypeEnum.IPDU_SENT_TO_IF;
    protected TDEventIPduTypeEnum tdEventType = TD_EVENT_TYPE_EDEFAULT;
    protected boolean tdEventTypeESet;

    protected TDEventIPduImpl() {
    }

    protected EClass eStaticClass() {
        return TdeventcomPackage.Literals.TD_EVENT_IPDU;
    }

    public IPdu getIPdu() {
        if (this.iPdu != null && this.iPdu.eIsProxy()) {
            InternalEObject oldIPdu = (InternalEObject)this.iPdu;
            this.iPdu = (IPdu)this.eResolveProxy(oldIPdu);
            if (this.iPdu != oldIPdu && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 22, (Object)oldIPdu, (Object)this.iPdu));
            }
        }
        return this.iPdu;
    }

    public IPdu basicGetIPdu() {
        return this.iPdu;
    }

    public void setIPdu(IPdu newIPdu) {
        IPdu oldIPdu = this.iPdu;
        this.iPdu = newIPdu;
        AutosarObjectUtil.setDest((EObject)this, (int)22, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldIPdu, (Object)this.iPdu));
        }
    }

    public PhysicalChannel getPhysicalChannel() {
        if (this.physicalChannel != null && this.physicalChannel.eIsProxy()) {
            InternalEObject oldPhysicalChannel = (InternalEObject)this.physicalChannel;
            this.physicalChannel = (PhysicalChannel)this.eResolveProxy(oldPhysicalChannel);
            if (this.physicalChannel != oldPhysicalChannel && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 23, (Object)oldPhysicalChannel, (Object)this.physicalChannel));
            }
        }
        return this.physicalChannel;
    }

    public PhysicalChannel basicGetPhysicalChannel() {
        return this.physicalChannel;
    }

    public void setPhysicalChannel(PhysicalChannel newPhysicalChannel) {
        PhysicalChannel oldPhysicalChannel = this.physicalChannel;
        this.physicalChannel = newPhysicalChannel;
        AutosarObjectUtil.setDest((EObject)this, (int)23, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldPhysicalChannel, (Object)this.physicalChannel));
        }
    }

    public TDEventIPduTypeEnum getTdEventType() {
        return this.tdEventType;
    }

    public void setTdEventType(TDEventIPduTypeEnum newTdEventType) {
        TDEventIPduTypeEnum oldTdEventType = this.tdEventType;
        this.tdEventType = newTdEventType == null ? TD_EVENT_TYPE_EDEFAULT : newTdEventType;
        boolean oldTdEventTypeESet = this.tdEventTypeESet;
        this.tdEventTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldTdEventType, (Object)this.tdEventType, !oldTdEventTypeESet));
        }
    }

    public void unsetTdEventType() {
        TDEventIPduTypeEnum oldTdEventType = this.tdEventType;
        boolean oldTdEventTypeESet = this.tdEventTypeESet;
        this.tdEventType = TD_EVENT_TYPE_EDEFAULT;
        this.tdEventTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldTdEventType, (Object)TD_EVENT_TYPE_EDEFAULT, oldTdEventTypeESet));
        }
    }

    public boolean isSetTdEventType() {
        return this.tdEventTypeESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 22: {
                if (resolve) {
                    return this.getIPdu();
                }
                return this.basicGetIPdu();
            }
            case 23: {
                if (resolve) {
                    return this.getPhysicalChannel();
                }
                return this.basicGetPhysicalChannel();
            }
            case 24: {
                return this.getTdEventType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 22: {
                this.setIPdu((IPdu)newValue);
                return;
            }
            case 23: {
                this.setPhysicalChannel((PhysicalChannel)newValue);
                return;
            }
            case 24: {
                this.setTdEventType((TDEventIPduTypeEnum)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 22: {
                this.setIPdu(null);
                return;
            }
            case 23: {
                this.setPhysicalChannel(null);
                return;
            }
            case 24: {
                this.unsetTdEventType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 22: {
                return this.iPdu != null;
            }
            case 23: {
                return this.physicalChannel != null;
            }
            case 24: {
                return this.isSetTdEventType();
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
        result.append(" (tdEventType: ");
        if (this.tdEventTypeESet) {
            result.append((Object)this.tdEventType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

