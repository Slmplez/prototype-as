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

import com.etas.amd620.core.ComponentSpecification.ActionType;
import com.etas.amd620.core.ComponentSpecification.ActionsType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConditionType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ActionsTypeImpl
extends MinimalEObjectImpl.Container
implements ActionsType {
    protected ActionType action;
    protected ConditionType condition;

    protected ActionsTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getActionsType();
    }

    @Override
    public ActionType getAction() {
        return this.action;
    }

    public NotificationChain basicSetAction(ActionType newAction, NotificationChain msgs) {
        ActionType oldAction = this.action;
        this.action = newAction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldAction, (Object)newAction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setAction(ActionType newAction) {
        if (newAction != this.action) {
            NotificationChain msgs = null;
            if (this.action != null) {
                msgs = ((InternalEObject)this.action).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newAction != null) {
                msgs = ((InternalEObject)newAction).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetAction(newAction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newAction, (Object)newAction));
        }
    }

    @Override
    public ConditionType getCondition() {
        return this.condition;
    }

    public NotificationChain basicSetCondition(ConditionType newCondition, NotificationChain msgs) {
        ConditionType oldCondition = this.condition;
        this.condition = newCondition;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldCondition, (Object)newCondition);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCondition(ConditionType newCondition) {
        if (newCondition != this.condition) {
            NotificationChain msgs = null;
            if (this.condition != null) {
                msgs = ((InternalEObject)this.condition).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newCondition != null) {
                msgs = ((InternalEObject)newCondition).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetCondition(newCondition, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newCondition, (Object)newCondition));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetAction(null, msgs);
            }
            case 1: {
                return this.basicSetCondition(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getAction();
            }
            case 1: {
                return this.getCondition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setAction((ActionType)newValue);
                return;
            }
            case 1: {
                this.setCondition((ConditionType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setAction(null);
                return;
            }
            case 1: {
                this.setCondition(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.action != null;
            }
            case 1: {
                return this.condition != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

