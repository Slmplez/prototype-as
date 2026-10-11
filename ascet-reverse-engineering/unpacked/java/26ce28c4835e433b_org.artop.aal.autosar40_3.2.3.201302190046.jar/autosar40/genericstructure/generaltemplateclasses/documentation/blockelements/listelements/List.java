/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.Item;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.listelements.ListEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface List
extends Paginateable {
    public DocumentationBlock getDocumentationBlock();

    public void setDocumentationBlock(DocumentationBlock var1);

    public ListEnum getType();

    public void setType(ListEnum var1);

    public void unsetType();

    public boolean isSetType();

    public EList<Item> getItems();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

