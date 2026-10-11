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

import com.etas.amd620.core.ComponentSpecification.BooleanTableType;
import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConditionalTableType;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.TableSpecificationT;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TableSpecificationTImpl
extends MinimalEObjectImpl.Container
implements TableSpecificationT {
    protected ESDLCodeT eSDLCode;
    protected ConditionalTableType conditionalTable;
    protected BooleanTableType booleanTable;

    protected TableSpecificationTImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getTableSpecificationT();
    }

    @Override
    public ESDLCodeT getESDLCode() {
        return this.eSDLCode;
    }

    public NotificationChain basicSetESDLCode(ESDLCodeT newESDLCode, NotificationChain msgs) {
        ESDLCodeT oldESDLCode = this.eSDLCode;
        this.eSDLCode = newESDLCode;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldESDLCode, (Object)newESDLCode);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setESDLCode(ESDLCodeT newESDLCode) {
        if (newESDLCode != this.eSDLCode) {
            NotificationChain msgs = null;
            if (this.eSDLCode != null) {
                msgs = ((InternalEObject)this.eSDLCode).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newESDLCode != null) {
                msgs = ((InternalEObject)newESDLCode).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetESDLCode(newESDLCode, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newESDLCode, (Object)newESDLCode));
        }
    }

    @Override
    public ConditionalTableType getConditionalTable() {
        return this.conditionalTable;
    }

    public NotificationChain basicSetConditionalTable(ConditionalTableType newConditionalTable, NotificationChain msgs) {
        ConditionalTableType oldConditionalTable = this.conditionalTable;
        this.conditionalTable = newConditionalTable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldConditionalTable, (Object)newConditionalTable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConditionalTable(ConditionalTableType newConditionalTable) {
        if (newConditionalTable != this.conditionalTable) {
            NotificationChain msgs = null;
            if (this.conditionalTable != null) {
                msgs = ((InternalEObject)this.conditionalTable).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newConditionalTable != null) {
                msgs = ((InternalEObject)newConditionalTable).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetConditionalTable(newConditionalTable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newConditionalTable, (Object)newConditionalTable));
        }
    }

    @Override
    public BooleanTableType getBooleanTable() {
        return this.booleanTable;
    }

    public NotificationChain basicSetBooleanTable(BooleanTableType newBooleanTable, NotificationChain msgs) {
        BooleanTableType oldBooleanTable = this.booleanTable;
        this.booleanTable = newBooleanTable;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldBooleanTable, (Object)newBooleanTable);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setBooleanTable(BooleanTableType newBooleanTable) {
        if (newBooleanTable != this.booleanTable) {
            NotificationChain msgs = null;
            if (this.booleanTable != null) {
                msgs = ((InternalEObject)this.booleanTable).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newBooleanTable != null) {
                msgs = ((InternalEObject)newBooleanTable).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetBooleanTable(newBooleanTable, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newBooleanTable, (Object)newBooleanTable));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetESDLCode(null, msgs);
            }
            case 1: {
                return this.basicSetConditionalTable(null, msgs);
            }
            case 2: {
                return this.basicSetBooleanTable(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getESDLCode();
            }
            case 1: {
                return this.getConditionalTable();
            }
            case 2: {
                return this.getBooleanTable();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setESDLCode((ESDLCodeT)newValue);
                return;
            }
            case 1: {
                this.setConditionalTable((ConditionalTableType)newValue);
                return;
            }
            case 2: {
                this.setBooleanTable((BooleanTableType)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setESDLCode(null);
                return;
            }
            case 1: {
                this.setConditionalTable(null);
                return;
            }
            case 2: {
                this.setBooleanTable(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.eSDLCode != null;
            }
            case 1: {
                return this.conditionalTable != null;
            }
            case 2: {
                return this.booleanTable != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

