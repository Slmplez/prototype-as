/*
 * Decompiled with CFR 0.152.
 */
package autosar40.system.swmapping;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.system.SystemMapping;

public interface MappingConstraint
extends ARObject {
    public SystemMapping getSystemMapping();

    public void setSystemMapping(SystemMapping var1);

    public DocumentationBlock getIntroduction();

    public void setIntroduction(DocumentationBlock var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

