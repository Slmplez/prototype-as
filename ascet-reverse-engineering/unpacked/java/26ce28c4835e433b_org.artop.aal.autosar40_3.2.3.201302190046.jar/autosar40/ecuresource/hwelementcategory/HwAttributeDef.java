/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecuresource.hwelementcategory;

import autosar40.ecuresource.hwelementcategory.HwAttributeLiteralDef;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.swcomponent.datatype.units.Unit;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HwAttributeDef
extends Identifiable {
    public HwCategory getHwCategory();

    public void setHwCategory(HwCategory var1);

    public EList<HwAttributeLiteralDef> getHwAttributeLiterals();

    public Boolean getIsRequired();

    public void setIsRequired(Boolean var1);

    public void unsetIsRequired();

    public boolean isSetIsRequired();

    public Unit getUnit();

    public void setUnit(Unit var1);
}

