/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.LogicImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;

public class AmdLogicType
extends AbstractAmdScalarType {
    @Override
    public ElementAttributesT createModelAttributes() {
        return AmdFactory.createElementAttributesForScalar(BasicModelTypeType.LOG);
    }

    @Override
    public ScalarImplementationT createScalarImpl() {
        ScalarImplementationT impl = ComponentImplementationFactory.eINSTANCE.createScalarImplementationT();
        LogicImplementationT logImpl = ComponentImplementationFactory.eINSTANCE.createLogicImplementationT();
        logImpl.setCacheLocking(CacheLockingType.AUTOMATIC);
        logImpl.setImplType("bool");
        logImpl.setPhysType("log");
        logImpl.setMemoryLocationInstance("Default");
        impl.setLogicImplementation(logImpl);
        return impl;
    }
}

