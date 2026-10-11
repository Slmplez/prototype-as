/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.ChapterEnumBreak;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.DocumentViewSelectable;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.KeepWithPreviousEnum;

public interface Paginateable
extends DocumentViewSelectable {
    public ChapterEnumBreak getBreak();

    public void setBreak(ChapterEnumBreak var1);

    public void unsetBreak();

    public boolean isSetBreak();

    public KeepWithPreviousEnum getKeepWithPrevious();

    public void setKeepWithPrevious(KeepWithPreviousEnum var1);

    public void unsetKeepWithPrevious();

    public boolean isSetKeepWithPrevious();
}

