/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;

public interface PostBuildVariantCriterion
extends ARElement {
    public CompuMethod getCompuMethod();

    public void setCompuMethod(CompuMethod var1);
}

