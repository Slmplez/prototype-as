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

import com.etas.amd620.core.ComponentSpecification.ComponentSpecificationPackage;
import com.etas.amd620.core.ComponentSpecification.ConditionColumnsType;
import com.etas.amd620.core.ComponentSpecification.ConditionalTableType;
import com.etas.amd620.core.ComponentSpecification.InstructionColumnsType;
import java.math.BigInteger;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

public class ConditionalTableTypeImpl
extends MinimalEObjectImpl.Container
implements ConditionalTableType {
    protected ConditionColumnsType conditionColumns;
    protected InstructionColumnsType instructionColumns;
    protected static final BigInteger CONDITIONS_EDEFAULT = null;
    protected BigInteger conditions = CONDITIONS_EDEFAULT;
    protected static final BigInteger INSTRUCTIONS_EDEFAULT = null;
    protected BigInteger instructions = INSTRUCTIONS_EDEFAULT;
    protected static final BigInteger ROWS_EDEFAULT = null;
    protected BigInteger rows = ROWS_EDEFAULT;

    protected ConditionalTableTypeImpl() {
    }

    protected EClass eStaticClass() {
        return ComponentSpecificationPackage.eINSTANCE.getConditionalTableType();
    }

    @Override
    public ConditionColumnsType getConditionColumns() {
        return this.conditionColumns;
    }

    public NotificationChain basicSetConditionColumns(ConditionColumnsType newConditionColumns, NotificationChain msgs) {
        ConditionColumnsType oldConditionColumns = this.conditionColumns;
        this.conditionColumns = newConditionColumns;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 0, (Object)oldConditionColumns, (Object)newConditionColumns);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setConditionColumns(ConditionColumnsType newConditionColumns) {
        if (newConditionColumns != this.conditionColumns) {
            NotificationChain msgs = null;
            if (this.conditionColumns != null) {
                msgs = ((InternalEObject)this.conditionColumns).eInverseRemove((InternalEObject)this, -1, null, msgs);
            }
            if (newConditionColumns != null) {
                msgs = ((InternalEObject)newConditionColumns).eInverseAdd((InternalEObject)this, -1, null, msgs);
            }
            if ((msgs = this.basicSetConditionColumns(newConditionColumns, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 0, (Object)newConditionColumns, (Object)newConditionColumns));
        }
    }

    @Override
    public InstructionColumnsType getInstructionColumns() {
        return this.instructionColumns;
    }

    public NotificationChain basicSetInstructionColumns(InstructionColumnsType newInstructionColumns, NotificationChain msgs) {
        InstructionColumnsType oldInstructionColumns = this.instructionColumns;
        this.instructionColumns = newInstructionColumns;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 1, (Object)oldInstructionColumns, (Object)newInstructionColumns);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setInstructionColumns(InstructionColumnsType newInstructionColumns) {
        if (newInstructionColumns != this.instructionColumns) {
            NotificationChain msgs = null;
            if (this.instructionColumns != null) {
                msgs = ((InternalEObject)this.instructionColumns).eInverseRemove((InternalEObject)this, -2, null, msgs);
            }
            if (newInstructionColumns != null) {
                msgs = ((InternalEObject)newInstructionColumns).eInverseAdd((InternalEObject)this, -2, null, msgs);
            }
            if ((msgs = this.basicSetInstructionColumns(newInstructionColumns, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 1, (Object)newInstructionColumns, (Object)newInstructionColumns));
        }
    }

    @Override
    public BigInteger getConditions() {
        return this.conditions;
    }

    @Override
    public void setConditions(BigInteger newConditions) {
        BigInteger oldConditions = this.conditions;
        this.conditions = newConditions;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 2, (Object)oldConditions, (Object)this.conditions));
        }
    }

    @Override
    public BigInteger getInstructions() {
        return this.instructions;
    }

    @Override
    public void setInstructions(BigInteger newInstructions) {
        BigInteger oldInstructions = this.instructions;
        this.instructions = newInstructions;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 3, (Object)oldInstructions, (Object)this.instructions));
        }
    }

    @Override
    public BigInteger getRows() {
        return this.rows;
    }

    @Override
    public void setRows(BigInteger newRows) {
        BigInteger oldRows = this.rows;
        this.rows = newRows;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldRows, (Object)this.rows));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return this.basicSetConditionColumns(null, msgs);
            }
            case 1: {
                return this.basicSetInstructionColumns(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getConditionColumns();
            }
            case 1: {
                return this.getInstructionColumns();
            }
            case 2: {
                return this.getConditions();
            }
            case 3: {
                return this.getInstructions();
            }
            case 4: {
                return this.getRows();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.setConditionColumns((ConditionColumnsType)newValue);
                return;
            }
            case 1: {
                this.setInstructionColumns((InstructionColumnsType)newValue);
                return;
            }
            case 2: {
                this.setConditions((BigInteger)newValue);
                return;
            }
            case 3: {
                this.setInstructions((BigInteger)newValue);
                return;
            }
            case 4: {
                this.setRows((BigInteger)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.setConditionColumns(null);
                return;
            }
            case 1: {
                this.setInstructionColumns(null);
                return;
            }
            case 2: {
                this.setConditions(CONDITIONS_EDEFAULT);
                return;
            }
            case 3: {
                this.setInstructions(INSTRUCTIONS_EDEFAULT);
                return;
            }
            case 4: {
                this.setRows(ROWS_EDEFAULT);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.conditionColumns != null;
            }
            case 1: {
                return this.instructionColumns != null;
            }
            case 2: {
                return CONDITIONS_EDEFAULT == null ? this.conditions != null : !CONDITIONS_EDEFAULT.equals(this.conditions);
            }
            case 3: {
                return INSTRUCTIONS_EDEFAULT == null ? this.instructions != null : !INSTRUCTIONS_EDEFAULT.equals(this.instructions);
            }
            case 4: {
                return ROWS_EDEFAULT == null ? this.rows != null : !ROWS_EDEFAULT.equals(this.rows);
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (conditions: ");
        result.append(this.conditions);
        result.append(", instructions: ");
        result.append(this.instructions);
        result.append(", rows: ");
        result.append(this.rows);
        result.append(')');
        return result.toString();
    }
}

