/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharAbsTol;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharMinTypMax;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharTextualContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.GerneralparametersFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GerneralparametersFactory
extends EFactory {
    public static final GerneralparametersFactory eINSTANCE = GerneralparametersFactoryImpl.init();

    public GeneralParameter createGeneralParameter();

    public PrmChar createPrmChar();

    public PrmCharAbsTol createPrmCharAbsTol();

    public PrmCharMinTypMax createPrmCharMinTypMax();

    public PrmCharNumericalContents createPrmCharNumericalContents();

    public PrmCharTextualContents createPrmCharTextualContents();

    public Prms createPrms();

    public GerneralparametersPackage getGerneralparametersPackage();
}

