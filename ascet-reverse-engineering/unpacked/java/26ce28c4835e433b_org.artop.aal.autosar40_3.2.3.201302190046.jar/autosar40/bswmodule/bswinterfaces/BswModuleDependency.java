/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswinterfaces;

import autosar40.bswmodule.bswinterfaces.BswModuleEntryRefConditional;
import autosar40.bswmodule.bswoverview.BswModuleDescription;
import autosar40.commonstructure.serviceneeds.ServiceNeeds;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleDependency
extends Identifiable {
    public BswModuleDescription getBswModuleDescription();

    public void setBswModuleDescription(BswModuleDescription var1);

    public Long getTargetModuleId();

    public void setTargetModuleId(Long var1);

    public void unsetTargetModuleId();

    public boolean isSetTargetModuleId();

    public EList<BswModuleEntryRefConditional> getRequiredEntries();

    public EList<BswModuleEntryRefConditional> getExpectedCallbacks();

    public EList<ServiceNeeds> getServiceItems();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public PositiveIntegerDatatype getTargetModuleIdData();

    public void setTargetModuleIdData(PositiveIntegerDatatype var1);
}

