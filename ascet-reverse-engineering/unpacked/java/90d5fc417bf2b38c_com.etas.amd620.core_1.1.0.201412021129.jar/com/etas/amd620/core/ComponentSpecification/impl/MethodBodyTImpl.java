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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.GenericDataT;
import com.etas.amd620.core.ComponentSpecification.MethodBodyT;
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

public class MethodBodyTImpl
extends MinimalEObjectImpl.Container
implements MethodBodyT {
    protected FormattedTextT headerBlock;
    protected FormattedTextT codeBlock;
    protected EList<GenericDataT> customerData;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final String METHOD_OID_EDEFAULT = null;
    protected String methodOID = METHOD_OID_EDEFAULT;

    protected MethodBodyTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getMethodBodyT();
    }

    @Override
    public FormattedTextT getHeaderBlock() {
        return this.headerBlock;
    }

    public NotificationChain basicSetHeaderBlock(FormattedTextT newHeaderBlock, NotificationChain msgs) {
        FormattedTextT oldHeaderBlock = this.headerBlock;
        this.headerBlock = newHeaderBlock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldHeaderBlock, (Object)newHeaderBlock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setHeaderBlock(FormattedTextT newHeaderBlock) {
        if (newHeaderBlock != this.headerBlock) {
            NotificationChain msgs = null;
            if (this.headerBlock != null) {
                msgs = ((InternalEObject)this.headerBlock).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newHeaderBlock != null) {
                msgs = ((InternalEObject)newHeaderBlock).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetHeaderBlock(newHeaderBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newHeaderBlock, (Object)newHeaderBlock));
        }
    }

    @Override
    public FormattedTextT getCodeBlock() {
        return this.codeBlock;
    }

    public NotificationChain basicSetCodeBlock(FormattedTextT newCodeBlock, NotificationChain msgs) {
        FormattedTextT oldCodeBlock = this.codeBlock;
        this.codeBlock = newCodeBlock;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCodeBlock, (Object)newCodeBlock);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCodeBlock(FormattedTextT newCodeBlock) {
        if (newCodeBlock != this.codeBlock) {
            NotificationChain msgs = null;
            if (this.codeBlock != null) {
                msgs = ((InternalEObject)this.codeBlock).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newCodeBlock != null) {
                msgs = ((InternalEObject)newCodeBlock).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetCodeBlock(newCodeBlock, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newCodeBlock, (Object)newCodeBlock));
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
    public String getMethodName() {
        return this.methodName;
    }

    @Override
    public void setMethodName(String newMethodName) {
        String oldMethodName = this.methodName;
        this.methodName = newMethodName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldMethodName, (Object)this.methodName));
        }
    }

    @Override
    public String getMethodOID() {
        return this.methodOID;
    }

    @Override
    public void setMethodOID(String newMethodOID) {
        String oldMethodOID = this.methodOID;
        this.methodOID = newMethodOID;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMethodOID, (Object)this.methodOID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetHeaderBlock(null, msgs);
            }
            case 1: {
                return this.basicSetCodeBlock(null, msgs);
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
                return this.getHeaderBlock();
            }
            case 1: {
                return this.getCodeBlock();
            }
            case 2: {
                return this.getCustomerData();
            }
            case 3: {
                return this.getMethodName();
            }
            case 4: {
                return this.getMethodOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setHeaderBlock((FormattedTextT)newValue);
                return;
            }
            case 1: {
                this.setCodeBlock((FormattedTextT)newValue);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                this.getCustomerData().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.setMethodName((String)newValue);
                return;
            }
            case 4: {
                this.setMethodOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setHeaderBlock(null);
                return;
            }
            case 1: {
                this.setCodeBlock(null);
                return;
            }
            case 2: {
                this.getCustomerData().clear();
                return;
            }
            case 3: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 4: {
                this.setMethodOID(METHOD_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.headerBlock != null;
            }
            case 1: {
                return this.codeBlock != null;
            }
            case 2: {
                return this.customerData != null && !this.customerData.isEmpty();
            }
            case 3: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 4: {
                return METHOD_OID_EDEFAULT == null ? this.methodOID != null : !METHOD_OID_EDEFAULT.equals(this.methodOID);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (methodName: ");
        result.append(this.methodName);
        result.append(", methodOID: ");
        result.append(this.methodOID);
        result.append(')');
        return result.toString();
    }
}

