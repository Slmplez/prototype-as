/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.swcomponent.endtoendprotection;

import autosar3x.swcomponent.endtoendprotection.EndToEndDescription;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtection;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionDataElementPrototype_dataElement;
import autosar3x.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar3x.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar3x.swcomponent.endtoendprotection.impl.EndtoendprotectionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EndtoendprotectionFactory
extends EFactory {
    public static final EndtoendprotectionFactory eINSTANCE = EndtoendprotectionFactoryImpl.init();

    public EndToEndDescription createEndToEndDescription();

    public EndToEndProtection createEndToEndProtection();

    public EndToEndProtectionDataElementPrototype createEndToEndProtectionDataElementPrototype();

    public EndToEndProtectionDataElementPrototype_dataElement createEndToEndProtectionDataElementPrototype_dataElement();

    public EndToEndProtectionSet createEndToEndProtectionSet();

    public EndtoendprotectionPackage getEndtoendprotectionPackage();
}

