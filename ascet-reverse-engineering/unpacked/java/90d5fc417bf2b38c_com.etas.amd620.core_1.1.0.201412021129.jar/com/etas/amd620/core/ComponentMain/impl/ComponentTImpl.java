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
import com.etas.amd620.core.ComponentMain.ComponentT;
import com.etas.amd620.core.ComponentMain.ElementsType;
import com.etas.amd620.core.ComponentMain.MethodSignaturesType1;
import com.etas.amd620.core.ComponentMain.SpecificationTypeType;
import com.etas.amd620.core.ComponentMain.TimeStampsType;
import com.etas.amd620.core.ComponentMain.impl.ItemTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ComponentTImpl
extends ItemTImpl
implements ComponentT {
    protected ElementsType elements;
    protected MethodSignaturesType1 methodSignatures;
    protected TimeStampsType timeStamps;
    protected static final double CHECKSUM_GENERAL_EDEFAULT = 0.0;
    protected double checksumGeneral = 0.0;
    protected boolean checksumGeneralESet;
    protected static final double CHECKSUM_PUBLIC_INTERFACE_EDEFAULT = 0.0;
    protected double checksumPublicInterface = 0.0;
    protected boolean checksumPublicInterfaceESet;
    protected static final Object DEFAULT_PROJECT_NAME_EDEFAULT = null;
    protected Object defaultProjectName = DEFAULT_PROJECT_NAME_EDEFAULT;
    protected static final Object DEFAULT_PROJECT_OID_EDEFAULT = null;
    protected Object defaultProjectOID = DEFAULT_PROJECT_OID_EDEFAULT;
    protected static final SpecificationTypeType SPECIFICATION_TYPE_EDEFAULT = SpecificationTypeType.UNKNOWN;
    protected SpecificationTypeType specificationType = SPECIFICATION_TYPE_EDEFAULT;
    protected boolean specificationTypeESet;

    protected ComponentTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.COMPONENT_T;
    }

    @Override
    public ElementsType getElements() {
        return this.elements;
    }

    public NotificationChain basicSetElements(ElementsType newElements, NotificationChain msgs) {
        ElementsType oldElements = this.elements;
        this.elements = newElements;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldElements, (Object)newElements);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setElements(ElementsType newElements) {
        if (newElements != this.elements) {
            NotificationChain msgs = null;
            if (this.elements != null) {
                msgs = ((InternalEObject)this.elements).eInverseRemove((InternalEObject)this, -12, null, msgs);
            }
            if (newElements != null) {
                msgs = ((InternalEObject)newElements).eInverseAdd((InternalEObject)this, -12, null, msgs);
            }
            if ((msgs = this.basicSetElements(newElements, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)newElements, (Object)newElements));
        }
    }

    @Override
    public MethodSignaturesType1 getMethodSignatures() {
        return this.methodSignatures;
    }

    public NotificationChain basicSetMethodSignatures(MethodSignaturesType1 newMethodSignatures, NotificationChain msgs) {
        MethodSignaturesType1 oldMethodSignatures = this.methodSignatures;
        this.methodSignatures = newMethodSignatures;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldMethodSignatures, (Object)newMethodSignatures);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodSignatures(MethodSignaturesType1 newMethodSignatures) {
        if (newMethodSignatures != this.methodSignatures) {
            NotificationChain msgs = null;
            if (this.methodSignatures != null) {
                msgs = ((InternalEObject)this.methodSignatures).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newMethodSignatures != null) {
                msgs = ((InternalEObject)newMethodSignatures).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetMethodSignatures(newMethodSignatures, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newMethodSignatures, (Object)newMethodSignatures));
        }
    }

    @Override
    public TimeStampsType getTimeStamps() {
        return this.timeStamps;
    }

    public NotificationChain basicSetTimeStamps(TimeStampsType newTimeStamps, NotificationChain msgs) {
        TimeStampsType oldTimeStamps = this.timeStamps;
        this.timeStamps = newTimeStamps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldTimeStamps, (Object)newTimeStamps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTimeStamps(TimeStampsType newTimeStamps) {
        if (newTimeStamps != this.timeStamps) {
            NotificationChain msgs = null;
            if (this.timeStamps != null) {
                msgs = ((InternalEObject)this.timeStamps).eInverseRemove((InternalEObject)this, -14, null, msgs);
            }
            if (newTimeStamps != null) {
                msgs = ((InternalEObject)newTimeStamps).eInverseAdd((InternalEObject)this, -14, null, msgs);
            }
            if ((msgs = this.basicSetTimeStamps(newTimeStamps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)newTimeStamps, (Object)newTimeStamps));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, oldChecksumGeneral, this.checksumGeneral, !oldChecksumGeneralESet));
        }
    }

    @Override
    public void unsetChecksumGeneral() {
        double oldChecksumGeneral = this.checksumGeneral;
        boolean oldChecksumGeneralESet = this.checksumGeneralESet;
        this.checksumGeneral = 0.0;
        this.checksumGeneralESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 14, oldChecksumGeneral, 0.0, oldChecksumGeneralESet));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, oldChecksumPublicInterface, this.checksumPublicInterface, !oldChecksumPublicInterfaceESet));
        }
    }

    @Override
    public void unsetChecksumPublicInterface() {
        double oldChecksumPublicInterface = this.checksumPublicInterface;
        boolean oldChecksumPublicInterfaceESet = this.checksumPublicInterfaceESet;
        this.checksumPublicInterface = 0.0;
        this.checksumPublicInterfaceESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 15, oldChecksumPublicInterface, 0.0, oldChecksumPublicInterfaceESet));
        }
    }

    @Override
    public boolean isSetChecksumPublicInterface() {
        return this.checksumPublicInterfaceESet;
    }

    @Override
    public Object getDefaultProjectName() {
        return this.defaultProjectName;
    }

    @Override
    public void setDefaultProjectName(Object newDefaultProjectName) {
        Object oldDefaultProjectName = this.defaultProjectName;
        this.defaultProjectName = newDefaultProjectName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, oldDefaultProjectName, this.defaultProjectName));
        }
    }

    @Override
    public Object getDefaultProjectOID() {
        return this.defaultProjectOID;
    }

    @Override
    public void setDefaultProjectOID(Object newDefaultProjectOID) {
        Object oldDefaultProjectOID = this.defaultProjectOID;
        this.defaultProjectOID = newDefaultProjectOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 17, oldDefaultProjectOID, this.defaultProjectOID));
        }
    }

    @Override
    public SpecificationTypeType getSpecificationType() {
        return this.specificationType;
    }

    @Override
    public void setSpecificationType(SpecificationTypeType newSpecificationType) {
        SpecificationTypeType oldSpecificationType = this.specificationType;
        this.specificationType = newSpecificationType == null ? SPECIFICATION_TYPE_EDEFAULT : newSpecificationType;
        boolean oldSpecificationTypeESet = this.specificationTypeESet;
        this.specificationTypeESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldSpecificationType, (Object)this.specificationType, !oldSpecificationTypeESet));
        }
    }

    @Override
    public void unsetSpecificationType() {
        SpecificationTypeType oldSpecificationType = this.specificationType;
        boolean oldSpecificationTypeESet = this.specificationTypeESet;
        this.specificationType = SPECIFICATION_TYPE_EDEFAULT;
        this.specificationTypeESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldSpecificationType, (Object)SPECIFICATION_TYPE_EDEFAULT, oldSpecificationTypeESet));
        }
    }

    @Override
    public boolean isSetSpecificationType() {
        return this.specificationTypeESet;
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 11: {
                return this.basicSetElements(null, msgs);
            }
            case 12: {
                return this.basicSetMethodSignatures(null, msgs);
            }
            case 13: {
                return this.basicSetTimeStamps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 11: {
                return this.getElements();
            }
            case 12: {
                return this.getMethodSignatures();
            }
            case 13: {
                return this.getTimeStamps();
            }
            case 14: {
                return this.getChecksumGeneral();
            }
            case 15: {
                return this.getChecksumPublicInterface();
            }
            case 16: {
                return this.getDefaultProjectName();
            }
            case 17: {
                return this.getDefaultProjectOID();
            }
            case 18: {
                return this.getSpecificationType();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 11: {
                this.setElements((ElementsType)newValue);
                return;
            }
            case 12: {
                this.setMethodSignatures((MethodSignaturesType1)newValue);
                return;
            }
            case 13: {
                this.setTimeStamps((TimeStampsType)newValue);
                return;
            }
            case 14: {
                this.setChecksumGeneral((Double)newValue);
                return;
            }
            case 15: {
                this.setChecksumPublicInterface((Double)newValue);
                return;
            }
            case 16: {
                this.setDefaultProjectName(newValue);
                return;
            }
            case 17: {
                this.setDefaultProjectOID(newValue);
                return;
            }
            case 18: {
                this.setSpecificationType((SpecificationTypeType)((Object)newValue));
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 11: {
                this.setElements(null);
                return;
            }
            case 12: {
                this.setMethodSignatures(null);
                return;
            }
            case 13: {
                this.setTimeStamps(null);
                return;
            }
            case 14: {
                this.unsetChecksumGeneral();
                return;
            }
            case 15: {
                this.unsetChecksumPublicInterface();
                return;
            }
            case 16: {
                this.setDefaultProjectName(DEFAULT_PROJECT_NAME_EDEFAULT);
                return;
            }
            case 17: {
                this.setDefaultProjectOID(DEFAULT_PROJECT_OID_EDEFAULT);
                return;
            }
            case 18: {
                this.unsetSpecificationType();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 11: {
                return this.elements != null;
            }
            case 12: {
                return this.methodSignatures != null;
            }
            case 13: {
                return this.timeStamps != null;
            }
            case 14: {
                return this.isSetChecksumGeneral();
            }
            case 15: {
                return this.isSetChecksumPublicInterface();
            }
            case 16: {
                return DEFAULT_PROJECT_NAME_EDEFAULT == null ? this.defaultProjectName != null : !DEFAULT_PROJECT_NAME_EDEFAULT.equals(this.defaultProjectName);
            }
            case 17: {
                return DEFAULT_PROJECT_OID_EDEFAULT == null ? this.defaultProjectOID != null : !DEFAULT_PROJECT_OID_EDEFAULT.equals(this.defaultProjectOID);
            }
            case 18: {
                return this.isSetSpecificationType();
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
        result.append(", defaultProjectName: ");
        result.append(this.defaultProjectName);
        result.append(", defaultProjectOID: ");
        result.append(this.defaultProjectOID);
        result.append(", specificationType: ");
        if (this.specificationTypeESet) {
            result.append((Object)this.specificationType);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

