/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.includeddatatypes;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IncludedDataTypeSet
extends ARObject {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public EList<AutosarDataType> getDataTypes();

    public String getLiteralPrefix();

    public void setLiteralPrefix(String var1);

    public void unsetLiteralPrefix();

    public boolean isSetLiteralPrefix();
}

