/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.commonstructure.axis.impl;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisGrouped;
import autosar40.commonstructure.calibrationparameter.impl.SwCalprmAxisTypePropsImpl;
import autosar40.commonstructure.datadictionaryproxies.SwCalprmRefProxy;
import autosar40.swcomponent.datatype.datatypes.ApplicationPrimitiveDataType;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SwAxisGroupedImpl
extends SwCalprmAxisTypePropsImpl
implements SwAxisGrouped,
IReferringClass {
    protected ApplicationPrimitiveDataType sharedAxisType;
    protected static final String SW_AXIS_INDEX_EDEFAULT = "";
    protected String swAxisIndex = "";
    protected boolean swAxisIndexESet;
    protected SwCalprmRefProxy swCalprmRef;

    protected SwAxisGroupedImpl() {
    }

    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_AXIS_GROUPED;
    }

    public ApplicationPrimitiveDataType getSharedAxisType() {
        if (this.sharedAxisType != null && this.sharedAxisType.eIsProxy()) {
            InternalEObject oldSharedAxisType = (InternalEObject)this.sharedAxisType;
            this.sharedAxisType = (ApplicationPrimitiveDataType)this.eResolveProxy(oldSharedAxisType);
            if (this.sharedAxisType != oldSharedAxisType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 5, (Object)oldSharedAxisType, (Object)this.sharedAxisType));
            }
        }
        return this.sharedAxisType;
    }

    public ApplicationPrimitiveDataType basicGetSharedAxisType() {
        return this.sharedAxisType;
    }

    public void setSharedAxisType(ApplicationPrimitiveDataType newSharedAxisType) {
        ApplicationPrimitiveDataType oldSharedAxisType = this.sharedAxisType;
        this.sharedAxisType = newSharedAxisType;
        AutosarObjectUtil.setDest((EObject)this, (int)5, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSharedAxisType, (Object)this.sharedAxisType));
        }
    }

    public String getSwAxisIndex() {
        return this.swAxisIndex;
    }

    public void setSwAxisIndex(String newSwAxisIndex) {
        String oldSwAxisIndex = this.swAxisIndex;
        this.swAxisIndex = newSwAxisIndex;
        boolean oldSwAxisIndexESet = this.swAxisIndexESet;
        this.swAxisIndexESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwAxisIndex, (Object)this.swAxisIndex, !oldSwAxisIndexESet));
        }
    }

    public void unsetSwAxisIndex() {
        String oldSwAxisIndex = this.swAxisIndex;
        boolean oldSwAxisIndexESet = this.swAxisIndexESet;
        this.swAxisIndex = SW_AXIS_INDEX_EDEFAULT;
        this.swAxisIndexESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldSwAxisIndex, (Object)SW_AXIS_INDEX_EDEFAULT, oldSwAxisIndexESet));
        }
    }

    public boolean isSetSwAxisIndex() {
        return this.swAxisIndexESet;
    }

    public SwCalprmRefProxy getSwCalprmRef() {
        return this.swCalprmRef;
    }

    public NotificationChain basicSetSwCalprmRef(SwCalprmRefProxy newSwCalprmRef, NotificationChain msgs) {
        SwCalprmRefProxy oldSwCalprmRef = this.swCalprmRef;
        this.swCalprmRef = newSwCalprmRef;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwCalprmRef, (Object)newSwCalprmRef);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setSwCalprmRef(SwCalprmRefProxy newSwCalprmRef) {
        if (newSwCalprmRef != this.swCalprmRef) {
            NotificationChain msgs = null;
            if (this.swCalprmRef != null) {
                msgs = ((InternalEObject)this.swCalprmRef).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newSwCalprmRef != null) {
                msgs = ((InternalEObject)newSwCalprmRef).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetSwCalprmRef(newSwCalprmRef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSwCalprmRef, (Object)newSwCalprmRef));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetSwCalprmRef(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 5: {
                if (resolve) {
                    return this.getSharedAxisType();
                }
                return this.basicGetSharedAxisType();
            }
            case 6: {
                return this.getSwAxisIndex();
            }
            case 7: {
                return this.getSwCalprmRef();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 5: {
                this.setSharedAxisType((ApplicationPrimitiveDataType)newValue);
                return;
            }
            case 6: {
                this.setSwAxisIndex((String)newValue);
                return;
            }
            case 7: {
                this.setSwCalprmRef((SwCalprmRefProxy)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 5: {
                this.setSharedAxisType(null);
                return;
            }
            case 6: {
                this.unsetSwAxisIndex();
                return;
            }
            case 7: {
                this.setSwCalprmRef(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 5: {
                return this.sharedAxisType != null;
            }
            case 6: {
                return this.isSetSwAxisIndex();
            }
            case 7: {
                return this.swCalprmRef != null;
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
        result.append(" (swAxisIndex: ");
        if (this.swAxisIndexESet) {
            result.append(this.swAxisIndex);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

