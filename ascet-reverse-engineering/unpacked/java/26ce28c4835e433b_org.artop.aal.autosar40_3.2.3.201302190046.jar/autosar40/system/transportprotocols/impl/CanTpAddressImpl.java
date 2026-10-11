/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.CanTpAddress;
import autosar40.system.transportprotocols.CanTpConfig;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class CanTpAddressImpl
extends IdentifiableImpl
implements CanTpAddress {
    protected static final IntegerDatatype TP_ADDRESS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype tpAddress = TP_ADDRESS_EDEFAULT.clone();
    protected boolean tpAddressESet;
    protected static final IntegerDatatype TP_ADDRESS_EXTENSION_VALUE_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype tpAddressExtensionValue = TP_ADDRESS_EXTENSION_VALUE_EDEFAULT.clone();
    protected boolean tpAddressExtensionValueESet;
    protected VariationPoint variationPoint;

    protected CanTpAddressImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.CAN_TP_ADDRESS;
    }

    public CanTpConfig getCanTpConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (CanTpConfig)this.eContainer();
    }

    public NotificationChain basicSetCanTpConfig(CanTpConfig newCanTpConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newCanTpConfig, 18, msgs);
        return msgs;
    }

    public void setCanTpConfig(CanTpConfig newCanTpConfig) {
        if (newCanTpConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newCanTpConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newCanTpConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newCanTpConfig != null) {
                msgs = ((InternalEObject)newCanTpConfig).eInverseAdd((InternalEObject)this, 22, CanTpConfig.class, msgs);
            }
            if ((msgs = this.basicSetCanTpConfig(newCanTpConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newCanTpConfig, (Object)newCanTpConfig));
        }
    }

    public Integer getTpAddress() {
        return (Integer)this.tpAddress.basicGetValue();
    }

    public void setTpAddress(Integer newTpAddress) {
        Integer oldTpAddress = (Integer)this.tpAddress.basicGetValue();
        this.tpAddress.basicSetValue((Object)newTpAddress);
        boolean oldTpAddressESet = this.tpAddressESet;
        this.tpAddressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldTpAddress, (Object)newTpAddress, !oldTpAddressESet));
        }
    }

    public void unsetTpAddress() {
        Integer oldTpAddress = (Integer)this.tpAddress.basicGetValue();
        boolean oldTpAddressESet = this.tpAddressESet;
        this.tpAddress = TP_ADDRESS_EDEFAULT.clone();
        this.tpAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldTpAddress, (Object)TP_ADDRESS_EDEFAULT, oldTpAddressESet));
        }
    }

    public boolean isSetTpAddress() {
        return this.tpAddressESet;
    }

    public Integer getTpAddressExtensionValue() {
        return (Integer)this.tpAddressExtensionValue.basicGetValue();
    }

    public void setTpAddressExtensionValue(Integer newTpAddressExtensionValue) {
        Integer oldTpAddressExtensionValue = (Integer)this.tpAddressExtensionValue.basicGetValue();
        this.tpAddressExtensionValue.basicSetValue((Object)newTpAddressExtensionValue);
        boolean oldTpAddressExtensionValueESet = this.tpAddressExtensionValueESet;
        this.tpAddressExtensionValueESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 20, (Object)oldTpAddressExtensionValue, (Object)newTpAddressExtensionValue, !oldTpAddressExtensionValueESet));
        }
    }

    public void unsetTpAddressExtensionValue() {
        Integer oldTpAddressExtensionValue = (Integer)this.tpAddressExtensionValue.basicGetValue();
        boolean oldTpAddressExtensionValueESet = this.tpAddressExtensionValueESet;
        this.tpAddressExtensionValue = TP_ADDRESS_EXTENSION_VALUE_EDEFAULT.clone();
        this.tpAddressExtensionValueESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 20, (Object)oldTpAddressExtensionValue, (Object)TP_ADDRESS_EXTENSION_VALUE_EDEFAULT, oldTpAddressExtensionValueESet));
        }
    }

    public boolean isSetTpAddressExtensionValue() {
        return this.tpAddressExtensionValueESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 21, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -22, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -22, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 21, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getTpAddressExtensionValueData() {
        return this.tpAddressExtensionValue.clone();
    }

    public void setTpAddressExtensionValueData(IntegerDatatype newTpAddressExtensionValue) {
        this.tpAddressExtensionValue.setRadix((int)newTpAddressExtensionValue.getRadix());
        this.tpAddressExtensionValue.setNoOfDigits((int)newTpAddressExtensionValue.getNoOfDigits());
        this.setTpAddressExtensionValue(newTpAddressExtensionValue.getValue());
    }

    public IntegerDatatype getTpAddressData() {
        return this.tpAddress.clone();
    }

    public void setTpAddressData(IntegerDatatype newTpAddress) {
        this.tpAddress.setRadix((int)newTpAddress.getRadix());
        this.tpAddress.setNoOfDigits((int)newTpAddress.getNoOfDigits());
        this.setTpAddress(newTpAddress.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetCanTpConfig((CanTpConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetCanTpConfig(null, msgs);
            }
            case 21: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, CanTpConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getCanTpConfig();
            }
            case 19: {
                return this.getTpAddress();
            }
            case 20: {
                return this.getTpAddressExtensionValue();
            }
            case 21: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setCanTpConfig((CanTpConfig)newValue);
                return;
            }
            case 19: {
                this.setTpAddress((Integer)newValue);
                return;
            }
            case 20: {
                this.setTpAddressExtensionValue((Integer)newValue);
                return;
            }
            case 21: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setCanTpConfig(null);
                return;
            }
            case 19: {
                this.unsetTpAddress();
                return;
            }
            case 20: {
                this.unsetTpAddressExtensionValue();
                return;
            }
            case 21: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getCanTpConfig() != null;
            }
            case 19: {
                return this.isSetTpAddress();
            }
            case 20: {
                return this.isSetTpAddressExtensionValue();
            }
            case 21: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (tpAddress: ");
        if (this.tpAddressESet) {
            result.append(this.tpAddress);
        } else {
            result.append("<unset>");
        }
        result.append(", tpAddressExtensionValue: ");
        if (this.tpAddressExtensionValueESet) {
            result.append(this.tpAddressExtensionValue);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

