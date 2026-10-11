/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibex4lin.lincommunication;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.system.fibex.fibex4lin.lincommunication.LinScheduleTable;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface ScheduleTableEntry
extends ARObject {
    public LinScheduleTable getLinScheduleTable();

    public void setLinScheduleTable(LinScheduleTable var1);

    public DocumentationBlock getIntroduction();

    public void setIntroduction(DocumentationBlock var1);

    public Double getDelay();

    public void setDelay(Double var1);

    public void unsetDelay();

    public boolean isSetDelay();

    public Integer getPositionInTable();

    public void setPositionInTable(Integer var1);

    public void unsetPositionInTable();

    public boolean isSetPositionInTable();

    public IntegerDatatype getPositionInTableData();

    public void setPositionInTableData(IntegerDatatype var1);
}

