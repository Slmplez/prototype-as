/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.DiagramElementsComplexType;
import com.etas.amd620.core.ComponentSpecification.ESDLCodeT;
import com.etas.amd620.core.ComponentSpecification.GraphicSpecificationT;

public interface BlockDiagramSpecificationT
extends GraphicSpecificationT {
    public ESDLCodeT getESDLCode();

    public void setESDLCode(ESDLCodeT var1);

    public DiagramElementsComplexType getDiagramElements();

    public void setDiagramElements(DiagramElementsComplexType var1);
}

