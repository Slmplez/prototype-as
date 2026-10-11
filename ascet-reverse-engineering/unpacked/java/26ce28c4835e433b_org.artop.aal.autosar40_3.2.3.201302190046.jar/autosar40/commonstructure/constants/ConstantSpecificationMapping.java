/*
 * Decompiled with CFR 0.152.
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.constants.ConstantSpecification;
import autosar40.commonstructure.constants.ConstantSpecificationMappingSet;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;

public interface ConstantSpecificationMapping
extends ARObject {
    public ConstantSpecificationMappingSet getConstantSpecificationMappingSet();

    public void setConstantSpecificationMappingSet(ConstantSpecificationMappingSet var1);

    public ConstantSpecification getApplConstant();

    public void setApplConstant(ConstantSpecification var1);

    public ConstantSpecification getImplConstant();

    public void setImplConstant(ConstantSpecification var1);
}

