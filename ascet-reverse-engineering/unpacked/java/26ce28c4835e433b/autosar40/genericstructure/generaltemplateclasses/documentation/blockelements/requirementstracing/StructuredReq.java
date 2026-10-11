/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.TraceReferrable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.requirementstracing.Traceable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import javax.xml.datatype.XMLGregorianCalendar;

public interface StructuredReq
extends Paginateable,
TraceReferrable,
Traceable {
    public DocumentationBlock getDocumentationBlock();

    public void setDocumentationBlock(DocumentationBlock var1);

    public XMLGregorianCalendar getDate();

    public void setDate(XMLGregorianCalendar var1);

    public void unsetDate();

    public boolean isSetDate();

    public String getIssuedBy();

    public void setIssuedBy(String var1);

    public void unsetIssuedBy();

    public boolean isSetIssuedBy();

    public String getType();

    public void setType(String var1);

    public void unsetType();

    public boolean isSetType();

    public String getImportance();

    public void setImportance(String var1);

    public void unsetImportance();

    public boolean isSetImportance();

    public DocumentationBlock getDescription();

    public void setDescription(DocumentationBlock var1);

    public DocumentationBlock getRationale();

    public void setRationale(DocumentationBlock var1);

    public DocumentationBlock getDependencies();

    public void setDependencies(DocumentationBlock var1);

    public DocumentationBlock getUseCase();

    public void setUseCase(DocumentationBlock var1);

    public DocumentationBlock getConflicts();

    public void setConflicts(DocumentationBlock var1);

    public DocumentationBlock getSupportingMaterial();

    public void setSupportingMaterial(DocumentationBlock var1);

    public DocumentationBlock getRemark();

    public void setRemark(DocumentationBlock var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

