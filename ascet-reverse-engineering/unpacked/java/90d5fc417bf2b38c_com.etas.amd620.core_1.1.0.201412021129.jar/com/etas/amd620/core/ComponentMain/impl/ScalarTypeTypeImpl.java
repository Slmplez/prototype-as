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
package com.etas.amd620.core.ComponentMain.impl;

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.EnumerationAttributesT;
import com.etas.amd620.core.ComponentMain.ScalarAttributesT;
import com.etas.amd620.core.ComponentMain.ScalarTypeType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ScalarTypeTypeImpl
extends MinimalEObjectImpl.Container
implements ScalarTypeType {
    protected ScalarAttributesT scalarAttributes;
    protected EnumerationAttributesT enumerationAttributes;

    protected ScalarTypeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.SCALAR_TYPE_TYPE;
    }

    @Override
    public ScalarAttributesT getScalarAttributes() {
        return this.scalarAttributes;
    }

    public NotificationChain basicSetScalarAttributes(ScalarAttributesT newScalarAttributes, NotificationChain msgs) {
        ScalarAttributesT oldScalarAttributes = this.scalarAttributes;
        this.scalarAttributes = newScalarAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldScalarAttributes, (Object)newScalarAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setScalarAttributes(ScalarAttributesT newScalarAttributes) {
        if (newScalarAttributes != this.scalarAttributes) {
            NotificationChain msgs = null;
            if (this.scalarAttributes != null) {
                msgs = ((InternalEObject)this.scalarAttributes).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newScalarAttributes != null) {
                msgs = ((InternalEObject)newScalarAttributes).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetScalarAttributes(newScalarAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newScalarAttributes, (Object)newScalarAttributes));
        }
    }

    @Override
    public EnumerationAttributesT getEnumerationAttributes() {
        return this.enumerationAttributes;
    }

    public NotificationChain basicSetEnumerationAttributes(EnumerationAttributesT newEnumerationAttributes, NotificationChain msgs) {
        EnumerationAttributesT oldEnumerationAttributes = this.enumerationAttributes;
        this.enumerationAttributes = newEnumerationAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldEnumerationAttributes, (Object)newEnumerationAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setEnumerationAttributes(EnumerationAttributesT newEnumerationAttributes) {
        if (newEnumerationAttributes != this.enumerationAttributes) {
            NotificationChain msgs = null;
            if (this.enumerationAttributes != null) {
                msgs = ((InternalEObject)this.enumerationAttributes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newEnumerationAttributes != null) {
                msgs = ((InternalEObject)newEnumerationAttributes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetEnumerationAttributes(newEnumerationAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newEnumerationAttributes, (Object)newEnumerationAttributes));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetScalarAttributes(null, msgs);
            }
            case 1: {
                return this.basicSetEnumerationAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getScalarAttributes();
            }
            case 1: {
                return this.getEnumerationAttributes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setScalarAttributes((ScalarAttributesT)newValue);
                return;
            }
            case 1: {
                this.setEnumerationAttributes((EnumerationAttributesT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setScalarAttributes(null);
                return;
            }
            case 1: {
                this.setEnumerationAttributes(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.scalarAttributes != null;
            }
            case 1: {
                return this.enumerationAttributes != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

