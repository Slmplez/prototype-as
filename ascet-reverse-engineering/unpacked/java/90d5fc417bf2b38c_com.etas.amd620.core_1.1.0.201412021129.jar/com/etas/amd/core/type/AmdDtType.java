/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.IntervalT;
import com.etas.amd620.core.ComponentImplementation.LimitOverflowType;
import com.etas.amd620.core.ComponentImplementation.MasterType;
import com.etas.amd620.core.ComponentImplementation.NumericImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;

public class AmdDtType
extends AbstractAmdScalarType {
    @Override
    public ElementAttributesT createModelAttributes() {
        return AmdFactory.createElementAttributesForScalar(BasicModelTypeType.DT);
    }

    @Override
    public ScalarImplementationT createScalarImpl() {
        NumericImplementationT numImpl = ComponentImplementationFactory.eINSTANCE.createNumericImplementationT();
        numImpl.setLimitAssignments(true);
        numImpl.setIsLimitOverflow(false);
        numImpl.setLimitOverflow(LimitOverflowType.AUTOMATIC);
        numImpl.setCacheLocking(CacheLockingType.AUTOMATIC);
        numImpl.setQuantization("0");
        numImpl.setZeroNotIncluded(false);
        numImpl.setFormula("dT");
        numImpl.setMaster(MasterType.IMPLEMENTATION);
        numImpl.setMemoryLocationInstance("Default");
        numImpl.setImplType("uint32");
        numImpl.setPhysType("real64");
        IntervalT minMax = ComponentImplementationFactory.eINSTANCE.createIntervalT();
        minMax.setMax("4294967295");
        minMax.setMin("0");
        numImpl.setImplementationInterval(minMax);
        ScalarImplementationT impl = ComponentImplementationFactory.eINSTANCE.createScalarImplementationT();
        impl.setNumericImplementation(numImpl);
        return impl;
    }
}

