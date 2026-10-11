/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gcomponents.GSwComponentType
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.components;

import autosar40.genericstructure.abstractstructure.AtpType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.components.PortGroup;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import gautosar.gswcomponents.gcomponents.GSwComponentType;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwComponentType
extends ARElement,
AtpBlueprint,
AtpBlueprintable,
AtpType,
GSwComponentType {
    public EList<SwComponentDocumentation> getSwComponentDocumentations();

    public EList<PortPrototype> getPorts();

    public EList<PortGroup> getPortGroups();
}

