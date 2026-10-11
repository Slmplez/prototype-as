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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.FormattedTextT;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.ReturnT;
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

public class ReturnTImpl
extends MinimalEObjectImpl.Container
implements ReturnT {
    protected FormattedTextT comment;
    protected ElementAttributesT elementAttributes;
    protected EList<GenericDataT> customerData;
    protected static final String OID_EDEFAULT = null;
    protected String oID = OID_EDEFAULT;
    protected static final String UUID_EDEFAULT = null;
    protected String uUID = UUID_EDEFAULT;

    protected ReturnTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.RETURN_T;
    }

    @Override
    public FormattedTextT getComment() {
        return this.comment;
    }

    public NotificationChain basicSetComment(FormattedTextT newComment, NotificationChain msgs) {
        FormattedTextT oldComment = this.comment;
        this.comment = newComment;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldComment, (Object)newComment);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComment(FormattedTextT newComment) {
        if (newComment != this.comment) {
            NotificationChain msgs = null;
            if (this.comment != null) {
                msgs = ((InternalEObject)this.comment).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newComment != null) {
                msgs = ((InternalEObject)newComment).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetComment(newComment, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newComment, (Object)newComment));
        }
    }

    @Override
    public ElementAttributesT getElementAttributes() {
        return this.elementAttributes;
    }

    public NotificationChain basicSetElementAttributes(ElementAttributesT newElementAttributes, NotificationChain msgs) {
        ElementAttributesT oldElementAttributes = this.elementAttributes;
        this.elementAttributes = newElementAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldElementAttributes, (Object)newElementAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setElementAttributes(ElementAttributesT newElementAttributes) {
        if (newElementAttributes != this.elementAttributes) {
            NotificationChain msgs = null;
            if (this.elementAttributes != null) {
                msgs = ((InternalEObject)this.elementAttributes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newElementAttributes != null) {
                msgs = ((InternalEObject)newElementAttributes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetElementAttributes(newElementAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newElementAttributes, (Object)newElementAttributes));
        }
    }

    @Override
    public EList<GenericDataT> getCustomerData() {
        if (this.customerData == null) {
            this.customerData = new EObjectContainmentEList(GenericDataT.class, (InternalEObject)this, 2);
        }
        return this.customerData;
    }

    @Override
    public String getOID() {
        return this.oID;
    }

    @Override
    public void setOID(String newOID) {
        String oldOID = this.oID;
        this.oID = newOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldOID, (Object)this.oID));
        }
    }

    @Override
    public String getUUID() {
        return this.uUID;
    }

    @Override
    public void setUUID(String newUUID) {
        String oldUUID = this.uUID;
        this.uUID = newUUID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldUUID, (Object)this.uUID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetComment(null, msgs);
            }
            case 1: {
                return this.basicSetElementAttributes(null, msgs);
            }
            case 2: {
                return ((InternalEList)this.getCustomerData()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getComment();
            }
            case 1: {
                return this.getElementAttributes();
            }
            case 2: {
                return this.getCustomerData();
            }
            case 3: {
                return this.getOID();
            }
            case 4: {
                return this.getUUID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setComment((FormattedTextT)newValue);
                return;
            }
            case 1: {
                this.setElementAttributes((ElementAttributesT)newValue);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.setOID((String)newValue);
                return;
            }
            case 4: {
                this.setUUID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setComment(null);
                return;
            }
            case 1: {
                this.setElementAttributes(null);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                return;
            }
            case 3: {
                this.setOID(OID_EDEFAULT);
                return;
            }
            case 4: {
                this.setUUID(UUID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.comment != null;
            }
            case 1: {
                return this.elementAttributes != null;
            }
            case 2: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 3: {
                return OID_EDEFAULT == null ? this.oID != null : !OID_EDEFAULT.equals(this.oID);
            }
            case 4: {
                return UUID_EDEFAULT == null ? this.uUID != null : !UUID_EDEFAULT.equals(this.uUID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (oID: ");
        result.append(this.oID);
        result.append(", uUID: ");
        result.append(this.uUID);
        result.append(')');
        return result.toString();
    }
}

