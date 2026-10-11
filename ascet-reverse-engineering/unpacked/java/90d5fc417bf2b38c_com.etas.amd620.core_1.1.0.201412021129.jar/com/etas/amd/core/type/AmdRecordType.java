/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdComplexType;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
import com.etas.amd620.core.ComponentMain.RecordAttributesT;

public class AmdRecordType
extends AbstractAmdComplexType {
    public AmdRecordType(String typeRef) {
        super(typeRef);
    }

    @Override
    protected ComplexAttributesT createTypeSpecificNode(ComplexTypeType complextType) {
        RecordAttributesT recType = ComponentMainFactory.eINSTANCE.createRecordAttributesT();
        complextType.setRecordAttributes(recType);
        return recType;
    }

    @Override
    protected BasicModelTypeType getBasicModelType() {
        return BasicModelTypeType.INTERFACE;
    }
}

