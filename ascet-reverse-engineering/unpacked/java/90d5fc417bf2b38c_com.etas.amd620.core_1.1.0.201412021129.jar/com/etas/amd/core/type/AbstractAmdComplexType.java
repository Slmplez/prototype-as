/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd.core.type.AbstractAmdType;
import com.etas.amd.core.util.AmdFactory;
import com.etas.amd620.core.ComponentImplementation.ComplexImplementationT;
import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComplexAttributesT;
import com.etas.amd620.core.ComponentMain.ComplexTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.KindType;
import com.etas.amd620.core.ComponentMain.ModelTypeType;

public abstract class AbstractAmdComplexType
extends AbstractAmdType {
    private String typeRef;

    public AbstractAmdComplexType(String typeRef) {
        this.typeRef = typeRef;
    }

    protected abstract ComplexAttributesT createTypeSpecificNode(ComplexTypeType var1);

    protected abstract BasicModelTypeType getBasicModelType();

    protected ImplementationEntryT createComplexImplementation(String elemName) {
        ImplementationEntryT implEntry = this.createImplEntry(elemName);
        ComplexImplementationT impl = ComponentImplementationFactory.eINSTANCE.createComplexImplementationT();
        impl.setImplementationName("Impl");
        implEntry.getImplementationVariant().getElementImplementation().setComplexImplementation(impl);
        return implEntry;
    }

    public ElementAttributesT createElementAttributesComplex() {
        ElementAttributesT attributes = this.createCommonElementAttributes(this.getBasicModelType(), ModelTypeType.COMPLEX);
        ComplexTypeType complextType = ComponentMainFactory.eINSTANCE.createComplexTypeType();
        attributes.setComplexType(complextType);
        ComplexAttributesT compAttributes = this.createTypeSpecificNode(complextType);
        AmdFactory.initAttributesBase(compAttributes);
        compAttributes.setComponentName(this.typeRef);
        compAttributes.setKind(KindType.VARIABLE);
        compAttributes.setReference(false);
        return attributes;
    }

    @Override
    public ImplementationEntryT createImplAttributes(String elemName) {
        return this.createComplexImplementation(elemName);
    }

    @Override
    public ElementAttributesT createModelAttributes() {
        return this.createElementAttributesComplex();
    }
}

