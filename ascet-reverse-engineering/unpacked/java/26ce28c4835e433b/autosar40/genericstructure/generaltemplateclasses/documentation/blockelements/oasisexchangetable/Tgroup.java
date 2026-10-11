/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.AlignEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Colspec;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Table;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Tgroup
extends ARObject {
    public Table getTable();

    public void setTable(Table var1);

    public AlignEnum getAlign();

    public void setAlign(AlignEnum var1);

    public void unsetAlign();

    public boolean isSetAlign();

    public Integer getCols();

    public void setCols(Integer var1);

    public void unsetCols();

    public boolean isSetCols();

    public String getColsep();

    public void setColsep(String var1);

    public void unsetColsep();

    public boolean isSetColsep();

    public String getRowsep();

    public void setRowsep(String var1);

    public void unsetRowsep();

    public boolean isSetRowsep();

    public EList<Colspec> getColspecs();

    public Tbody getThead();

    public void setThead(Tbody var1);

    public Tbody getTfoot();

    public void setTfoot(Tbody var1);

    public Tbody getTbody();

    public void setTbody(Tbody var1);

    public IntegerDatatype getColsData();

    public void setColsData(IntegerDatatype var1);
}

