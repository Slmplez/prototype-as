/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.system.transportprotocols.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.transportprotocols.TpAddress;
import autosar40.system.transportprotocols.TransportprotocolsPackage;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class TpAddressImpl
extends IdentifiableImpl
implements TpAddress {
    protected static final IntegerDatatype TP_ADDRESS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype tpAddress = TP_ADDRESS_EDEFAULT.clone();
    protected boolean tpAddressESet;
    protected VariationPoint variationPoint;

    protected TpAddressImpl() {
    }

    protected EClass eStaticClass() {
        return TransportprotocolsPackage.Literals.TP_ADDRESS;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)oldTpAddress, (Object)newTpAddress, !oldTpAddressESet));
        }
    }

    public void unsetTpAddress() {
        Integer oldTpAddress = (Integer)this.tpAddress.basicGetValue();
        boolean oldTpAddressESet = this.tpAddressESet;
        this.tpAddress = TP_ADDRESS_EDEFAULT.clone();
        this.tpAddressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 18, (Object)oldTpAddress, (Object)TP_ADDRESS_EDEFAULT, oldTpAddressESet));
        }
    }

    public boolean isSetTpAddress() {
        return this.tpAddressESet;
    }

    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldVariationPoint, (Object)newVariationPoint);
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
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -20, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -20, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public IntegerDatatype getTpAddressData() {
        return this.tpAddress.clone();
    }

    public void setTpAddressData(IntegerDatatype newTpAddress) {
        this.tpAddress.setRadix((int)newTpAddress.getRadix());
        this.tpAddress.setNoOfDigits((int)newTpAddress.getNoOfDigits());
        this.setTpAddress(newTpAddress.getValue());
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 19: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getTpAddress();
            }
            case 19: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setTpAddress((Integer)newValue);
                return;
            }
            case 19: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.unsetTpAddress();
                return;
            }
            case 19: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.isSetTpAddress();
            }
            case 19: {
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
        result.append(')');
        return result.toString();
    }
}

