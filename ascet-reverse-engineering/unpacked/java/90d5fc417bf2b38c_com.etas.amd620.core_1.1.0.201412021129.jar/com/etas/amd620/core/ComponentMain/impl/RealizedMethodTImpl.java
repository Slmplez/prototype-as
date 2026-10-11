/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ArgumentsType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.LocalsComplexType;
import com.etas.amd620.core.ComponentMain.RealizedMethodT;
import com.etas.amd620.core.ComponentMain.RealizedReturnT;
import com.etas.amd620.core.ComponentMain.impl.RealizedMethodBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class RealizedMethodTImpl
extends RealizedMethodBaseTImpl
implements RealizedMethodT {
    protected ArgumentsType arguments;
    protected RealizedReturnT return_;
    protected LocalsComplexType locals;

    protected RealizedMethodTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.REALIZED_METHOD_T;
    }

    @Override
    public ArgumentsType getArguments() {
        return this.arguments;
    }

    public NotificationChain basicSetArguments(ArgumentsType newArguments, NotificationChain msgs) {
        ArgumentsType oldArguments = this.arguments;
        this.arguments = newArguments;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 14, (Object)oldArguments, (Object)newArguments);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setArguments(ArgumentsType newArguments) {
        if (newArguments != this.arguments) {
            NotificationChain msgs = null;
            if (this.arguments != null) {
                msgs = ((InternalEObject)this.arguments).eInverseRemove((InternalEObject)this, -15, null, msgs);
            }
            if (newArguments != null) {
                msgs = ((InternalEObject)newArguments).eInverseAdd((InternalEObject)this, -15, null, msgs);
            }
            if ((msgs = this.basicSetArguments(newArguments, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 14, (Object)newArguments, (Object)newArguments));
        }
    }

    @Override
    public RealizedReturnT getReturn() {
        return this.return_;
    }

    public NotificationChain basicSetReturn(RealizedReturnT newReturn, NotificationChain msgs) {
        RealizedReturnT oldReturn = this.return_;
        this.return_ = newReturn;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 15, (Object)oldReturn, (Object)newReturn);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setReturn(RealizedReturnT newReturn) {
        if (newReturn != this.return_) {
            NotificationChain msgs = null;
            if (this.return_ != null) {
                msgs = ((InternalEObject)this.return_).eInverseRemove((InternalEObject)this, -16, null, msgs);
            }
            if (newReturn != null) {
                msgs = ((InternalEObject)newReturn).eInverseAdd((InternalEObject)this, -16, null, msgs);
            }
            if ((msgs = this.basicSetReturn(newReturn, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 15, (Object)newReturn, (Object)newReturn));
        }
    }

    @Override
    public LocalsComplexType getLocals() {
        return this.locals;
    }

    public NotificationChain basicSetLocals(LocalsComplexType newLocals, NotificationChain msgs) {
        LocalsComplexType oldLocals = this.locals;
        this.locals = newLocals;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 16, (Object)oldLocals, (Object)newLocals);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLocals(LocalsComplexType newLocals) {
        if (newLocals != this.locals) {
            NotificationChain msgs = null;
            if (this.locals != null) {
                msgs = ((InternalEObject)this.locals).eInverseRemove((InternalEObject)this, -17, null, msgs);
            }
            if (newLocals != null) {
                msgs = ((InternalEObject)newLocals).eInverseAdd((InternalEObject)this, -17, null, msgs);
            }
            if ((msgs = this.basicSetLocals(newLocals, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 16, (Object)newLocals, (Object)newLocals));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 14: {
                return this.basicSetArguments(null, msgs);
            }
            case 15: {
                return this.basicSetReturn(null, msgs);
            }
            case 16: {
                return this.basicSetLocals(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 14: {
                return this.getArguments();
            }
            case 15: {
                return this.getReturn();
            }
            case 16: {
                return this.getLocals();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 14: {
                this.setArguments((ArgumentsType)newValue);
                return;
            }
            case 15: {
                this.setReturn((RealizedReturnT)newValue);
                return;
            }
            case 16: {
                this.setLocals((LocalsComplexType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 14: {
                this.setArguments(null);
                return;
            }
            case 15: {
                this.setReturn(null);
                return;
            }
            case 16: {
                this.setLocals(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 14: {
                return this.arguments != null;
            }
            case 15: {
                return this.return_ != null;
            }
            case 16: {
                return this.locals != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

