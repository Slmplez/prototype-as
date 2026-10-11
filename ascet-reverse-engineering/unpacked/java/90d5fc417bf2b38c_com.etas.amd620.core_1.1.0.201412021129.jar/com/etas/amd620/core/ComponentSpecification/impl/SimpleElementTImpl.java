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
import com.etas.amd620.core.ComponentSpecification.InterfacesType4;
import com.etas.amd620.core.ComponentSpecification.SimpleElementT;
import com.etas.amd620.core.ComponentSpecification.TypeType2;
import com.etas.amd620.core.ComponentSpecification.impl.SimpleElementBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SimpleElementTImpl
extends SimpleElementBaseTImpl
implements SimpleElementT {
    protected InterfacesType4 interfaces;
    protected static final TypeType2 TYPE_EDEFAULT = TypeType2.VARIABLE;
    protected TypeType2 type = TYPE_EDEFAULT;
    protected boolean typeESet;

    protected SimpleElementTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getSimpleElementT();
    }

    @Override
    public InterfacesType4 getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(InterfacesType4 newInterfaces, NotificationChain msgs) {
        InterfacesType4 oldInterfaces = this.interfaces;
        this.interfaces = newInterfaces;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldInterfaces, (Object)newInterfaces);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInterfaces(InterfacesType4 newInterfaces) {
        if (newInterfaces != this.interfaces) {
            NotificationChain msgs = null;
            if (this.interfaces != null) {
                msgs = ((InternalEObject)this.interfaces).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newInterfaces != null) {
                msgs = ((InternalEObject)newInterfaces).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetInterfaces(newInterfaces, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newInterfaces, (Object)newInterfaces));
        }
    }

    @Override
    public TypeType2 getType() {
        return this.type;
    }

    @Override
    public void setType(TypeType2 newType) {
        TypeType2 oldType = this.type;
        this.type = newType == null ? TYPE_EDEFAULT : newType;
        boolean oldTypeESet = this.typeESet;
        this.typeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldType, (Object)this.type, !oldTypeESet));
        }
    }

    @Override
    public void unsetType() {
        TypeType2 oldType = this.type;
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
            case 9: {
                return this.basicSetInterfaces(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getInterfaces();
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
            case 9: {
                this.setInterfaces((InterfacesType4)newValue);
                return;
            }
            case 10: {
                this.setType((TypeType2)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setInterfaces(null);
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
            case 9: {
                return this.interfaces != null;
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
        result.append(" (type: ");
        if (this.typeESet) {
            result.append((Object)this.type);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

