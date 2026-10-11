/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.networkmanagement.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.system.networkmanagement.CanNmNode;
import autosar40.system.networkmanagement.CanNmRangeConfig;
import autosar40.system.networkmanagement.NetworkmanagementPackage;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CanNmRangeConfigImpl
extends ARObjectImpl
implements CanNmRangeConfig {
    protected static final PositiveIntegerDatatype LOWER_CAN_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype lowerCanId = LOWER_CAN_ID_EDEFAULT.clone();
    protected boolean lowerCanIdESet;
    protected static final PositiveIntegerDatatype UPPER_CAN_ID_EDEFAULT = new PositiveIntegerDatatype(new Long(0L).longValue());
    protected PositiveIntegerDatatype upperCanId = UPPER_CAN_ID_EDEFAULT.clone();
    protected boolean upperCanIdESet;

    protected CanNmRangeConfigImpl() {
    }

    protected EClass eStaticClass() {
        return NetworkmanagementPackage.Literals.CAN_NM_RANGE_CONFIG;
    }

    public CanNmNode getCanNmNode() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (CanNmNode)this.eContainer();
    }

    public NotificationChain basicSetCanNmNode(CanNmNode newCanNmNode, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanNmNode, 4, msgs);
        return msgs;
    }

    public void setCanNmNode(CanNmNode newCanNmNode) {
        if (newCanNmNode != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newCanNmNode != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanNmNode)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanNmNode != null) {
                msgs = ((InternalEObject)newCanNmNode).eInverseAdd((InternalEObject)this, 28, CanNmNode.class, msgs);
            }
            if ((msgs = this.basicSetCanNmNode(newCanNmNode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newCanNmNode, (Object)newCanNmNode));
        }
    }

    public Long getLowerCanId() {
        return (Long)this.lowerCanId.basicGetValue();
    }

    public void setLowerCanId(Long newLowerCanId) {
        Long oldLowerCanId = (Long)this.lowerCanId.basicGetValue();
        this.lowerCanId.basicSetValue((Object)newLowerCanId);
        boolean oldLowerCanIdESet = this.lowerCanIdESet;
        this.lowerCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldLowerCanId, (Object)newLowerCanId, !oldLowerCanIdESet));
        }
    }

    public void unsetLowerCanId() {
        Long oldLowerCanId = (Long)this.lowerCanId.basicGetValue();
        boolean oldLowerCanIdESet = this.lowerCanIdESet;
        this.lowerCanId = LOWER_CAN_ID_EDEFAULT.clone();
        this.lowerCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 5, (Object)oldLowerCanId, (Object)LOWER_CAN_ID_EDEFAULT, oldLowerCanIdESet));
        }
    }

    public boolean isSetLowerCanId() {
        return this.lowerCanIdESet;
    }

    public Long getUpperCanId() {
        return (Long)this.upperCanId.basicGetValue();
    }

    public void setUpperCanId(Long newUpperCanId) {
        Long oldUpperCanId = (Long)this.upperCanId.basicGetValue();
        this.upperCanId.basicSetValue((Object)newUpperCanId);
        boolean oldUpperCanIdESet = this.upperCanIdESet;
        this.upperCanIdESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldUpperCanId, (Object)newUpperCanId, !oldUpperCanIdESet));
        }
    }

    public void unsetUpperCanId() {
        Long oldUpperCanId = (Long)this.upperCanId.basicGetValue();
        boolean oldUpperCanIdESet = this.upperCanIdESet;
        this.upperCanId = UPPER_CAN_ID_EDEFAULT.clone();
        this.upperCanIdESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldUpperCanId, (Object)UPPER_CAN_ID_EDEFAULT, oldUpperCanIdESet));
        }
    }

    public boolean isSetUpperCanId() {
        return this.upperCanIdESet;
    }

    public PositiveIntegerDatatype getLowerCanIdData() {
        return this.lowerCanId.clone();
    }

    public void setLowerCanIdData(PositiveIntegerDatatype newLowerCanId) {
        this.lowerCanId.setRadix((int)newLowerCanId.getRadix());
        this.lowerCanId.setNoOfDigits((int)newLowerCanId.getNoOfDigits());
        this.setLowerCanId(newLowerCanId.getValue());
    }

    public PositiveIntegerDatatype getUpperCanIdData() {
        return this.upperCanId.clone();
    }

    public void setUpperCanIdData(PositiveIntegerDatatype newUpperCanId) {
        this.upperCanId.setRadix((int)newUpperCanId.getRadix());
        this.upperCanId.setNoOfDigits((int)newUpperCanId.getNoOfDigits());
        this.setUpperCanId(newUpperCanId.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanNmNode((CanNmNode)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetCanNmNode(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 28, CanNmNode.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getCanNmNode();
            }
            case 5: {
                return this.getLowerCanId();
            }
            case 6: {
                return this.getUpperCanId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setCanNmNode((CanNmNode)newValue);
                return;
            }
            case 5: {
                this.setLowerCanId((Long)newValue);
                return;
            }
            case 6: {
                this.setUpperCanId((Long)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setCanNmNode(null);
                return;
            }
            case 5: {
                this.unsetLowerCanId();
                return;
            }
            case 6: {
                this.unsetUpperCanId();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getCanNmNode() != null;
            }
            case 5: {
                return this.isSetLowerCanId();
            }
            case 6: {
                return this.isSetUpperCanId();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (lowerCanId: ");
        if (this.lowerCanIdESet) {
            result.append(this.lowerCanId);
        } else {
            result.append("<unset>");
        }
        result.append(", upperCanId: ");
        if (this.upperCanIdESet) {
            result.append(this.upperCanId);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

