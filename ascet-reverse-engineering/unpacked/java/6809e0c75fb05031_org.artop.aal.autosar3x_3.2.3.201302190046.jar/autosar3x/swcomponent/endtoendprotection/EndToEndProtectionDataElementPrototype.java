/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.endtoendprotection;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype_dataElement;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EndToEndProtectionDataElementPrototype
extends ARObject {
    public EndToEndProtection getEndToEndProtection();

    public void setEndToEndProtection(EndToEndProtection var1);

    public EList<EndToEndProtectionDataElementPrototype_dataElement> getReceivers();

    public EndToEndProtectionDataElementPrototype_dataElement getSender();

    public void setSender(EndToEndProtectionDataElementPrototype_dataElement var1);
}

