/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.InterfacesType6;
import com.etas.amd620.core.ComponentSpecification.OperatorT;
import com.etas.amd620.core.ComponentSpecification.OperatorTType;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class OperatorTImpl
extends GraphicObjectTImpl
implements OperatorT {
    protected PointT position;
    protected InterfacesType6 interfaces;
    protected static final BigInteger ARGUMENTS_EDEFAULT = null;
    protected BigInteger arguments = ARGUMENTS_EDEFAULT;
    protected static final Object OLD_FASHION_EDEFAULT = null;
    protected Object oldFashion = OLD_FASHION_EDEFAULT;
    protected static final BigInteger RETURNS_EDEFAULT = null;
    protected BigInteger returns = RETURNS_EDEFAULT;
    protected static final boolean TEMP_VAR_EDEFAULT = false;
    protected boolean tempVar = false;
    protected boolean tempVarESet;
    protected static final OperatorTType TYPE_EDEFAULT = OperatorTType._;
    protected OperatorTType type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected OperatorTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getOperatorT();
    }

    @Override
    public PointT getPosition() {
        return this.position;
    }

    public NotificationChain basicSetPosition(PointT newPosition, NotificationChain msgs) {
        PointT oldPosition = this.position;
        this.position = newPosition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldPosition, (Object)newPosition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setPosition(PointT newPosition) {
        if (newPosition != this.position) {
            NotificationChain msgs = null;
            if (this.position != null) {
                msgs = ((InternalEObject)this.position).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newPosition != null) {
                msgs = ((InternalEObject)newPosition).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetPosition(newPosition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newPosition, (Object)newPosition));
        }
    }

    @Override
    public InterfacesType6 getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(InterfacesType6 newInterfaces, NotificationChain msgs) {
        InterfacesType6 oldInterfaces = this.interfaces;
        this.interfaces = newInterfaces;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldInterfaces, (Object)newInterfaces);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterfaces(InterfacesType6 newInterfaces) {
        if (newInterfaces != this.interfaces) {
            NotificationChain msgs = null;
            if (this.interfaces != null) {
                msgs = ((InternalEObject)this.interfaces).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newInterfaces != null) {
                msgs = ((InternalEObject)newInterfaces).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetInterfaces(newInterfaces, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newInterfaces, (Object)newInterfaces));
        }
    }

    @Override
    public BigInteger getArguments() {
        return this.arguments;
    }

    @Override
    public void setArguments(BigInteger newArguments) {
        BigInteger oldArguments = this.arguments;
        this.arguments = newArguments;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldArguments, (Object)this.arguments));
        }
    }

    @Override
    public Object getOldFashion() {
        return this.oldFashion;
    }

    @Override
    public void setOldFashion(Object newOldFashion) {
        Object oldOldFashion = this.oldFashion;
        this.oldFashion = newOldFashion;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, oldOldFashion, this.oldFashion));
        }
    }

    @Override
    public BigInteger getReturns() {
        return this.returns;
    }

    @Override
    public void setReturns(BigInteger newReturns) {
        BigInteger oldReturns = this.returns;
        this.returns = newReturns;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldReturns, (Object)this.returns));
        }
    }

    @Override
    public boolean isTempVar() {
        return this.tempVar;
    }

    @Override
    public void setTempVar(boolean newTempVar) {
        boolean oldTempVar = this.tempVar;
        this.tempVar = newTempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVarESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, oldTempVar, this.tempVar, !oldTempVarESet));
        }
    }

    @Override
    public void unsetTempVar() {
        boolean oldTempVar = this.tempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVar = false;
        this.tempVarESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, oldTempVar, false, oldTempVarESet));
        }
    }

    @Override
    public boolean isSetTempVar() {
        return this.tempVarESet;
    }

    @Override
    public OperatorTType getType() {
        return this.type;
    }

    @Override
    public void setType(OperatorTType newType) {
        OperatorTType oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        OperatorTType oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
        }
    }

    @Override
    public boolean isSetType() {
        return this.typeESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetPosition(null, msgs);
            }
            case 5: {
                return this.basicSetInterfaces(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getPosition();
            }
            case 5: {
                return this.getInterfaces();
            }
            case 6: {
                return this.getArguments();
            }
            case 7: {
                return this.getOldFashion();
            }
            case 8: {
                return this.getReturns();
            }
            case 9: {
                return this.isTempVar();
            }
            case 10: {
                return this.getType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setPosition((PointT)newValue);
                return;
            }
            case 5: {
                this.setInterfaces((InterfacesType6)newValue);
                return;
            }
            case 6: {
                this.setArguments((BigInteger)newValue);
                return;
            }
            case 7: {
                this.setOldFashion(newValue);
                return;
            }
            case 8: {
                this.setReturns((BigInteger)newValue);
                return;
            }
            case 9: {
                this.setTempVar((Boolean)newValue);
                return;
            }
            case 10: {
                this.setType((OperatorTType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setPosition(null);
                return;
            }
            case 5: {
                this.setInterfaces(null);
                return;
            }
            case 6: {
                this.setArguments(ARGUMENTS_EDEFAULT);
                return;
            }
            case 7: {
                this.setOldFashion(OLD_FASHION_EDEFAULT);
                return;
            }
            case 8: {
                this.setReturns(RETURNS_EDEFAULT);
                return;
            }
            case 9: {
                this.unsetTempVar();
                return;
            }
            case 10: {
                this.unsetType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.position != null;
            }
            case 5: {
                return this.interfaces != null;
            }
            case 6: {
                return ARGUMENTS_EDEFAULT == null ? this.arguments != null : !ARGUMENTS_EDEFAULT.equals(this.arguments);
            }
            case 7: {
                return OLD_FASHION_EDEFAULT == null ? this.oldFashion != null : !OLD_FASHION_EDEFAULT.equals(this.oldFashion);
            }
            case 8: {
                return RETURNS_EDEFAULT == null ? this.returns != null : !RETURNS_EDEFAULT.equals(this.returns);
            }
            case 9: {
                return this.isSetTempVar();
            }
            case 10: {
                return this.isSetType();
            }
        }
        return super.eIsSet(featureID);
    }

    @Override
    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (arguments: ");
        result.append(this.arguments);
        result.append(", oldFashion: ");
        result.append(this.oldFashion);
        result.append(", returns: ");
        result.append(this.returns);
        result.append(", tempVar: ");
        if (this.tempVarESet) {
            result.append(this.tempVar);
        } else {
            result.append("<unset>");
        }
        result.append(", type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

