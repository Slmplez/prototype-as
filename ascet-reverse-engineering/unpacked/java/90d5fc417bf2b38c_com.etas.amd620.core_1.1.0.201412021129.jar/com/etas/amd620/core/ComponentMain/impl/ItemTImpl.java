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

import com.etas.amd620.core.ComponentMain.ComponentMainPackage;
import com.etas.amd620.core.ComponentMain.CustomerSpecificAttributesType;
import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.NotesT;
import com.etas.amd620.core.ComponentMain.impl.ItemBaseTImpl;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ItemTImpl
extends ItemBaseTImpl
implements ItemT {
    protected NotesT notes;
    protected CustomerSpecificAttributesType customerSpecificAttributes;

    protected ItemTImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ComponentMainPackage.Literals.ITEM_T;
    }

    @Override
    public NotesT getNotes() {
        return this.notes;
    }

    public NotificationChain basicSetNotes(NotesT newNotes, NotificationChain msgs) {
        NotesT oldNotes = this.notes;
        this.notes = newNotes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldNotes, (Object)newNotes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setNotes(NotesT newNotes) {
        if (newNotes != this.notes) {
            NotificationChain msgs = null;
            if (this.notes != null) {
                msgs = ((InternalEObject)this.notes).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newNotes != null) {
                msgs = ((InternalEObject)newNotes).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetNotes(newNotes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newNotes, (Object)newNotes));
        }
    }

    @Override
    public CustomerSpecificAttributesType getCustomerSpecificAttributes() {
        return this.customerSpecificAttributes;
    }

    public NotificationChain basicSetCustomerSpecificAttributes(CustomerSpecificAttributesType newCustomerSpecificAttributes, NotificationChain msgs) {
        CustomerSpecificAttributesType oldCustomerSpecificAttributes = this.customerSpecificAttributes;
        this.customerSpecificAttributes = newCustomerSpecificAttributes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldCustomerSpecificAttributes, (Object)newCustomerSpecificAttributes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setCustomerSpecificAttributes(CustomerSpecificAttributesType newCustomerSpecificAttributes) {
        if (newCustomerSpecificAttributes != this.customerSpecificAttributes) {
            NotificationChain msgs = null;
            if (this.customerSpecificAttributes != null) {
                msgs = ((InternalEObject)this.customerSpecificAttributes).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newCustomerSpecificAttributes != null) {
                msgs = ((InternalEObject)newCustomerSpecificAttributes).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetCustomerSpecificAttributes(newCustomerSpecificAttributes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newCustomerSpecificAttributes, (Object)newCustomerSpecificAttributes));
        }
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 9: {
                return this.basicSetNotes(null, msgs);
            }
            case 10: {
                return this.basicSetCustomerSpecificAttributes(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 9: {
                return this.getNotes();
            }
            case 10: {
                return this.getCustomerSpecificAttributes();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 9: {
                this.setNotes((NotesT)newValue);
                return;
            }
            case 10: {
                this.setCustomerSpecificAttributes((CustomerSpecificAttributesType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 9: {
                this.setNotes(null);
                return;
            }
            case 10: {
                this.setCustomerSpecificAttributes(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 9: {
                return this.notes != null;
            }
            case 10: {
                return this.customerSpecificAttributes != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

