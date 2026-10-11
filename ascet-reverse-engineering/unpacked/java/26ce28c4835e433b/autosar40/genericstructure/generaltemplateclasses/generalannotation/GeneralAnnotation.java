/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation
 */
package autosar40.genericstructure.generaltemplateclasses.generalannotation;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GGeneralAnnotation;

public interface GeneralAnnotation
extends ARObject,
GGeneralAnnotation {
    public MultilanguageLongName getLabel();

    public void setLabel(MultilanguageLongName var1);

    public String getAnnotationOrigin();

    public void setAnnotationOrigin(String var1);

    public void unsetAnnotationOrigin();

    public boolean isSetAnnotationOrigin();

    public DocumentationBlock getAnnotationText();

    public void setAnnotationText(DocumentationBlock var1);
}

