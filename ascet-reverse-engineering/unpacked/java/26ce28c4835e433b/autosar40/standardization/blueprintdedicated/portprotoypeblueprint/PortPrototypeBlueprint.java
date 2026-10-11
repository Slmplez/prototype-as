/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.standardization.blueprintdedicated.portprotoypeblueprint;

import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.blueprintdedicated.portprotoypeblueprint.PortPrototypeBlueprintInitValue;
import autosar40.swcomponent.portinterface.PortInterface;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortPrototypeBlueprint
extends ARElement,
AtpBlueprint,
AtpStructureElement {
    public EList<PortPrototypeBlueprintInitValue> getInitValues();

    public PortInterface getInterface();

    public void setInterface(PortInterface var1);
}

