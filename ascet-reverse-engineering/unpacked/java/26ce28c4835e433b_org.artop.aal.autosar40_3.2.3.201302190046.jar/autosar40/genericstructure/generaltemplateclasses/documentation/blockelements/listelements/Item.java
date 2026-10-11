/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.List;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface Item
extends Paginateable {
    public List getList();

    public void setList(List var1);

    public DocumentationBlock getItemContents();

    public void setItemContents(DocumentationBlock var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

