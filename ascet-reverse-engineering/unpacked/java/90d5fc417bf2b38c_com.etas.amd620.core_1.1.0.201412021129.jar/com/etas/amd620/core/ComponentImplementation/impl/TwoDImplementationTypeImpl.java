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
package com.etas.amd620.core.ComponentImplementation.impl;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationPackage;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentImplementation.TwoDImplementationType;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class TwoDImplementationTypeImpl
extends MinimalEObjectImpl.Container
implements TwoDImplementationType {
    protected ScalarImplementationT xAxis;
    protected ScalarImplementationT yAxis;
    protected ScalarImplementationT tableValues;
    protected static final String NAME_EDEFAULT = null;
    protected String name = NAME_EDEFAULT;

    protected TwoDImplementationTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentImplementationPackage.Literals.TWO_DIMPLEMENTATION_TYPE;
    }

    @Override
    public ScalarImplementationT getXAxis() {
        return this.xAxis;
    }

    public NotificationChain basicSetXAxis(ScalarImplementationT newXAxis, NotificationChain msgs) {
        ScalarImplementationT oldXAxis = this.xAxis;
        this.xAxis = newXAxis;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldXAxis, (Object)newXAxis);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setXAxis(ScalarImplementationT newXAxis) {
        if (newXAxis != this.xAxis) {
            NotificationChain msgs = null;
            if (this.xAxis != null) {
                msgs = ((InternalEObject)this.xAxis).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newXAxis != null) {
                msgs = ((InternalEObject)newXAxis).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetXAxis(newXAxis, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newXAxis, (Object)newXAxis));
        }
    }

    @Override
    public ScalarImplementationT getYAxis() {
        return this.yAxis;
    }

    public NotificationChain basicSetYAxis(ScalarImplementationT newYAxis, NotificationChain msgs) {
        ScalarImplementationT oldYAxis = this.yAxis;
        this.yAxis = newYAxis;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldYAxis, (Object)newYAxis);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setYAxis(ScalarImplementationT newYAxis) {
        if (newYAxis != this.yAxis) {
            NotificationChain msgs = null;
            if (this.yAxis != null) {
                msgs = ((InternalEObject)this.yAxis).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newYAxis != null) {
                msgs = ((InternalEObject)newYAxis).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetYAxis(newYAxis, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newYAxis, (Object)newYAxis));
        }
    }

    @Override
    public ScalarImplementationT getTableValues() {
        return this.tableValues;
    }

    public NotificationChain basicSetTableValues(ScalarImplementationT newTableValues, NotificationChain msgs) {
        ScalarImplementationT oldTableValues = this.tableValues;
        this.tableValues = newTableValues;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldTableValues, (Object)newTableValues);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setTableValues(ScalarImplementationT newTableValues) {
        if (newTableValues != this.tableValues) {
            NotificationChain msgs = null;
            if (this.tableValues != null) {
                msgs = ((InternalEObject)this.tableValues).eInverseRemove((InternalEObject)this, -3, null, msgs);
            }
            if (newTableValues != null) {
                msgs = ((InternalEObject)newTableValues).eInverseAdd((InternalEObject)this, -3, null, msgs);
            }
            if ((msgs = this.basicSetTableValues(newTableValues, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)newTableValues, (Object)newTableValues));
        }
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public void setName(String newName) {
        String oldName = this.name;
        this.name = newName;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldName, (Object)this.name));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetXAxis(null, msgs);
            }
            case 1: {
                return this.basicSetYAxis(null, msgs);
            }
            case 2: {
                return this.basicSetTableValues(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getXAxis();
            }
            case 1: {
                return this.getYAxis();
            }
            case 2: {
                return this.getTableValues();
            }
            case 3: {
                return this.getName();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setXAxis((ScalarImplementationT)newValue);
                return;
            }
            case 1: {
                this.setYAxis((ScalarImplementationT)newValue);
                return;
            }
            case 2: {
                this.setTableValues((ScalarImplementationT)newValue);
                return;
            }
            case 3: {
                this.setName((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setXAxis(null);
                return;
            }
            case 1: {
                this.setYAxis(null);
                return;
            }
            case 2: {
                this.setTableValues(null);
                return;
            }
            case 3: {
                this.setName(NAME_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.xAxis != null;
            }
            case 1: {
                return this.yAxis != null;
            }
            case 2: {
                return this.tableValues != null;
            }
            case 3: {
                return NAME_EDEFAULT == null ? this.name != null : !NAME_EDEFAULT.equals(this.name);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (name: ");
        result.append(this.name);
        result.append(')');
        return result.toString();
    }
}

