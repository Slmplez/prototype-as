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
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.commonstructure.axis.impl;

import autosar40.commonstructure.axis.AxisPackage;
import autosar40.commonstructure.axis.SwAxisType;
import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class SwGenericAxisParamTypeImpl
extends IdentifiableImpl
implements SwGenericAxisParamType,
IReferringClass {
    protected DataConstr dataConstr;

    protected SwGenericAxisParamTypeImpl() {
    }

    protected EClass eStaticClass() {
        return AxisPackage.Literals.SW_GENERIC_AXIS_PARAM_TYPE;
    }

    public SwAxisType getSwAxisType() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SwAxisType)this.eContainer();
    }

    public NotificationChain basicSetSwAxisType(SwAxisType newSwAxisType, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSwAxisType, 18, msgs);
        return msgs;
    }

    public void setSwAxisType(SwAxisType newSwAxisType) {
        if (newSwAxisType != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSwAxisType != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSwAxisType)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSwAxisType != null) {
                msgs = ((InternalEObject)newSwAxisType).eInverseAdd((InternalEObject)this, 22, SwAxisType.class, msgs);
            }
            if ((msgs = this.basicSetSwAxisType(newSwAxisType, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSwAxisType, (Object)newSwAxisType));
        }
    }

    public DataConstr getDataConstr() {
        if (this.dataConstr != null && this.dataConstr.eIsProxy()) {
            InternalEObject oldDataConstr = (InternalEObject)this.dataConstr;
            this.dataConstr = (DataConstr)this.eResolveProxy(oldDataConstr);
            if (this.dataConstr != oldDataConstr && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldDataConstr, (Object)this.dataConstr));
            }
        }
        return this.dataConstr;
    }

    public DataConstr basicGetDataConstr() {
        return this.dataConstr;
    }

    public void setDataConstr(DataConstr newDataConstr) {
        DataConstr oldDataConstr = this.dataConstr;
        this.dataConstr = newDataConstr;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDataConstr, (Object)this.dataConstr));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSwAxisType((SwAxisType)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSwAxisType(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, SwAxisType.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSwAxisType();
            }
            case 19: {
                if (resolve) {
                    return this.getDataConstr();
                }
                return this.basicGetDataConstr();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSwAxisType((SwAxisType)newValue);
                return;
            }
            case 19: {
                this.setDataConstr((DataConstr)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setSwAxisType(null);
                return;
            }
            case 19: {
                this.setDataConstr(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getSwAxisType() != null;
            }
            case 19: {
                return this.dataConstr != null;
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
}

