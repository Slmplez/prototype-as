/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.init;

import com.etas.amd.core.init.AbstractAmdInitValue;
import com.etas.amd.core.util.AbstractAmdComponent;
import com.etas.amd.core.util.AmdFactory;

public class AmdCompositeInitValue
extends AbstractAmdInitValue {
    @Override
    public void addDataSet(AbstractAmdComponent comp, String dataSetName, String elemName) {
        comp.addCompisiteEntry2DataSet(dataSetName, elemName, AmdFactory.createCompositeInitValue(dataSetName));
    }
}

