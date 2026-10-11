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
import com.etas.amd620.core.ComponentSpecification.InputColumnsType;
import com.etas.amd620.core.ComponentSpecification.OutputColumnsType;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class BooleanTableTypeImpl
extends MinimalEObjectImpl.Container
implements BooleanTableType {
    protected InputColumnsType inputColumns;
    protected OutputColumnsType outputColumns;
    protected static final BigInteger COMBINATIONS_EDEFAULT = null;
    protected BigInteger combinations = COMBINATIONS_EDEFAULT;
    protected static final BigInteger INPUTS_EDEFAULT = null;
    protected BigInteger inputs = INPUTS_EDEFAULT;
    protected static final BigInteger OUTPUTS_EDEFAULT = null;
    protected BigInteger outputs = OUTPUTS_EDEFAULT;

    protected BooleanTableTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getBooleanTableType();
    }

    @Override
    public InputColumnsType getInputColumns() {
        return this.inputColumns;
    }

    public NotificationChain basicSetInputColumns(InputColumnsType newInputColumns, NotificationChain msgs) {
        InputColumnsType oldInputColumns = this.inputColumns;
        this.inputColumns = newInputColumns;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldInputColumns, (Object)newInputColumns);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInputColumns(InputColumnsType newInputColumns) {
        if (newInputColumns != this.inputColumns) {
            NotificationChain msgs = null;
            if (this.inputColumns != null) {
                msgs = ((InternalEObject)this.inputColumns).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newInputColumns != null) {
                msgs = ((InternalEObject)newInputColumns).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetInputColumns(newInputColumns, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newInputColumns, (Object)newInputColumns));
        }
    }

    @Override
    public OutputColumnsType getOutputColumns() {
        return this.outputColumns;
    }

    public NotificationChain basicSetOutputColumns(OutputColumnsType newOutputColumns, NotificationChain msgs) {
        OutputColumnsType oldOutputColumns = this.outputColumns;
        this.outputColumns = newOutputColumns;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldOutputColumns, (Object)newOutputColumns);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setOutputColumns(OutputColumnsType newOutputColumns) {
        if (newOutputColumns != this.outputColumns) {
            NotificationChain msgs = null;
            if (this.outputColumns != null) {
                msgs = ((InternalEObject)this.outputColumns).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newOutputColumns != null) {
                msgs = ((InternalEObject)newOutputColumns).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetOutputColumns(newOutputColumns, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newOutputColumns, (Object)newOutputColumns));
        }
    }

    @Override
    public BigInteger getCombinations() {
        return this.combinations;
    }

    @Override
    public void setCombinations(BigInteger newCombinations) {
        BigInteger oldCombinations = this.combinations;
        this.combinations = newCombinations;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldCombinations, (Object)this.combinations));
        }
    }

    @Override
    public BigInteger getInputs() {
        return this.inputs;
    }

    @Override
    public void setInputs(BigInteger newInputs) {
        BigInteger oldInputs = this.inputs;
        this.inputs = newInputs;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldInputs, (Object)this.inputs));
        }
    }

    @Override
    public BigInteger getOutputs() {
        return this.outputs;
    }

    @Override
    public void setOutputs(BigInteger newOutputs) {
        BigInteger oldOutputs = this.outputs;
        this.outputs = newOutputs;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldOutputs, (Object)this.outputs));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetInputColumns(null, msgs);
            }
            case 1: {
                return this.basicSetOutputColumns(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getInputColumns();
            }
            case 1: {
                return this.getOutputColumns();
            }
            case 2: {
                return this.getCombinations();
            }
            case 3: {
                return this.getInputs();
            }
            case 4: {
                return this.getOutputs();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setInputColumns((InputColumnsType)newValue);
                return;
            }
            case 1: {
                this.setOutputColumns((OutputColumnsType)newValue);
                return;
            }
            case 2: {
                this.setCombinations((BigInteger)newValue);
                return;
            }
            case 3: {
                this.setInputs((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setOutputs((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setInputColumns(null);
                return;
            }
            case 1: {
                this.setOutputColumns(null);
                return;
            }
            case 2: {
                this.setCombinations(COMBINATIONS_EDEFAULT);
                return;
            }
            case 3: {
                this.setInputs(INPUTS_EDEFAULT);
                return;
            }
            case 4: {
                this.setOutputs(OUTPUTS_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.inputColumns != null;
            }
            case 1: {
                return this.outputColumns != null;
            }
            case 2: {
                return COMBINATIONS_EDEFAULT == null ? this.combinations != null : !COMBINATIONS_EDEFAULT.equals(this.combinations);
            }
            case 3: {
                return INPUTS_EDEFAULT == null ? this.inputs != null : !INPUTS_EDEFAULT.equals(this.inputs);
            }
            case 4: {
                return OUTPUTS_EDEFAULT == null ? this.outputs != null : !OUTPUTS_EDEFAULT.equals(this.outputs);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (combinations: ");
        result.append(this.combinations);
        result.append(", inputs: ");
        result.append(this.inputs);
        result.append(", outputs: ");
        result.append(this.outputs);
        result.append(')');
        return result.toString();
    }
}

