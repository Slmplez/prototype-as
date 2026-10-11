/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentImplementation.CacheLockingType;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.PrimitiveImplementationT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;

public class AmdEnumType
extends AbstractAmdScalarType {
    private final String typeRef;

    public AmdEnumType(String typeRef) {
        this.typeRef = typeRef;
    }

    @Override
    public ElementAttributesT createModelAttributes() {
        return AmdFactory.createElementAttributesForEnum(this.typeRef);
    }

    @Override
    public ScalarImplementationT createScalarImpl() {
        PrimitiveImplementationT enumImpl = ComponentImplementationFactory.eINSTANCE.createPrimitiveImplementationT();
        enumImpl.setCacheLocking(CacheLockingType.AUTOMATIC);
        enumImpl.setMemoryLocationInstance("Default");
        ScalarImplementationT impl = ComponentImplementationFactory.eINSTANCE.createScalarImplementationT();
        impl.setEnumerationImplementation(enumImpl);
        return impl;
    }
}

