/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.portinterface.SubElementMapping;
import autosar40.swcomponent.portinterface.TextTableMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DataPrototypeMapping
extends ARObject {
    public AutosarDataPrototype getFirstDataPrototype();

    public void setFirstDataPrototype(AutosarDataPrototype var1);

    public AutosarDataPrototype getSecondDataPrototype();

    public void setSecondDataPrototype(AutosarDataPrototype var1);

    public EList<SubElementMapping> getSubElementMappings();

    public EList<TextTableMapping> getTextTableMappings();
}

