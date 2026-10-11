/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswoverview;

import autosar40.bswmodule.bswbehavior.BswInternalBehavior;
import autosar40.bswmodule.bswinterfaces.BswModuleDependency;
import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.commonstructure.modedeclaration.ModeDeclarationGroupPrototype;
import autosar40.commonstructure.triggerdeclaration.Trigger;
import autosar40.genericstructure.abstractstructure.AtpStructureElement;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleDescription
extends ARElement,
AtpBlueprint,
AtpBlueprintable,
AtpStructureElement {
    public Long getModuleId();

    public void setModuleId(Long var1);

    public void unsetModuleId();

    public boolean isSetModuleId();

    public EList<SwComponentDocumentation> getBswModuleDocumentations();

    public EList<BswModuleEntryRefConditional> getProvidedEntries();

    public EList<BswModuleEntryRefConditional> getOutgoingCallbacks();

    public EList<BswModuleDependency> getBswModuleDependencies();

    public EList<ModeDeclarationGroupPrototype> getProvidedModeGroups();

    public EList<ModeDeclarationGroupPrototype> getRequiredModeGroups();

    public EList<Trigger> getReleasedTriggers();

    public EList<Trigger> getRequiredTriggers();

    public EList<BswInternalBehavior> getInternalBehaviors();

    public PositiveIntegerDatatype getModuleIdData();

    public void setModuleIdData(PositiveIntegerDatatype var1);
}

