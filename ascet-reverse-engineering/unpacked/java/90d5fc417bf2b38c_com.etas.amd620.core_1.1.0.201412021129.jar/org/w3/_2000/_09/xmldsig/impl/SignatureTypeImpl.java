/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.impl.MinimalEObjectImpl$Container
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.w3._2000._09.xmldsig.impl;

import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.w3._2000._09.xmldsig.KeyInfoType;
import org.w3._2000._09.xmldsig.ObjectType;
import org.w3._2000._09.xmldsig.SignatureType;
import org.w3._2000._09.xmldsig.SignatureValueType;
import org.w3._2000._09.xmldsig.SignedInfoType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class SignatureTypeImpl
extends MinimalEObjectImpl.Container
implements SignatureType {
    protected SignedInfoType signedInfo;
    protected SignatureValueType signatureValue;
    protected KeyInfoType keyInfo;
    protected EList<ObjectType> object;
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;

    protected SignatureTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.SIGNATURE_TYPE;
    }

    @Override
    public SignedInfoType getSignedInfo() {
        return this.signedInfo;
    }

    public NotificationChain basicSetSignedInfo(SignedInfoType newSignedInfo, NotificationChain msgs) {
        SignedInfoType oldSignedInfo = this.signedInfo;
        this.signedInfo = newSignedInfo;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldSignedInfo, (Object)newSignedInfo);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignedInfo(SignedInfoType newSignedInfo) {
        if (newSignedInfo != this.signedInfo) {
            NotificationChain msgs = null;
            if (this.signedInfo != null) {
                msgs = ((InternalEObject)this.signedInfo).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newSignedInfo != null) {
                msgs = ((InternalEObject)newSignedInfo).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetSignedInfo(newSignedInfo, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newSignedInfo, (Object)newSignedInfo));
        }
    }

    @Override
    public SignatureValueType getSignatureValue() {
        return this.signatureValue;
    }

    public NotificationChain basicSetSignatureValue(SignatureValueType newSignatureValue, NotificationChain msgs) {
        SignatureValueType oldSignatureValue = this.signatureValue;
        this.signatureValue = newSignatureValue;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldSignatureValue, (Object)newSignatureValue);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignatureValue(SignatureValueType newSignatureValue) {
        if (newSignatureValue != this.signatureValue) {
            NotificationChain msgs = null;
            if (this.signatureValue != null) {
                msgs = ((InternalEObject)this.signatureValue).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newSignatureValue != null) {
                msgs = ((InternalEObject)newSignatureValue).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetSignatureValue(newSignatureValue, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newSignatureValue, (Object)newSignatureValue));
        }
    }

    @Override
    public KeyInfoType getKeyInfo() {
        return this.keyInfo;
    }

    public NotificationChain basicSetKeyInfo(KeyInfoType newKeyInfo, NotificationChain msgs) {
        KeyInfoType oldKeyInfo = this.keyInfo;
        this.keyInfo = newKeyInfo;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldKeyInfo, (Object)newKeyInfo);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setKeyInfo(KeyInfoType newKeyInfo) {
        if (newKeyInfo != this.keyInfo) {
            NotificationChain msgs = null;
            if (this.keyInfo != null) {
                msgs = ((InternalEObject)this.keyInfo).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newKeyInfo != null) {
                msgs = ((InternalEObject)newKeyInfo).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetKeyInfo(newKeyInfo, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newKeyInfo, (Object)newKeyInfo));
        }
    }

    @Override
    public EList<ObjectType> getObject() {
        if (this.object == null) {
            this.object = new EObjectContainmentEList(ObjectType.class, (InternalEObject)this, 3);
        }
        return this.object;
    }

    @Override
    public String getId() {
        return this.id;
    }

    @Override
    public void setId(String newId) {
        String oldId = this.id;
        this.id = newId;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldId, (Object)this.id));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetSignedInfo(null, msgs);
            }
            case 1: {
                return this.basicSetSignatureValue(null, msgs);
            }
            case 2: {
                return this.basicSetKeyInfo(null, msgs);
            }
            case 3: {
                return ((InternalEList)this.getObject()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getSignedInfo();
            }
            case 1: {
                return this.getSignatureValue();
            }
            case 2: {
                return this.getKeyInfo();
            }
            case 3: {
                return this.getObject();
            }
            case 4: {
                return this.getId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setSignedInfo((SignedInfoType)newValue);
                return;
            }
            case 1: {
                this.setSignatureValue((SignatureValueType)newValue);
                return;
            }
            case 2: {
                this.setKeyInfo((KeyInfoType)newValue);
                return;
            }
            case 3: {
                this.getObject().clear();
                this.getObject().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.setId((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setSignedInfo(null);
                return;
            }
            case 1: {
                this.setSignatureValue(null);
                return;
            }
            case 2: {
                this.setKeyInfo(null);
                return;
            }
            case 3: {
                this.getObject().clear();
                return;
            }
            case 4: {
                this.setId(ID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.signedInfo != null;
            }
            case 1: {
                return this.signatureValue != null;
            }
            case 2: {
                return this.keyInfo != null;
            }
            case 3: {
                return this.object != null && !this.object.isEmpty();
            }
            case 4: {
                return ID_EDEFAULT == null ? this.id != null : !ID_EDEFAULT.equals(this.id);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (id: ");
        result.append(this.id);
        result.append(')');
        return result.toString();
    }
}

