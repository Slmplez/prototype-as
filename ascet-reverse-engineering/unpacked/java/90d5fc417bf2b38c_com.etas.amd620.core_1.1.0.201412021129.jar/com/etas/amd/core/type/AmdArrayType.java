/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdScalarType;
import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.DimensionalImplementationT;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;

public class AmdArrayType
extends AbstractAmdType {
    private final int maxNumberOfElements;
    private final AbstractAmdScalarType element;

    public AmdArrayType(int size, AbstractAmdScalarType elem) {
        this.maxNumberOfElements = size;
        this.element = elem;
    }

    public ImplementationEntryT createArrayImplementation(String elemName) {
        ImplementationEntryT implEntry = this.createImplEntry(elemName);
        DimensionalImplementationT dimImpl = ComponentImplementationFactory.eINSTANCE.createDimensionalImplementationT();
        ScalarImplementationT arrayImpl = this.element.createScalarImpl();
        dimImpl.setArrayImplementation(arrayImpl);
        implEntry.getImplementationVariant().getElementImplementation().setDimensionalImplementation(dimImpl);
        return implEntry;
    }

    @Override
    public ImplementationEntryT createImplAttributes(String elemName) {
        return this.createArrayImplementation(elemName);
    }

    @Override
    public ElementAttributesT createModelAttributes() {
        return AmdFactory.createElementAttributesForArray(this.maxNumberOfElements);
    }
}

