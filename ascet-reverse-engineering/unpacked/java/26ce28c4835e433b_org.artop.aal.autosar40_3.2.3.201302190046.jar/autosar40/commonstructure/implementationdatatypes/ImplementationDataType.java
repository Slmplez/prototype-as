/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.implementationdatatypes;

import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.components.SymbolProps;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ImplementationDataType
extends AtpBlueprint,
AtpBlueprintable,
AutosarDataType {
    public EList<ImplementationDataTypeElement> getSubElements();

    public SymbolProps getSymbolProps();

    public void setSymbolProps(SymbolProps var1);

    public String getTypeEmitter();

    public void setTypeEmitter(String var1);

    public void unsetTypeEmitter();

    public boolean isSetTypeEmitter();
}

