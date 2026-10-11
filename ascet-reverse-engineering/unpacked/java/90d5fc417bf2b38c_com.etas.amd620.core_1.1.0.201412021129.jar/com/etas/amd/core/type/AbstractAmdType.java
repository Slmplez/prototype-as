/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd.core.type;

import com.etas.amd620.core.ComponentImplementation.ComponentImplementationFactory;
import com.etas.amd620.core.ComponentImplementation.ElementImplementationType;
import com.etas.amd620.core.ComponentImplementation.ImplementationEntryT;
import com.etas.amd620.core.ComponentImplementation.ImplementationVariantT;
import com.etas.amd620.core.ComponentMain.BasicModelTypeType;
import com.etas.amd620.core.ComponentMain.ComponentMainFactory;
import com.etas.amd620.core.ComponentMain.ElementAttributesT;
import com.etas.amd620.core.ComponentMain.ModelTypeType;

public abstract class AbstractAmdType {
    public static final String MIN_INF = "-INF";
    public static final String MAX_INF = "INF";
    public static final String IMPL_MEM_CLASS_DEFAULT = "Default";
    public static final String IMPL_VARIANT_DEFAULT = "default";

    public abstract ImplementationEntryT createImplAttributes(String var1);

    public abstract ElementAttributesT createModelAttributes();

    protected ElementAttributesT createCommonElementAttributes(BasicModelTypeType modelType, ModelTypeType modelKind) {
        ElementAttributesT attributes = ComponentMainFactory.eINSTANCE.createElementAttributesT();
        attributes.setBasicModelType(modelType);
        attributes.setModelType(modelKind);
        attributes.setUnit("");
        return attributes;
    }

    protected ImplementationEntryT createImplEntry(String elemName) {
        ElementImplementationType elemImpl = ComponentImplementationFactory.eINSTANCE.createElementImplementationType();
        elemImpl.setAsReference(false);
        elemImpl.setElementName(elemName);
        ImplementationVariantT variantT = ComponentImplementationFactory.eINSTANCE.createImplementationVariantT();
        variantT.setName(IMPL_VARIANT_DEFAULT);
        variantT.setElementImplementation(elemImpl);
        ImplementationEntryT implEntry = ComponentImplementationFactory.eINSTANCE.createImplementationEntryT();
        implEntry.setImplementationVariant(variantT);
        return implEntry;
    }
}

