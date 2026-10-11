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

import com.etas.amd620.core.ComponentSpecification.ActionsType1;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.EntryActionType;
import com.etas.amd620.core.ComponentSpecification.ExitActionType;
import com.etas.amd620.core.ComponentSpecification.StaticActionType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ActionsType1Impl
extends MinimalEObjectImpl.Container
implements ActionsType1 {
    protected EntryActionType entryAction;
    protected StaticActionType staticAction;
    protected ExitActionType exitAction;

    protected ActionsType1Impl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getActionsType1();
    }

    @Override
    public EntryActionType getEntryAction() {
        return this.entryAction;
    }

    public NotificationChain basicSetEntryAction(EntryActionType newEntryAction, NotificationChain msgs) {
        EntryActionType oldEntryAction = this.entryAction;
        this.entryAction = newEntryAction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldEntryAction, (Object)newEntryAction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEntryAction(EntryActionType newEntryAction) {
        if (newEntryAction != this.entryAction) {
            NotificationChain msgs = null;
            if (this.entryAction != null) {
                msgs = ((InternalEObject)this.entryAction).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newEntryAction != null) {
                msgs = ((InternalEObject)newEntryAction).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetEntryAction(newEntryAction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newEntryAction, (Object)newEntryAction));
        }
    }

    @Override
    public StaticActionType getStaticAction() {
        return this.staticAction;
    }

    public NotificationChain basicSetStaticAction(StaticActionType newStaticAction, NotificationChain msgs) {
        StaticActionType oldStaticAction = this.staticAction;
        this.staticAction = newStaticAction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldStaticAction, (Object)newStaticAction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setStaticAction(StaticActionType newStaticAction) {
        if (newStaticAction != this.staticAction) {
            NotificationChain msgs = null;
            if (this.staticAction != null) {
                msgs = ((InternalEObject)this.staticAction).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newStaticAction != null) {
                msgs = ((InternalEObject)newStaticAction).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetStaticAction(newStaticAction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newStaticAction, (Object)newStaticAction));
        }
    }

    @Override
    public ExitActionType getExitAction() {
        return this.exitAction;
    }

    public NotificationChain basicSetExitAction(ExitActionType newExitAction, NotificationChain msgs) {
        ExitActionType oldExitAction = this.exitAction;
        this.exitAction = newExitAction;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldExitAction, (Object)newExitAction);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setExitAction(ExitActionType newExitAction) {
        if (newExitAction != this.exitAction) {
            NotificationChain msgs = null;
            if (this.exitAction != null) {
                msgs = ((InternalEObject)this.exitAction).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newExitAction != null) {
                msgs = ((InternalEObject)newExitAction).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetExitAction(newExitAction, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newExitAction, (Object)newExitAction));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetEntryAction(null, msgs);
            }
            case 1: {
                return this.basicSetStaticAction(null, msgs);
            }
            case 2: {
                return this.basicSetExitAction(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEntryAction();
            }
            case 1: {
                return this.getStaticAction();
            }
            case 2: {
                return this.getExitAction();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setEntryAction((EntryActionType)newValue);
                return;
            }
            case 1: {
                this.setStaticAction((StaticActionType)newValue);
                return;
            }
            case 2: {
                this.setExitAction((ExitActionType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setEntryAction(null);
                return;
            }
            case 1: {
                this.setStaticAction(null);
                return;
            }
            case 2: {
                this.setExitAction(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.entryAction != null;
            }
            case 1: {
                return this.staticAction != null;
            }
            case 2: {
                return this.exitAction != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

