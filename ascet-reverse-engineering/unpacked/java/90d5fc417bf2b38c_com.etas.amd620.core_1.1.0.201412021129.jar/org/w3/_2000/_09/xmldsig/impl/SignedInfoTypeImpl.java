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
import org.w3._2000._09.xmldsig.CanonicalizationMethodType;
import org.w3._2000._09.xmldsig.ReferenceType;
import org.w3._2000._09.xmldsig.SignatureMethodType;
import org.w3._2000._09.xmldsig.SignedInfoType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class SignedInfoTypeImpl
extends MinimalEObjectImpl.Container
implements SignedInfoType {
    protected CanonicalizationMethodType canonicalizationMethod;
    protected SignatureMethodType signatureMethod;
    protected EList<ReferenceType> reference;
    protected static final String ID_EDEFAULT = null;
    protected String id = ID_EDEFAULT;

    protected SignedInfoTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.SIGNED_INFO_TYPE;
    }

    @Override
    public CanonicalizationMethodType getCanonicalizationMethod() {
        return this.canonicalizationMethod;
    }

    public NotificationChain basicSetCanonicalizationMethod(CanonicalizationMethodType newCanonicalizationMethod, NotificationChain msgs) {
        CanonicalizationMethodType oldCanonicalizationMethod = this.canonicalizationMethod;
        this.canonicalizationMethod = newCanonicalizationMethod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldCanonicalizationMethod, (Object)newCanonicalizationMethod);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCanonicalizationMethod(CanonicalizationMethodType newCanonicalizationMethod) {
        if (newCanonicalizationMethod != this.canonicalizationMethod) {
            NotificationChain msgs = null;
            if (this.canonicalizationMethod != null) {
                msgs = ((InternalEObject)this.canonicalizationMethod).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newCanonicalizationMethod != null) {
                msgs = ((InternalEObject)newCanonicalizationMethod).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetCanonicalizationMethod(newCanonicalizationMethod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newCanonicalizationMethod, (Object)newCanonicalizationMethod));
        }
    }

    @Override
    public SignatureMethodType getSignatureMethod() {
        return this.signatureMethod;
    }

    public NotificationChain basicSetSignatureMethod(SignatureMethodType newSignatureMethod, NotificationChain msgs) {
        SignatureMethodType oldSignatureMethod = this.signatureMethod;
        this.signatureMethod = newSignatureMethod;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldSignatureMethod, (Object)newSignatureMethod);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSignatureMethod(SignatureMethodType newSignatureMethod) {
        if (newSignatureMethod != this.signatureMethod) {
            NotificationChain msgs = null;
            if (this.signatureMethod != null) {
                msgs = ((InternalEObject)this.signatureMethod).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newSignatureMethod != null) {
                msgs = ((InternalEObject)newSignatureMethod).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetSignatureMethod(newSignatureMethod, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newSignatureMethod, (Object)newSignatureMethod));
        }
    }

    @Override
    public EList<ReferenceType> getReference() {
        if (this.reference == null) {
            this.reference = new EObjectContainmentEList(ReferenceType.class, (InternalEObject)this, 2);
        }
        return this.reference;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldId, (Object)this.id));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetCanonicalizationMethod(null, msgs);
            }
            case 1: {
                return this.basicSetSignatureMethod(null, msgs);
            }
            case 2: {
                return ((InternalEList)this.getReference()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getCanonicalizationMethod();
            }
            case 1: {
                return this.getSignatureMethod();
            }
            case 2: {
                return this.getReference();
            }
            case 3: {
                return this.getId();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setCanonicalizationMethod((CanonicalizationMethodType)newValue);
                return;
            }
            case 1: {
                this.setSignatureMethod((SignatureMethodType)newValue);
                return;
            }
            case 2: {
                this.getReference().clear();
                this.getReference().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.setId((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setCanonicalizationMethod(null);
                return;
            }
            case 1: {
                this.setSignatureMethod(null);
                return;
            }
            case 2: {
                this.getReference().clear();
                return;
            }
            case 3: {
                this.setId(ID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.canonicalizationMethod != null;
            }
            case 1: {
                return this.signatureMethod != null;
            }
            case 2: {
                return this.reference != null && !this.reference.isEmpty();
            }
            case 3: {
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

