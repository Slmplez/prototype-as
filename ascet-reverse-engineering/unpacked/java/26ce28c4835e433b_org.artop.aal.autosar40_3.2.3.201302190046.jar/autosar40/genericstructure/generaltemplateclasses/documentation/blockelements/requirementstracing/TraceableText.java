/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface TraceableText
extends Paginateable,
TraceReferrable,
Traceable {
    public DocumentationBlock getDocumentationBlock();

    public void setDocumentationBlock(DocumentationBlock var1);

    public DocumentationBlock getText();

    public void setText(DocumentationBlock var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

