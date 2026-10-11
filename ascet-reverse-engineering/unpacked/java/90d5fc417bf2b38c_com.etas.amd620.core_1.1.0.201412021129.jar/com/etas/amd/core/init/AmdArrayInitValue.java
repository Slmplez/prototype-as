/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.init;

import com.etas.amd.core.init.AbstractAmdInitValue;
import com.etas.amd.core.init.AbstractAmdScalarInitValue;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentData.ScalarTypeT;

public class AmdArrayInitValue
extends AbstractAmdInitValue {
    private final ScalarTypeT[] values;
    private int insertIdx = 0;

    public AmdArrayInitValue(int size) {
        this.values = new ScalarTypeT[size];
    }

    @Override
    public void addDataSet(AbstractAmdComponent comp, String dataSetName, String elemName) {
        comp.addDimEntry2DataSet(dataSetName, elemName, AmdFactory.createArrayInitValue(this.values));
    }

    public void addInit(AbstractAmdInitValue initValue) throws Exception {
        if (!(initValue instanceof AbstractAmdScalarInitValue)) {
            throw new Exception("Not supported init value " + initValue.getClass());
        }
        this.values[this.insertIdx++] = ((AbstractAmdScalarInitValue)initValue).getScalarValue();
    }
}

