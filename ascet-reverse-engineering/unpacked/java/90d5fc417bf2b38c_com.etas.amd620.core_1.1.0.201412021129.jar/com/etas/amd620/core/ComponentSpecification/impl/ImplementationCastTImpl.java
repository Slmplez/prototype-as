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
import com.etas.amd620.core.ComponentSpecification.ImplementationCastT;
import com.etas.amd620.core.ComponentSpecification.InterfacesType5;
import com.etas.amd620.core.ComponentSpecification.impl.SimpleElementBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ImplementationCastTImpl
extends SimpleElementBaseTImpl
implements ImplementationCastT {
    protected InterfacesType5 interfaces;
    protected static final boolean TEMP_VAR_EDEFAULT = false;
    protected boolean tempVar = false;
    protected boolean tempVarESet;

    protected ImplementationCastTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getImplementationCastT();
    }

    @Override
    public InterfacesType5 getInterfaces() {
        return this.interfaces;
    }

    public NotificationChain basicSetInterfaces(InterfacesType5 newInterfaces, NotificationChain msgs) {
        InterfacesType5 oldInterfaces = this.interfaces;
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
    public void setInterfaces(InterfacesType5 newInterfaces) {
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, oldTempVar, this.tempVar, !oldTempVarESet));
        }
    }

    @Override
    public void unsetTempVar() {
        boolean oldTempVar = this.tempVar;
        boolean oldTempVarESet = this.tempVarESet;
        this.tempVar = false;
        this.tempVarESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, oldTempVar, false, oldTempVarESet));
        }
    }

    @Override
    public boolean isSetTempVar() {
        return this.tempVarESet;
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
                return this.isTempVar();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setInterfaces((InterfacesType5)newValue);
                return;
            }
            case 10: {
                this.setTempVar((Boolean)newValue);
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
                this.unsetTempVar();
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
                return this.isSetTempVar();
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
        result.append(" (tempVar: ");
        if (this.tempVarESet) {
            result.append(this.tempVar);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

