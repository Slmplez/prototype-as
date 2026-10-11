/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.datatype.datatypes;

import autosar40.commonstructure.modedeclaration.ModeRequestTypeMap;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.datatype.datatypes.DataTypeMap;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DataTypeMappingSet
extends ARElement,
AtpBlueprint,
AtpBlueprintable {
    public EList<DataTypeMap> getDataTypeMaps();

    public EList<ModeRequestTypeMap> getModeRequestTypeMaps();
}

