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
package autosar40.system.fibex.fibex4ethernet.ethernetcommunication.impl;

import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.IdentifiableImpl;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.EthernetcommunicationPackage;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.LogicAddress;
import autosar40.system.fibex.fibex4ethernet.ethernetcommunication.SoAdConfig;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class LogicAddressImpl
extends IdentifiableImpl
implements LogicAddress {
    protected static final IntegerDatatype ADDRESS_EDEFAULT = new IntegerDatatype(new Integer(0).intValue());
    protected IntegerDatatype address = ADDRESS_EDEFAULT.clone();
    protected boolean addressESet;

    protected LogicAddressImpl() {
    }

    protected EClass eStaticClass() {
        return EthernetcommunicationPackage.Literals.LOGIC_ADDRESS;
    }

    public SoAdConfig getSoAdConfig() {
        if (this.eContainerFeatureID() != 18) {
            return null;
        }
        return (SoAdConfig)this.eContainer();
    }

    public NotificationChain basicSetSoAdConfig(SoAdConfig newSoAdConfig, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newSoAdConfig, 18, msgs);
        return msgs;
    }

    public void setSoAdConfig(SoAdConfig newSoAdConfig) {
        if (newSoAdConfig != this.eInternalContainer() || this.eContainerFeatureID() != 18 && newSoAdConfig != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newSoAdConfig)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newSoAdConfig != null) {
                msgs = ((InternalEObject)newSoAdConfig).eInverseAdd((InternalEObject)this, 6, SoAdConfig.class, msgs);
            }
            if ((msgs = this.basicSetSoAdConfig(newSoAdConfig, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 18, (Object)newSoAdConfig, (Object)newSoAdConfig));
        }
    }

    public Integer getAddress() {
        return (Integer)this.address.basicGetValue();
    }

    public void setAddress(Integer newAddress) {
        Integer oldAddress = (Integer)this.address.basicGetValue();
        this.address.basicSetValue((Object)newAddress);
        boolean oldAddressESet = this.addressESet;
        this.addressESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 19, (Object)oldAddress, (Object)newAddress, !oldAddressESet));
        }
    }

    public void unsetAddress() {
        Integer oldAddress = (Integer)this.address.basicGetValue();
        boolean oldAddressESet = this.addressESet;
        this.address = ADDRESS_EDEFAULT.clone();
        this.addressESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 19, (Object)oldAddress, (Object)ADDRESS_EDEFAULT, oldAddressESet));
        }
    }

    public boolean isSetAddress() {
        return this.addressESet;
    }

    public IntegerDatatype getAddressData() {
        return this.address.clone();
    }

    public void setAddressData(IntegerDatatype newAddress) {
        this.address.setRadix((int)newAddress.getRadix());
        this.address.setNoOfDigits((int)newAddress.getNoOfDigits());
        this.setAddress(newAddress.getValue());
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetSoAdConfig((SoAdConfig)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 18: {
                return this.basicSetSoAdConfig(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 18: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, SoAdConfig.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 18: {
                return this.getSoAdConfig();
            }
            case 19: {
                return this.getAddress();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 18: {
                this.setSoAdConfig((SoAdConfig)newValue);
                return;
            }
            case 19: {
                this.setAddress((Integer)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 18: {
                this.setSoAdConfig(null);
                return;
            }
            case 19: {
                this.unsetAddress();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 18: {
                return this.getSoAdConfig() != null;
            }
            case 19: {
                return this.isSetAddress();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (address: ");
        if (this.addressESet) {
            result.append(this.address);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

