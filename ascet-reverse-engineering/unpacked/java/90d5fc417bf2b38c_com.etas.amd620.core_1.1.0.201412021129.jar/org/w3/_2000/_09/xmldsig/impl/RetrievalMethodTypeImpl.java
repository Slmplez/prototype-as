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
 */
package org.w3._2000._09.xmldsig.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;
import org.w3._2000._09.xmldsig.RetrievalMethodType;
import org.w3._2000._09.xmldsig.TransformsType;
import org.w3._2000._09.xmldsig.XmldsigPackage;

public class RetrievalMethodTypeImpl
extends MinimalEObjectImpl.Container
implements RetrievalMethodType {
    protected TransformsType transforms;
    protected static final String TYPE_EDEFAULT = null;
    protected String type = TYPE_EDEFAULT;
    protected static final String URI_EDEFAULT = null;
    protected String uRI = URI_EDEFAULT;

    protected RetrievalMethodTypeImpl() {
    }

    protected EClass eStaticClass() {
        return XmldsigPackage.Literals.RETRIEVAL_METHOD_TYPE;
    }

    @Override
    public TransformsType getTransforms() {
        return this.transforms;
    }

    public NotificationChain basicSetTransforms(TransformsType newTransforms, NotificationChain msgs) {
        TransformsType oldTransforms = this.transforms;
        this.transforms = newTransforms;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldTransforms, (Object)newTransforms);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTransforms(TransformsType newTransforms) {
        if (newTransforms != this.transforms) {
            NotificationChain msgs = null;
            if (this.transforms != null) {
                msgs = ((InternalEObject)this.transforms).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newTransforms != null) {
                msgs = ((InternalEObject)newTransforms).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetTransforms(newTransforms, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newTransforms, (Object)newTransforms));
        }
    }

    @Override
    public String getType() {
        return this.type;
    }

    @Override
    public void setType(String newType) {
        String oldType = this.type;
        this.type = newType;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldType, (Object)this.type));
        }
    }

    @Override
    public String getURI() {
        return this.uRI;
    }

    @Override
    public void setURI(String newURI) {
        String oldURI = this.uRI;
        this.uRI = newURI;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldURI, (Object)this.uRI));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetTransforms(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getTransforms();
            }
            case 1: {
                return this.getType();
            }
            case 2: {
                return this.getURI();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setTransforms((TransformsType)newValue);
                return;
            }
            case 1: {
                this.setType((String)newValue);
                return;
            }
            case 2: {
                this.setURI((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setTransforms(null);
                return;
            }
            case 1: {
                this.setType(TYPE_EDEFAULT);
                return;
            }
            case 2: {
                this.setURI(URI_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.transforms != null;
            }
            case 1: {
                return TYPE_EDEFAULT == null ? this.type != null : !TYPE_EDEFAULT.equals(this.type);
            }
            case 2: {
                return URI_EDEFAULT == null ? this.uRI != null : !URI_EDEFAULT.equals(this.uRI);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (type: ");
        result.append(this.type);
        result.append(", uRI: ");
        result.append(this.uRI);
        result.append(')');
        return result.toString();
    }
}

