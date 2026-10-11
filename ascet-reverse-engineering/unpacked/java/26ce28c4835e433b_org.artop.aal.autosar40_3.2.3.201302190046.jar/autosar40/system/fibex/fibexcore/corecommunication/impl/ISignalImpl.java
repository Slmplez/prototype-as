/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.artop.aal.common.util.AutosarObjectUtil
 *  org.artop.aal.common.util.IReferringClass
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.fibex.fibexcore.corecommunication.impl;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.system.datamapping.DataTypePolicyEnum;
import autosar40.system.fibex.fibexcore.corecommunication.CorecommunicationPackage;
import autosar40.system.fibex.fibexcore.corecommunication.ISignal;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalProps;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import autosar40.system.fibex.fibexcore.impl.FibexElementImpl;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringClass;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ISignalImpl
extends FibexElementImpl
implements ISignal,
IReferringClass {
    protected static final DataTypePolicyEnum DATA_TYPE_POLICY_EDEFAULT = DataTypePolicyEnum.NETWORK_REPRESENTATION_FROM_COM_SPEC;
    protected DataTypePolicyEnum dataTypePolicy = DATA_TYPE_POLICY_EDEFAULT;
    protected boolean dataTypePolicyESet;
    protected ISignalProps iSignalProps;
    protected ValueSpecification initValue;
    protected static final IntegerDatatype LENGTH_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype length = LENGTH_EDEFAULT.clone();
    protected boolean lengthESet;
    protected SwDataDefProps networkRepresentationProps;
    protected SystemSignal systemSignal;

    protected ISignalImpl() {
    }

    protected EClass eStaticClass() {
        return CorecommunicationPackage.Literals.ISIGNAL;
    }

    public DataTypePolicyEnum getDataTypePolicy() {
        return this.dataTypePolicy;
    }

    public void setDataTypePolicy(DataTypePolicyEnum newDataTypePolicy) {
        DataTypePolicyEnum oldDataTypePolicy = this.dataTypePolicy;
        this.dataTypePolicy = newDataTypePolicy == null ? DATA_TYPE_POLICY_EDEFAULT : newDataTypePolicy;
        boolean oldDataTypePolicyESet = this.dataTypePolicyESet;
        this.dataTypePolicyESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldDataTypePolicy, (Object)this.dataTypePolicy, !oldDataTypePolicyESet));
        }
    }

    public void unsetDataTypePolicy() {
        DataTypePolicyEnum oldDataTypePolicy = this.dataTypePolicy;
        boolean oldDataTypePolicyESet = this.dataTypePolicyESet;
        this.dataTypePolicy = DATA_TYPE_POLICY_EDEFAULT;
        this.dataTypePolicyESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 21, (Object)oldDataTypePolicy, (Object)DATA_TYPE_POLICY_EDEFAULT, oldDataTypePolicyESet));
        }
    }

    public boolean isSetDataTypePolicy() {
        return this.dataTypePolicyESet;
    }

    public ISignalProps getISignalProps() {
        return this.iSignalProps;
    }

    public NotificationChain basicSetISignalProps(ISignalProps newISignalProps, NotificationChain msgs) {
        ISignalProps oldISignalProps = this.iSignalProps;
        this.iSignalProps = newISignalProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldISignalProps, (Object)newISignalProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setISignalProps(ISignalProps newISignalProps) {
        if (newISignalProps != this.iSignalProps) {
            NotificationChain msgs = null;
            if (this.iSignalProps != null) {
                msgs = ((InternalEObject)this.iSignalProps).eInverseRemove((InternalEObject)this, 4, ISignalProps.class, msgs);
            }
            if (newISignalProps != null) {
                msgs = ((InternalEObject)newISignalProps).eInverseAdd((InternalEObject)this, 4, ISignalProps.class, msgs);
            }
            if ((msgs = this.basicSetISignalProps(newISignalProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newISignalProps, (Object)newISignalProps));
        }
    }

    public ValueSpecification getInitValue() {
        return this.initValue;
    }

    public NotificationChain basicSetInitValue(ValueSpecification newInitValue, NotificationChain msgs) {
        ValueSpecification oldInitValue = this.initValue;
        this.initValue = newInitValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 23, (Object)oldInitValue, (Object)newInitValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setInitValue(ValueSpecification newInitValue) {
        if (newInitValue != this.initValue) {
            NotificationChain msgs = null;
            if (this.initValue != null) {
                msgs = ((InternalEObject)this.initValue).eInverseRemove((InternalEObject)this, -24, null, msgs);
            }
            if (newInitValue != null) {
                msgs = ((InternalEObject)newInitValue).eInverseAdd((InternalEObject)this, -24, null, msgs);
            }
            if ((msgs = this.basicSetInitValue(newInitValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 23, (Object)newInitValue, (Object)newInitValue));
        }
    }

    public Integer getLength() {
        return (Integer)this.length.basicGetValue();
    }

    public void setLength(Integer newLength) {
        Integer oldLength = (Integer)this.length.basicGetValue();
        this.length.basicSetValue((Object)newLength);
        boolean oldLengthESet = this.lengthESet;
        this.lengthESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 24, (Object)oldLength, (Object)newLength, !oldLengthESet));
        }
    }

    public void unsetLength() {
        Integer oldLength = (Integer)this.length.basicGetValue();
        boolean oldLengthESet = this.lengthESet;
        this.length = LENGTH_EDEFAULT.clone();
        this.lengthESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 24, (Object)oldLength, (Object)LENGTH_EDEFAULT, oldLengthESet));
        }
    }

    public boolean isSetLength() {
        return this.lengthESet;
    }

    public SwDataDefProps getNetworkRepresentationProps() {
        return this.networkRepresentationProps;
    }

    public NotificationChain basicSetNetworkRepresentationProps(SwDataDefProps newNetworkRepresentationProps, NotificationChain msgs) {
        SwDataDefProps oldNetworkRepresentationProps = this.networkRepresentationProps;
        this.networkRepresentationProps = newNetworkRepresentationProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 25, (Object)oldNetworkRepresentationProps, (Object)newNetworkRepresentationProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setNetworkRepresentationProps(SwDataDefProps newNetworkRepresentationProps) {
        if (newNetworkRepresentationProps != this.networkRepresentationProps) {
            NotificationChain msgs = null;
            if (this.networkRepresentationProps != null) {
                msgs = ((InternalEObject)this.networkRepresentationProps).eInverseRemove((InternalEObject)this, -26, null, msgs);
            }
            if (newNetworkRepresentationProps != null) {
                msgs = ((InternalEObject)newNetworkRepresentationProps).eInverseAdd((InternalEObject)this, -26, null, msgs);
            }
            if ((msgs = this.basicSetNetworkRepresentationProps(newNetworkRepresentationProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 25, (Object)newNetworkRepresentationProps, (Object)newNetworkRepresentationProps));
        }
    }

    public SystemSignal getSystemSignal() {
        if (this.systemSignal != null && this.systemSignal.eIsProxy()) {
            InternalEObject oldSystemSignal = (InternalEObject)this.systemSignal;
            this.systemSignal = (SystemSignal)this.eResolveProxy(oldSystemSignal);
            if (this.systemSignal != oldSystemSignal && this.eNotificationRequired()) {
                this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 9, 26, (Object)oldSystemSignal, (Object)this.systemSignal));
            }
        }
        return this.systemSignal;
    }

    public SystemSignal basicGetSystemSignal() {
        return this.systemSignal;
    }

    public void setSystemSignal(SystemSignal newSystemSignal) {
        SystemSignal oldSystemSignal = this.systemSignal;
        this.systemSignal = newSystemSignal;
        AutosarObjectUtil.setDest((EObject)this, (int)26, (int)-1, null);
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 26, (Object)oldSystemSignal, (Object)this.systemSignal));
        }
    }

    public IntegerDatatype getLengthData() {
        return this.length.clone();
    }

    public void setLengthData(IntegerDatatype newLength) {
        this.length.setRadix((int)newLength.getRadix());
        this.length.setNoOfDigits((int)newLength.getNoOfDigits());
        this.setLength(newLength.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                if (this.iSignalProps != null) {
                    msgs = ((InternalEObject)this.iSignalProps).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetISignalProps((ISignalProps)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 22: {
                return this.basicSetISignalProps(null, msgs);
            }
            case 23: {
                return this.basicSetInitValue(null, msgs);
            }
            case 25: {
                return this.basicSetNetworkRepresentationProps(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getDataTypePolicy();
            }
            case 22: {
                return this.getISignalProps();
            }
            case 23: {
                return this.getInitValue();
            }
            case 24: {
                return this.getLength();
            }
            case 25: {
                return this.getNetworkRepresentationProps();
            }
            case 26: {
                if (resolve) {
                    return this.getSystemSignal();
                }
                return this.basicGetSystemSignal();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.setDataTypePolicy((DataTypePolicyEnum)((Object)newValue));
                return;
            }
            case 22: {
                this.setISignalProps((ISignalProps)newValue);
                return;
            }
            case 23: {
                this.setInitValue((ValueSpecification)newValue);
                return;
            }
            case 24: {
                this.setLength((Integer)newValue);
                return;
            }
            case 25: {
                this.setNetworkRepresentationProps((SwDataDefProps)newValue);
                return;
            }
            case 26: {
                this.setSystemSignal((SystemSignal)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.unsetDataTypePolicy();
                return;
            }
            case 22: {
                this.setISignalProps(null);
                return;
            }
            case 23: {
                this.setInitValue(null);
                return;
            }
            case 24: {
                this.unsetLength();
                return;
            }
            case 25: {
                this.setNetworkRepresentationProps(null);
                return;
            }
            case 26: {
                this.setSystemSignal(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.isSetDataTypePolicy();
            }
            case 22: {
                return this.iSignalProps != null;
            }
            case 23: {
                return this.initValue != null;
            }
            case 24: {
                return this.isSetLength();
            }
            case 25: {
                return this.networkRepresentationProps != null;
            }
            case 26: {
                return this.systemSignal != null;
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
        result.append(" (dataTypePolicy: ");
        if (this.dataTypePolicyESet) {
            result.append((Object)this.dataTypePolicy);
        } else {
            result.append("<unset>");
        }
        result.append(", length: ");
        if (this.lengthESet) {
            result.append(this.length);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

