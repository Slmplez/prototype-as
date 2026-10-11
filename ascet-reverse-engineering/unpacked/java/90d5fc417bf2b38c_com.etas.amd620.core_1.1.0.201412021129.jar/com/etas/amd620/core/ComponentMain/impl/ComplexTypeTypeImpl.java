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

import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.RecordAttributesT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ComplexTypeTypeImpl
extends MinimalEObjectImpl.Container
implements ComplexTypeType {
    protected ComplexAttributesT complexAttributes;
    protected RecordAttributesT recordAttributes;

    protected ComplexTypeTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.COMPLEX_TYPE_TYPE;
    }

    @Override
    public ComplexAttributesT getComplexAttributes() {
        return this.complexAttributes;
    }

    public NotificationChain basicSetComplexAttributes(ComplexAttributesT newComplexAttributes, NotificationChain msgs) {
        ComplexAttributesT oldComplexAttributes = this.complexAttributes;
        this.complexAttributes = newComplexAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldComplexAttributes, (Object)newComplexAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setComplexAttributes(ComplexAttributesT newComplexAttributes) {
        if (newComplexAttributes != this.complexAttributes) {
            NotificationChain msgs = null;
            if (this.complexAttributes != null) {
                msgs = ((InternalEObject)this.complexAttributes).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newComplexAttributes != null) {
                msgs = ((InternalEObject)newComplexAttributes).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetComplexAttributes(newComplexAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newComplexAttributes, (Object)newComplexAttributes));
        }
    }

    @Override
    public RecordAttributesT getRecordAttributes() {
        return this.recordAttributes;
    }

    public NotificationChain basicSetRecordAttributes(RecordAttributesT newRecordAttributes, NotificationChain msgs) {
        RecordAttributesT oldRecordAttributes = this.recordAttributes;
        this.recordAttributes = newRecordAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldRecordAttributes, (Object)newRecordAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setRecordAttributes(RecordAttributesT newRecordAttributes) {
        if (newRecordAttributes != this.recordAttributes) {
            NotificationChain msgs = null;
            if (this.recordAttributes != null) {
                msgs = ((InternalEObject)this.recordAttributes).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newRecordAttributes != null) {
                msgs = ((InternalEObject)newRecordAttributes).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetRecordAttributes(newRecordAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newRecordAttributes, (Object)newRecordAttributes));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetComplexAttributes(null, msgs);
            }
            case 1: {
                return this.basicSetRecordAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getComplexAttributes();
            }
            case 1: {
                return this.getRecordAttributes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setComplexAttributes((ComplexAttributesT)newValue);
                return;
            }
            case 1: {
                this.setRecordAttributes((RecordAttributesT)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setComplexAttributes(null);
                return;
            }
            case 1: {
                this.setRecordAttributes(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.complexAttributes != null;
            }
            case 1: {
                return this.recordAttributes != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

