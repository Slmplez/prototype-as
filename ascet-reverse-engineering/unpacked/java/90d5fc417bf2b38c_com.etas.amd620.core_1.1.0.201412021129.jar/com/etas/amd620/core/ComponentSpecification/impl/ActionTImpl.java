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
package com.etas.amd620.core.ComponentSpecification.impl;

import com.etas.amd620.core.ComponentSpecification.ActionT;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ESDLActionType;
import com.etas.amd620.core.ComponentSpecification.MethodActionType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ActionTImpl
extends MinimalEObjectImpl.Container
implements ActionT {
    protected ESDLActionType eSDLAction;
    protected MethodActionType methodAction;

    protected ActionTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getActionT();
    }

    @Override
    public ESDLActionType getESDLAction() {
        return this.eSDLAction;
    }

    public NotificationChain basicSetESDLAction(ESDLActionType newESDLAction, NotificationChain msgs) {
        ESDLActionType oldESDLAction = this.eSDLAction;
        this.eSDLAction = newESDLAction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldESDLAction, (Object)newESDLAction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setESDLAction(ESDLActionType newESDLAction) {
        if (newESDLAction != this.eSDLAction) {
            NotificationChain msgs = null;
            if (this.eSDLAction != null) {
                msgs = ((InternalEObject)this.eSDLAction).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newESDLAction != null) {
                msgs = ((InternalEObject)newESDLAction).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetESDLAction(newESDLAction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newESDLAction, (Object)newESDLAction));
        }
    }

    @Override
    public MethodActionType getMethodAction() {
        return this.methodAction;
    }

    public NotificationChain basicSetMethodAction(MethodActionType newMethodAction, NotificationChain msgs) {
        MethodActionType oldMethodAction = this.methodAction;
        this.methodAction = newMethodAction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldMethodAction, (Object)newMethodAction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setMethodAction(MethodActionType newMethodAction) {
        if (newMethodAction != this.methodAction) {
            NotificationChain msgs = null;
            if (this.methodAction != null) {
                msgs = ((InternalEObject)this.methodAction).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newMethodAction != null) {
                msgs = ((InternalEObject)newMethodAction).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetMethodAction(newMethodAction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newMethodAction, (Object)newMethodAction));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetESDLAction(null, msgs);
            }
            case 1: {
                return this.basicSetMethodAction(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getESDLAction();
            }
            case 1: {
                return this.getMethodAction();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setESDLAction((ESDLActionType)newValue);
                return;
            }
            case 1: {
                this.setMethodAction((MethodActionType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setESDLAction(null);
                return;
            }
            case 1: {
                this.setMethodAction(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eSDLAction != null;
            }
            case 1: {
                return this.methodAction != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

