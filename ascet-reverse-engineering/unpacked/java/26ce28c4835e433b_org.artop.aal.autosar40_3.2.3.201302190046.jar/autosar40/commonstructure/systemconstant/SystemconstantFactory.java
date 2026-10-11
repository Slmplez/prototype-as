/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.commonstructure.systemconstant;

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.commonstructure.systemconstant.SystemconstantPackage;
import autosar40.commonstructure.systemconstant.impl.SystemconstantFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SystemconstantFactory
extends EFactory {
    public static final SystemconstantFactory eINSTANCE = SystemconstantFactoryImpl.init();

    public SwSystemconst createSwSystemconst();

    public SystemconstantPackage getSystemconstantPackage();
}

