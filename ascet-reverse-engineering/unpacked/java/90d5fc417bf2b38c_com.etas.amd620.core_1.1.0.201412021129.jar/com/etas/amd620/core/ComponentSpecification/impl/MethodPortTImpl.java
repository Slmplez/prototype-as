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
import com.etas.amd620.core.ComponentSpecification.MethodPortT;
import com.etas.amd620.core.ComponentSpecification.SelectorPortT;
import com.etas.amd620.core.ComponentSpecification.SequenceCallT;
import com.etas.amd620.core.ComponentSpecification.TriggerPortType;
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

public class MethodPortTImpl
extends MinimalEObjectImpl.Container
implements MethodPortT {
    protected SequenceCallT sequenceCall;
    protected EList<SelectorPortT> selectorPort;
    protected TriggerPortType triggerPort;
    protected static final boolean DEFAULT_METHOD_EDEFAULT = false;
    protected boolean defaultMethod = false;
    protected boolean defaultMethodESet;
    protected static final String METHOD_NAME_EDEFAULT = null;
    protected String methodName = METHOD_NAME_EDEFAULT;
    protected static final String METHOD_OID_EDEFAULT = null;
    protected String methodOID = METHOD_OID_EDEFAULT;

    protected MethodPortTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getMethodPortT();
    }

    @Override
    public SequenceCallT getSequenceCall() {
        return this.sequenceCall;
    }

    public NotificationChain basicSetSequenceCall(SequenceCallT newSequenceCall, NotificationChain msgs) {
        SequenceCallT oldSequenceCall = this.sequenceCall;
        this.sequenceCall = newSequenceCall;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldSequenceCall, (Object)newSequenceCall);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSequenceCall(SequenceCallT newSequenceCall) {
        if (newSequenceCall != this.sequenceCall) {
            NotificationChain msgs = null;
            if (this.sequenceCall != null) {
                msgs = ((InternalEObject)this.sequenceCall).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newSequenceCall != null) {
                msgs = ((InternalEObject)newSequenceCall).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetSequenceCall(newSequenceCall, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newSequenceCall, (Object)newSequenceCall));
        }
    }

    @Override
    public EList<SelectorPortT> getSelectorPort() {
        if (this.selectorPort == null) {
            this.selectorPort = new EObjectContainmentEList(SelectorPortT.class, (InternalEObject)this, 1);
        }
        return this.selectorPort;
    }

    @Override
    public TriggerPortType getTriggerPort() {
        return this.triggerPort;
    }

    public NotificationChain basicSetTriggerPort(TriggerPortType newTriggerPort, NotificationChain msgs) {
        TriggerPortType oldTriggerPort = this.triggerPort;
        this.triggerPort = newTriggerPort;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldTriggerPort, (Object)newTriggerPort);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTriggerPort(TriggerPortType newTriggerPort) {
        if (newTriggerPort != this.triggerPort) {
            NotificationChain msgs = null;
            if (this.triggerPort != null) {
                msgs = ((InternalEObject)this.triggerPort).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newTriggerPort != null) {
                msgs = ((InternalEObject)newTriggerPort).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetTriggerPort(newTriggerPort, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newTriggerPort, (Object)newTriggerPort));
        }
    }

    @Override
    public boolean isDefaultMethod() {
        return this.defaultMethod;
    }

    @Override
    public void setDefaultMethod(boolean newDefaultMethod) {
        boolean oldDefaultMethod = this.defaultMethod;
        this.defaultMethod = newDefaultMethod;
        boolean oldDefaultMethodESet = this.defaultMethodESet;
        this.defaultMethodESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, oldDefaultMethod, this.defaultMethod, !oldDefaultMethodESet));
        }
    }

    @Override
    public void unsetDefaultMethod() {
        boolean oldDefaultMethod = this.defaultMethod;
        boolean oldDefaultMethodESet = this.defaultMethodESet;
        this.defaultMethod = false;
        this.defaultMethodESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 3, oldDefaultMethod, false, oldDefaultMethodESet));
        }
    }

    @Override
    public boolean isSetDefaultMethod() {
        return this.defaultMethodESet;
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMethodName, (Object)this.methodName));
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
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldMethodOID, (Object)this.methodOID));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetSequenceCall(null, msgs);
            }
            case 1: {
                return ((InternalEList)this.getSelectorPort()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return this.basicSetTriggerPort(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getSequenceCall();
            }
            case 1: {
                return this.getSelectorPort();
            }
            case 2: {
                return this.getTriggerPort();
            }
            case 3: {
                return this.isDefaultMethod();
            }
            case 4: {
                return this.getMethodName();
            }
            case 5: {
                return this.getMethodOID();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setSequenceCall((SequenceCallT)newValue);
                return;
            }
            case 1: {
                this.getSelectorPort().clear();
                this.getSelectorPort().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.setTriggerPort((TriggerPortType)newValue);
                return;
            }
            case 3: {
                this.setDefaultMethod((Boolean)newValue);
                return;
            }
            case 4: {
                this.setMethodName((String)newValue);
                return;
            }
            case 5: {
                this.setMethodOID((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setSequenceCall(null);
                return;
            }
            case 1: {
                this.getSelectorPort().clear();
                return;
            }
            case 2: {
                this.setTriggerPort(null);
                return;
            }
            case 3: {
                this.unsetDefaultMethod();
                return;
            }
            case 4: {
                this.setMethodName(METHOD_NAME_EDEFAULT);
                return;
            }
            case 5: {
                this.setMethodOID(METHOD_OID_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.sequenceCall != null;
            }
            case 1: {
                return this.selectorPort != null && !this.selectorPort.isEmpty();
            }
            case 2: {
                return this.triggerPort != null;
            }
            case 3: {
                return this.isSetDefaultMethod();
            }
            case 4: {
                return METHOD_NAME_EDEFAULT == null ? this.methodName != null : !METHOD_NAME_EDEFAULT.equals(this.methodName);
            }
            case 5: {
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
        result.append(" (defaultMethod: ");
        if (this.defaultMethodESet) {
            result.append(this.defaultMethod);
        } else {
            result.append("<unset>");
        }
        result.append(", methodName: ");
        result.append(this.methodName);
        result.append(", methodOID: ");
        result.append(this.methodOID);
        result.append(')');
        return result.toString();
    }
}

