/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.BasicFeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.ecore.util.FeatureMap$Internal
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.w3._2000._09.xmldsig.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.BasicFeatureMap;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.PGPDataType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class PGPDataTypeImpl
extends MinimalEObjectImpl.Container
implements PGPDataType {
    protected static final byte[] PGP_KEY_ID_EDEFAULT = null;
    protected byte[] pGPKeyID = PGP_KEY_ID_EDEFAULT;
    protected static final byte[] PGP_KEY_PACKET_EDEFAULT = null;
    protected byte[] pGPKeyPacket = PGP_KEY_PACKET_EDEFAULT;
    protected FeatureMap any;
    protected static final byte[] PGP_KEY_PACKET1_EDEFAULT = null;
    protected byte[] pGPKeyPacket1 = PGP_KEY_PACKET1_EDEFAULT;
    protected FeatureMap any1;

    protected PGPDataTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.PGP_DATA_TYPE;
    }

    @Override
    public byte[] getPGPKeyID() {
        return this.pGPKeyID;
    }

    @Override
    public void setPGPKeyID(byte[] newPGPKeyID) {
        byte[] oldPGPKeyID = this.pGPKeyID;
        this.pGPKeyID = newPGPKeyID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldPGPKeyID, (Object)this.pGPKeyID));
        }
    }

    @Override
    public byte[] getPGPKeyPacket() {
        return this.pGPKeyPacket;
    }

    @Override
    public void setPGPKeyPacket(byte[] newPGPKeyPacket) {
        byte[] oldPGPKeyPacket = this.pGPKeyPacket;
        this.pGPKeyPacket = newPGPKeyPacket;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldPGPKeyPacket, (Object)this.pGPKeyPacket));
        }
    }

    @Override
    public FeatureMap getAny() {
        if (this.any == null) {
            this.any = new BasicFeatureMap((InternalEObject)this, 2);
        }
        return this.any;
    }

    @Override
    public byte[] getPGPKeyPacket1() {
        return this.pGPKeyPacket1;
    }

    @Override
    public void setPGPKeyPacket1(byte[] newPGPKeyPacket1) {
        byte[] oldPGPKeyPacket1 = this.pGPKeyPacket1;
        this.pGPKeyPacket1 = newPGPKeyPacket1;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldPGPKeyPacket1, (Object)this.pGPKeyPacket1));
        }
    }

    @Override
    public FeatureMap getAny1() {
        if (this.any1 == null) {
            this.any1 = new BasicFeatureMap((InternalEObject)this, 4);
        }
        return this.any1;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 2: {
                return ((InternalEList)this.getAny()).basicRemove((Object)otherEnd, msgs);
            }
            case 4: {
                return ((InternalEList)this.getAny1()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getPGPKeyID();
            }
            case 1: {
                return this.getPGPKeyPacket();
            }
            case 2: {
                if (coreType) {
                    return this.getAny();
                }
                return ((FeatureMap.Internal)this.getAny()).getWrapper();
            }
            case 3: {
                return this.getPGPKeyPacket1();
            }
            case 4: {
                if (coreType) {
                    return this.getAny1();
                }
                return ((FeatureMap.Internal)this.getAny1()).getWrapper();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setPGPKeyID((byte[])newValue);
                return;
            }
            case 1: {
                this.setPGPKeyPacket((byte[])newValue);
                return;
            }
            case 2: {
                ((FeatureMap.Internal)this.getAny()).set(newValue);
                return;
            }
            case 3: {
                this.setPGPKeyPacket1((byte[])newValue);
                return;
            }
            case 4: {
                ((FeatureMap.Internal)this.getAny1()).set(newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setPGPKeyID(PGP_KEY_ID_EDEFAULT);
                return;
            }
            case 1: {
                this.setPGPKeyPacket(PGP_KEY_PACKET_EDEFAULT);
                return;
            }
            case 2: {
                this.getAny().clear();
                return;
            }
            case 3: {
                this.setPGPKeyPacket1(PGP_KEY_PACKET1_EDEFAULT);
                return;
            }
            case 4: {
                this.getAny1().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return PGP_KEY_ID_EDEFAULT == null ? this.pGPKeyID != null : !PGP_KEY_ID_EDEFAULT.equals(this.pGPKeyID);
            }
            case 1: {
                return PGP_KEY_PACKET_EDEFAULT == null ? this.pGPKeyPacket != null : !PGP_KEY_PACKET_EDEFAULT.equals(this.pGPKeyPacket);
            }
            case 2: {
                return this.any != null && !this.any.isEmpty();
            }
            case 3: {
                return PGP_KEY_PACKET1_EDEFAULT == null ? this.pGPKeyPacket1 != null : !PGP_KEY_PACKET1_EDEFAULT.equals(this.pGPKeyPacket1);
            }
            case 4: {
                return this.any1 != null && !this.any1.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (pGPKeyID: ");
        result.append(this.pGPKeyID);
        result.append(", pGPKeyPacket: ");
        result.append(this.pGPKeyPacket);
        result.append(", any: ");
        result.append(this.any);
        result.append(", pGPKeyPacket1: ");
        result.append(this.pGPKeyPacket1);
        result.append(", any1: ");
        result.append(this.any1);
        result.append(')');
        return result.toString();
    }
}

