/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynArgument;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl.SynopsisFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface SynopsisFactory
extends EFactory {
    public static final SynopsisFactory eINSTANCE = SynopsisFactoryImpl.init();

    public SynArgument createSynArgument();

    public SynopsisPackage getSynopsisPackage();
}

