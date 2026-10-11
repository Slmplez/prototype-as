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
package autosar3x.system.fibex.fibexcore.corecommunication.impl;

import autosar3x.swcomponent.datatype.constants.ValueSpecification;
import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar3x.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar3x.system.fibex.fibexcore.corecommunication.impl.AbstractSignalImpl;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class SystemSignalImpl
extends AbstractSignalImpl
implements SystemSignal,
IReferringClass {
    protected PrimitiveType dataType;
    protected ValueSpecification initValue;
    protected static final Integer LENGTH_EDEFAULT = new Integer(0);
    protected Integer length = LENGTH_EDEFAULT;
    protected boolean lengthESet;

    protected SystemSignalImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.SYSTEM_SIGNAL;
    }

    public PrimitiveType getDataType() {
        if (this.dataType != null && this.dataType.eIsProxy()) {
            InternalEObject oldDataType = (InternalEObject)this.dataType;
            this.dataType = (PrimitiveType)this.eResolveProxy(oldDataType);
            if (this.dataType != oldDataType && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 19, (Object)oldDataType, (Object)this.dataType));
            }
        }
        return this.dataType;
    }

    public PrimitiveType basicGetDataType() {
        return this.dataType;
    }

    public void setDataType(PrimitiveType newDataType) {
        PrimitiveType oldDataType = this.dataType;
        this.dataType = newDataType;
        AutosarObjectUtil.setDest((EObject)this, (int)19, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldDataType, (Object)this.dataType));
        }
    }

    public ValueSpecification getInitValue() {
        if (this.initValue != null && this.initValue.eIsProxy()) {
            InternalEObject oldInitValue = (InternalEObject)this.initValue;
            this.initValue = (ValueSpecification)this.eResolveProxy(oldInitValue);
            if (this.initValue != oldInitValue && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 20, (Object)oldInitValue, (Object)this.initValue));
            }
        }
        return this.initValue;
    }

    public ValueSpecification basicGetInitValue() {
        return this.initValue;
    }

    public void setInitValue(ValueSpecification newInitValue) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        AutosarObjectUtil.setDest((EObject)this, (int)20, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldInitValue, (Object)this.initValue));
        }
    }

    public Integer getLength() {
        return this.length;
    }

    public void setLength(Integer newLength) {
        Integer oldLength = this.length;
        this.length = newLength;
        boolean oldLengthESet = this.lengthESet;
        this.lengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldLength, (Object)this.length, !oldLengthESet));
        }
    }

    public void unsetLength() {
        Integer oldLength = this.length;
        boolean oldLengthESet = this.lengthESet;
        this.length = LENGTH_EDEFAULT;
        this.lengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldLength, (Object)LENGTH_EDEFAULT, oldLengthESet));
        }
    }

    public boolean isSetLength() {
        return this.lengthESet;
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 19: {
                if (resolve) {
                    return this.getDataType();
                }
                return this.basicGetDataType();
            }
            case 20: {
                if (resolve) {
                    return this.getInitValue();
                }
                return this.basicGetInitValue();
            }
            case 21: {
                return this.getLength();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 19: {
                this.setDataType((PrimitiveType)newValue);
                return;
            }
            case 20: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 21: {
                this.setLength((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 19: {
                this.setDataType(null);
                return;
            }
            case 20: {
                this.setInitValue(null);
                return;
            }
            case 21: {
                this.unsetLength();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 19: {
                return this.dataType != null;
            }
            case 20: {
                return this.initValue != null;
            }
            case 21: {
                return this.isSetLength();
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
        result.append(" (length: ");
        if (this.lengthESet) {
            result.append(this.length);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

