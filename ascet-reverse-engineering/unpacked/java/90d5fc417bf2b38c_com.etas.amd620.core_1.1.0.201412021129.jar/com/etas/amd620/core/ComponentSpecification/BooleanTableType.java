/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.InputColumnsType;
import com.etas.amd620.core.ComponentSpecification.OutputColumnsType;
import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface BooleanTableType
extends EObject {
    public InputColumnsType getInputColumns();

    public void setInputColumns(InputColumnsType var1);

    public OutputColumnsType getOutputColumns();

    public void setOutputColumns(OutputColumnsType var1);

    public BigInteger getCombinations();

    public void setCombinations(BigInteger var1);

    public BigInteger getInputs();

    public void setInputs(BigInteger var1);

    public BigInteger getOutputs();

    public void setOutputs(BigInteger var1);
}

