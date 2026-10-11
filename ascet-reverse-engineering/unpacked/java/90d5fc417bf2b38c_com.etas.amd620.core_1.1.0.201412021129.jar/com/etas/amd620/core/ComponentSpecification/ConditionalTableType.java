/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.ConditionColumnsType;
import com.etas.amd620.core.ComponentSpecification.InstructionColumnsType;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface ConditionalTableType
extends EObject {
    public ConditionColumnsType getConditionColumns();

    public void setConditionColumns(ConditionColumnsType var1);

    public InstructionColumnsType getInstructionColumns();

    public void setInstructionColumns(InstructionColumnsType var1);

    public BigInteger getConditions();

    public void setConditions(BigInteger var1);

    public BigInteger getInstructions();

    public void setInstructions(BigInteger var1);

    public BigInteger getRows();

    public void setRows(BigInteger var1);
}

