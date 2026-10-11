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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.MethodInterfaceT;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType;
import com.etas.amd620.core.ComponentMain.impl.ItemTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class MethodInterfaceTImpl
extends ItemTImpl
implements MethodInterfaceT {
    protected MethodSignaturesType methodSignatures;
    protected static final double CHECKSUM_GENERAL_EDEFAULT = 0.0;
    protected double checksumGeneral = 0.0;
    protected boolean checksumGeneralESet;
    protected static final double CHECKSUM_PUBLIC_INTERFACE_EDEFAULT = 0.0;
    protected double checksumPublicInterface = 0.0;
    protected boolean checksumPublicInterfaceESet;

    protected MethodInterfaceTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.METHOD_INTERFACE_T;
    }

    @Override
    public MethodSignaturesType getMethodSignatures() {
        return this.methodSignatures;
    }

    public NotificationChain basicSetMethodSignatures(MethodSignaturesType newMethodSignatures, NotificationChain msgs) {
        MethodSignaturesType oldMethodSignatures = this.methodSignatures;
        this.methodSignatures = newMethodSignatures;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldMethodSignatures, (Object)newMethodSignatures);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodSignatures(MethodSignaturesType newMethodSignatures) {
        if (newMethodSignatures != this.methodSignatures) {
            NotificationChain msgs = null;
            if (this.methodSignatures != null) {
                msgs = ((InternalEObject)this.methodSignatures).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newMethodSignatures != null) {
                msgs = ((InternalEObject)newMethodSignatures).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetMethodSignatures(newMethodSignatures, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newMethodSignatures, (Object)newMethodSignatures));
        }
    }

    @Override
    public double getChecksumGeneral() {
        return this.checksumGeneral;
    }

    @Override
    public void setChecksumGeneral(double newChecksumGeneral) {
        double oldChecksumGeneral = this.checksumGeneral;
        this.checksumGeneral = newChecksumGeneral;
        boolean oldChecksumGeneralESet = this.checksumGeneralESet;
        this.checksumGeneralESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, oldChecksumGeneral, this.checksumGeneral, !oldChecksumGeneralESet));
        }
    }

    @Override
    public void unsetChecksumGeneral() {
        double oldChecksumGeneral = this.checksumGeneral;
        boolean oldChecksumGeneralESet = this.checksumGeneralESet;
        this.checksumGeneral = 0.0;
        this.checksumGeneralESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 12, oldChecksumGeneral, 0.0, oldChecksumGeneralESet));
        }
    }

    @Override
    public boolean isSetChecksumGeneral() {
        return this.checksumGeneralESet;
    }

    @Override
    public double getChecksumPublicInterface() {
        return this.checksumPublicInterface;
    }

    @Override
    public void setChecksumPublicInterface(double newChecksumPublicInterface) {
        double oldChecksumPublicInterface = this.checksumPublicInterface;
        this.checksumPublicInterface = newChecksumPublicInterface;
        boolean oldChecksumPublicInterfaceESet = this.checksumPublicInterfaceESet;
        this.checksumPublicInterfaceESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, oldChecksumPublicInterface, this.checksumPublicInterface, !oldChecksumPublicInterfaceESet));
        }
    }

    @Override
    public void unsetChecksumPublicInterface() {
        double oldChecksumPublicInterface = this.checksumPublicInterface;
        boolean oldChecksumPublicInterfaceESet = this.checksumPublicInterfaceESet;
        this.checksumPublicInterface = 0.0;
        this.checksumPublicInterfaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, oldChecksumPublicInterface, 0.0, oldChecksumPublicInterfaceESet));
        }
    }

    @Override
    public boolean isSetChecksumPublicInterface() {
        return this.checksumPublicInterfaceESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                return this.basicSetMethodSignatures(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 11: {
                return this.getMethodSignatures();
            }
            case 12: {
                return this.getChecksumGeneral();
            }
            case 13: {
                return this.getChecksumPublicInterface();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 11: {
                this.setMethodSignatures((MethodSignaturesType)newValue);
                return;
            }
            case 12: {
                this.setChecksumGeneral((Double)newValue);
                return;
            }
            case 13: {
                this.setChecksumPublicInterface((Double)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 11: {
                this.setMethodSignatures(null);
                return;
            }
            case 12: {
                this.unsetChecksumGeneral();
                return;
            }
            case 13: {
                this.unsetChecksumPublicInterface();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 11: {
                return this.methodSignatures != null;
            }
            case 12: {
                return this.isSetChecksumGeneral();
            }
            case 13: {
                return this.isSetChecksumPublicInterface();
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
        result.append(" (checksumGeneral: ");
        if (this.checksumGeneralESet) {
            result.append(this.checksumGeneral);
        } else {
            result.append("<unset>");
        }
        result.append(", checksumPublicInterface: ");
        if (this.checksumPublicInterfaceESet) {
            result.append(this.checksumPublicInterface);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

