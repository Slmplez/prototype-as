/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.init;

import com.etas.amd.core.init.AbstractAmdInitValue;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd620.core.ComponentData.ScalarTypeT;

public abstract class AbstractAmdScalarInitValue
extends AbstractAmdInitValue {
    public abstract ScalarTypeT getScalarValue();

    @Override
    public void addDataSet(AbstractAmdComponent comp, String dataSetName, String elemName) {
        comp.addScalarEntry2DataSet(dataSetName, elemName, this.getScalarValue());
    }
}

