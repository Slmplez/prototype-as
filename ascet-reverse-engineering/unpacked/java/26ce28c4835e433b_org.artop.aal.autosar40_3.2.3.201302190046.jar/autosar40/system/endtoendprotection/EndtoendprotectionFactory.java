/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.system.endtoendprotection;

import autosar40.system.endtoendprotection.EndToEndProtectionISignalIPdu;
import autosar40.system.endtoendprotection.EndtoendprotectionPackage;
import autosar40.system.endtoendprotection.impl.EndtoendprotectionFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface EndtoendprotectionFactory
extends EFactory {
    public static final EndtoendprotectionFactory eINSTANCE = EndtoendprotectionFactoryImpl.init();

    public EndToEndProtectionISignalIPdu createEndToEndProtectionISignalIPdu();

    public EndtoendprotectionPackage getEndtoendprotectionPackage();
}

