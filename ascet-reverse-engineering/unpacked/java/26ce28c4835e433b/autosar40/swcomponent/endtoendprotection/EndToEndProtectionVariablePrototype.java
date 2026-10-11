/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.endtoendprotection;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.system.instancerefs.VariableDataPrototypeInSystemInstanceRef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EndToEndProtectionVariablePrototype
extends ARObject {
    public EndToEndProtection getEndToEndProtection();

    public void setEndToEndProtection(EndToEndProtection var1);

    public EList<VariableDataPrototypeInSystemInstanceRef> getReceivers();

    public VariableDataPrototypeInSystemInstanceRef getSender();

    public void setSender(VariableDataPrototypeInSystemInstanceRef var1);

    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

