/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.SubElementRef;
import autosar40.swcomponent.portinterface.TextTableMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SubElementMapping
extends ARObject {
    public DataPrototypeMapping getDataPrototypeMapping();

    public void setDataPrototypeMapping(DataPrototypeMapping var1);

    public EList<SubElementRef> getFirstElements();

    public EList<SubElementRef> getSecondElements();

    public EList<TextTableMapping> getTextTableMappings();
}

