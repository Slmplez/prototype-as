/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ScalarImplementationT;

public abstract class AbstractAmdScalarType
extends AbstractAmdType {
    public abstract ScalarImplementationT createScalarImpl();

    public ImplementationEntryT createPrimitiveImplementation(String elemName) {
        ImplementationEntryT implEntry = this.createImplEntry(elemName);
        ScalarImplementationT impl = this.createScalarImpl();
        implEntry.getImplementationVariant().getElementImplementation().setScalarImplementation(impl);
        return implEntry;
    }

    @Override
    public ImplementationEntryT createImplAttributes(String elemName) {
        return this.createPrimitiveImplementation(elemName);
    }
}

