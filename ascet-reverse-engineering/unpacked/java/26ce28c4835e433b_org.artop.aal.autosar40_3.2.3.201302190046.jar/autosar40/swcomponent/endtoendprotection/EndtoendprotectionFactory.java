/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.endtoendprotection;

import autosar40.swcomponent.endtoendprotection.EndToEndDescription;
import autosar40.swcomponent.endtoendprotection.EndToEndProtection;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionSet;
import autosar40.swcomponent.endtoendprotection.EndToEndProtectionVariablePrototype;
import autosar40.swcomponent.endtoendprotection.EndtoendprotectionPackage;
import autosar40.swcomponent.endtoendprotection.impl.EndtoendprotectionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EndtoendprotectionFactory
extends EFactory {
    public static final EndtoendprotectionFactory eINSTANCE = EndtoendprotectionFactoryImpl.init();

    public EndToEndDescription createEndToEndDescription();

    public EndToEndProtection createEndToEndProtection();

    public EndToEndProtectionVariablePrototype createEndToEndProtectionVariablePrototype();

    public EndToEndProtectionSet createEndToEndProtectionSet();

    public EndtoendprotectionPackage getEndtoendprotectionPackage();
}

