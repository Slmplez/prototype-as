/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.swcomponent.softwarecomponentdocumentation;

import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import autosar40.swcomponent.softwarecomponentdocumentation.impl.SoftwarecomponentdocumentationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SoftwarecomponentdocumentationFactory
extends EFactory {
    public static final SoftwarecomponentdocumentationFactory eINSTANCE = SoftwarecomponentdocumentationFactoryImpl.init();

    public SwComponentDocumentation createSwComponentDocumentation();

    public SoftwarecomponentdocumentationPackage getSoftwarecomponentdocumentationPackage();
}

