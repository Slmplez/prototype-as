/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdComplexType;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;

public class AmdInterfaceType
extends AbstractAmdComplexType {
    public AmdInterfaceType(String typeRef) {
        super(typeRef);
    }

    @Override
    protected ComplexAttributesT createTypeSpecificNode(ComplexTypeType complextType) {
        ComplexAttributesT compAttributes = ComponentMainFactory.eINSTANCE.createComplexAttributesT();
        complextType.setComplexAttributes(compAttributes);
        return compAttributes;
    }

    @Override
    protected BasicModelTypeType getBasicModelType() {
        return BasicModelTypeType.INTERFACE;
    }
}

