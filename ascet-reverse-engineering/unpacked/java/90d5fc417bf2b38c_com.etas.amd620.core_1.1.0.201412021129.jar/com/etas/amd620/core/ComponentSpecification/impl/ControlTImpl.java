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
import com.etas.amd620.core.ComponentSpecification.ControlT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType;
import com.etas.amd620.core.ComponentSpecification.PointT;
import com.etas.amd620.core.ComponentSpecification.SizeT;
import com.etas.amd620.core.ComponentSpecification.TypeType;
import com.etas.amd620.core.ComponentSpecification.impl.GraphicObjectTImpl;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ControlTImpl
extends GraphicObjectTImpl
implements ControlT {
    protected PointT position;
    protected InterfacesType interfaces;
    protected SizeT size;
    protected static final BigInteger ARGUMENTS_EDEFAULT = null;
    protected BigInteger arguments = ARGUMENTS_EDEFAULT;
    protected static final BigInteger RETURNS_EDEFAULT = null;
    protected BigInteger returns = RETURNS_EDEFAULT;
    protected static final TypeType TYPE_EDEFAULT = TypeType.IF_THEN;
    protected TypeType type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected ControlTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getControlT();
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
    public InterfacesType getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(InterfacesType newInterfaces, NotificationChain msgs) {
        InterfacesType oldInterfaces = this.interfaces;
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
    public void setInterfaces(InterfacesType newInterfaces) {
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
    public SizeT getSize() {
        return this.size;
    }

    public NotificationChain basicSetSize(SizeT newSize, NotificationChain msgs) {
        SizeT oldSize = this.size;
        this.size = newSize;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSize, (Object)newSize);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSize(SizeT newSize) {
        if (newSize != this.size) {
            NotificationChain msgs = null;
            if (this.size != null) {
                msgs = ((InternalEObject)this.size).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSize != null) {
                msgs = ((InternalEObject)newSize).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSize(newSize, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSize, (Object)newSize));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldArguments, (Object)this.arguments));
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
    public TypeType getType() {
        return this.type;
    }

    @Override
    public void setType(TypeType newType) {
        TypeType oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        TypeType oldType = this.type;
        boolean oldTypeESet = this.typeESet;
        this.type = TYPE_EDEFAULT;
        this.typeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldType, (Object)TYPE_EDEFAULT, oldTypeESet));
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
            case 6: {
                return this.basicSetSize(null, msgs);
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
                return this.getSize();
            }
            case 7: {
                return this.getArguments();
            }
            case 8: {
                return this.getReturns();
            }
            case 9: {
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
                this.setInterfaces((InterfacesType)newValue);
                return;
            }
            case 6: {
                this.setSize((SizeT)newValue);
                return;
            }
            case 7: {
                this.setArguments((BigInteger)newValue);
                return;
            }
            case 8: {
                this.setReturns((BigInteger)newValue);
                return;
            }
            case 9: {
                this.setType((TypeType)((Object)newValue));
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
                this.setSize(null);
                return;
            }
            case 7: {
                this.setArguments(ARGUMENTS_EDEFAULT);
                return;
            }
            case 8: {
                this.setReturns(RETURNS_EDEFAULT);
                return;
            }
            case 9: {
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
                return this.size != null;
            }
            case 7: {
                return ARGUMENTS_EDEFAULT == null ? this.arguments != null : !ARGUMENTS_EDEFAULT.equals(this.arguments);
            }
            case 8: {
                return RETURNS_EDEFAULT == null ? this.returns != null : !RETURNS_EDEFAULT.equals(this.returns);
            }
            case 9: {
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
        result.append(", returns: ");
        result.append(this.returns);
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

