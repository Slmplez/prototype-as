/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.endtoendprotection;

import autosar3x.genericstructure.infrastructure.identifiable.Identifiable;
import autosar3x.swcomponent.endtoendprotection.EndToEndDescription;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar3x.system.endtoendprotection.EndToEndProtectionISignalIPdu;
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

    public EList<EndToEndProtectionDataElementPrototype> getEndToEndProtectionDataElementPrototypes();

    public EList<EndToEndProtectionISignalIPdu> getEndToEndProtectionISignalIPdus();
}

