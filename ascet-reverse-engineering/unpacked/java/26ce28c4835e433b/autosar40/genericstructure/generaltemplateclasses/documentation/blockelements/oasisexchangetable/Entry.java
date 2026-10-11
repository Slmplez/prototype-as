/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;

public interface Entry
extends ARObject {
    public Row getRow();

    public void setRow(Row var1);

    public AlignEnum getAlign();

    public void setAlign(AlignEnum var1);

    public void unsetAlign();

    public boolean isSetAlign();

    public String getColname();

    public void setColname(String var1);

    public void unsetColname();

    public boolean isSetColname();

    public String getColsep();

    public void setColsep(String var1);

    public void unsetColsep();

    public boolean isSetColsep();

    public DocumentationBlock getEntryContents();

    public void setEntryContents(DocumentationBlock var1);

    public String getMorerows();

    public void setMorerows(String var1);

    public void unsetMorerows();

    public boolean isSetMorerows();

    public String getNameend();

    public void setNameend(String var1);

    public void unsetNameend();

    public boolean isSetNameend();

    public String getNamest();

    public void setNamest(String var1);

    public void unsetNamest();

    public boolean isSetNamest();

    public String getRotate();

    public void setRotate(String var1);

    public void unsetRotate();

    public boolean isSetRotate();

    public String getRowsep();

    public void setRowsep(String var1);

    public void unsetRowsep();

    public boolean isSetRowsep();

    public String getSpanname();

    public void setSpanname(String var1);

    public void unsetSpanname();

    public boolean isSetSpanname();

    public ValignEnum getValign();

    public void setValign(ValignEnum var1);

    public void unsetValign();

    public boolean isSetValign();
}

