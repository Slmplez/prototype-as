/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;

public interface Colspec
extends ARObject {
    public Tgroup getTgroup();

    public void setTgroup(Tgroup var1);

    public AlignEnum getAlign();

    public void setAlign(AlignEnum var1);

    public void unsetAlign();

    public boolean isSetAlign();

    public String getColname();

    public void setColname(String var1);

    public void unsetColname();

    public boolean isSetColname();

    public String getColnum();

    public void setColnum(String var1);

    public void unsetColnum();

    public boolean isSetColnum();

    public String getColsep();

    public void setColsep(String var1);

    public void unsetColsep();

    public boolean isSetColsep();

    public String getColwidth();

    public void setColwidth(String var1);

    public void unsetColwidth();

    public boolean isSetColwidth();

    public String getRowsep();

    public void setRowsep(String var1);

    public void unsetRowsep();

    public boolean isSetRowsep();
}

