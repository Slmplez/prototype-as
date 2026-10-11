/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.note.NoteTypeEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.multilanguagedata.MultilanguageLongName;
import autosar40.genericstructure.varianthandling.VariationPoint;

public interface Note
extends Paginateable {
    public DocumentationBlock getDocumentationBlock();

    public void setDocumentationBlock(DocumentationBlock var1);

    public NoteTypeEnum getNoteType();

    public void setNoteType(NoteTypeEnum var1);

    public void unsetNoteType();

    public boolean isSetNoteType();

    public MultilanguageLongName getLabel();

    public void setLabel(MultilanguageLongName var1);

    public DocumentationBlock getNoteText();

    public void setNoteText(DocumentationBlock var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

