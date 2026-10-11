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
package com.etas.amd620.core.ComponentData.impl;

import com.etas.amd620.core.ComponentData.ComponentDataPackage;
import com.etas.amd620.core.ComponentData.EnumerationDataT;
import com.etas.amd620.core.ComponentData.LogicDataT;
import com.etas.amd620.core.ComponentData.NumericDataT;
import com.etas.amd620.core.ComponentData.ScalarTypeT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ScalarTypeTImpl
extends MinimalEObjectImpl.Container
implements ScalarTypeT {
    protected EnumerationDataT enumeration;
    protected NumericDataT numeric;
    protected LogicDataT logic;

    protected ScalarTypeTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentDataPackage.Literals.SCALAR_TYPE_T;
    }

    @Override
    public EnumerationDataT getEnumeration() {
        return this.enumeration;
    }

    public NotificationChain basicSetEnumeration(EnumerationDataT newEnumeration, NotificationChain msgs) {
        EnumerationDataT oldEnumeration = this.enumeration;
        this.enumeration = newEnumeration;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldEnumeration, (Object)newEnumeration);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEnumeration(EnumerationDataT newEnumeration) {
        if (newEnumeration != this.enumeration) {
            NotificationChain msgs = null;
            if (this.enumeration != null) {
                msgs = ((InternalEObject)this.enumeration).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newEnumeration != null) {
                msgs = ((InternalEObject)newEnumeration).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetEnumeration(newEnumeration, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newEnumeration, (Object)newEnumeration));
        }
    }

    @Override
    public NumericDataT getNumeric() {
        return this.numeric;
    }

    public NotificationChain basicSetNumeric(NumericDataT newNumeric, NotificationChain msgs) {
        NumericDataT oldNumeric = this.numeric;
        this.numeric = newNumeric;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldNumeric, (Object)newNumeric);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNumeric(NumericDataT newNumeric) {
        if (newNumeric != this.numeric) {
            NotificationChain msgs = null;
            if (this.numeric != null) {
                msgs = ((InternalEObject)this.numeric).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newNumeric != null) {
                msgs = ((InternalEObject)newNumeric).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetNumeric(newNumeric, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newNumeric, (Object)newNumeric));
        }
    }

    @Override
    public LogicDataT getLogic() {
        return this.logic;
    }

    public NotificationChain basicSetLogic(LogicDataT newLogic, NotificationChain msgs) {
        LogicDataT oldLogic = this.logic;
        this.logic = newLogic;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldLogic, (Object)newLogic);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setLogic(LogicDataT newLogic) {
        if (newLogic != this.logic) {
            NotificationChain msgs = null;
            if (this.logic != null) {
                msgs = ((InternalEObject)this.logic).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newLogic != null) {
                msgs = ((InternalEObject)newLogic).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetLogic(newLogic, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newLogic, (Object)newLogic));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetEnumeration(null, msgs);
            }
            case 1: {
                return this.basicSetNumeric(null, msgs);
            }
            case 2: {
                return this.basicSetLogic(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getEnumeration();
            }
            case 1: {
                return this.getNumeric();
            }
            case 2: {
                return this.getLogic();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setEnumeration((EnumerationDataT)newValue);
                return;
            }
            case 1: {
                this.setNumeric((NumericDataT)newValue);
                return;
            }
            case 2: {
                this.setLogic((LogicDataT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setEnumeration(null);
                return;
            }
            case 1: {
                this.setNumeric(null);
                return;
            }
            case 2: {
                this.setLogic(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.enumeration != null;
            }
            case 1: {
                return this.numeric != null;
            }
            case 2: {
                return this.logic != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

