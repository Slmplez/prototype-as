/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Entry;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tbody;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Row
extends ARObject {
    public Tbody getTbody();

    public void setTbody(Tbody var1);

    public String getRowsep();

    public void setRowsep(String var1);

    public void unsetRowsep();

    public boolean isSetRowsep();

    public ValignEnum getValign();

    public void setValign(ValignEnum var1);

    public void unsetValign();

    public boolean isSetValign();

    public EList<Entry> getEntries();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

