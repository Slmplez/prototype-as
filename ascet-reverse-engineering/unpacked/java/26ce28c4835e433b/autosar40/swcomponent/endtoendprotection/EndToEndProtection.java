/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.endtoendprotection;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.endtoendprotection.EndToEndDescription;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionVariablePrototype;
import autosar40.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EndToEndProtection
extends Identifiable {
    public EndToEndProtectionSet getEndToEndProtectionSet();

    public void setEndToEndProtectionSet(EndToEndProtectionSet var1);

    public EndToEndDescription getEndToEndProfile();

    public void setEndToEndProfile(EndToEndDescription var1);

    public EList<EndToEndProtectionISignalIPdu> getEndToEndProtectionISignalIPdus();

    public EList<EndToEndProtectionVariablePrototype> getEndToEndProtectionVariablePrototypes();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

