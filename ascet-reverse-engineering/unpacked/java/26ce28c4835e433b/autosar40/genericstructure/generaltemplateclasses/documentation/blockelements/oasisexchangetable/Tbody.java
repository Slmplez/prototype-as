/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Row;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.ValignEnum;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Tbody
extends ARObject {
    public ValignEnum getValign();

    public void setValign(ValignEnum var1);

    public void unsetValign();

    public boolean isSetValign();

    public EList<Row> getRows();
}

