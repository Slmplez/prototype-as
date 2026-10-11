/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GeneralParameter;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.GerneralparametersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharAbsTol;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharMinTypMax;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharNumericalContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmCharTextualContents;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.GeneralParameterImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharAbsTolImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharMinTypMaxImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharNumericalContentsImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmCharTextualContentsImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.impl.PrmsImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GerneralparametersFactoryImpl
extends EFactoryImpl
implements GerneralparametersFactory {
    public static GerneralparametersFactory init() {
        try {
            GerneralparametersFactory theGerneralparametersFactory = (GerneralparametersFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/gp");
            if (theGerneralparametersFactory != null) {
                return theGerneralparametersFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GerneralparametersFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createGeneralParameter();
            }
            case 1: {
                return this.createPrmChar();
            }
            case 3: {
                return this.createPrmCharAbsTol();
            }
            case 5: {
                return this.createPrmCharMinTypMax();
            }
            case 6: {
                return this.createPrmCharNumericalContents();
            }
            case 7: {
                return this.createPrmCharTextualContents();
            }
            case 8: {
                return this.createPrms();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GeneralParameter createGeneralParameter() {
        GeneralParameterImpl generalParameter = new GeneralParameterImpl();
        return generalParameter;
    }

    public PrmChar createPrmChar() {
        PrmCharImpl prmChar = new PrmCharImpl();
        return prmChar;
    }

    public PrmCharAbsTol createPrmCharAbsTol() {
        PrmCharAbsTolImpl prmCharAbsTol = new PrmCharAbsTolImpl();
        return prmCharAbsTol;
    }

    public PrmCharMinTypMax createPrmCharMinTypMax() {
        PrmCharMinTypMaxImpl prmCharMinTypMax = new PrmCharMinTypMaxImpl();
        return prmCharMinTypMax;
    }

    public PrmCharNumericalContents createPrmCharNumericalContents() {
        PrmCharNumericalContentsImpl prmCharNumericalContents = new PrmCharNumericalContentsImpl();
        return prmCharNumericalContents;
    }

    public PrmCharTextualContents createPrmCharTextualContents() {
        PrmCharTextualContentsImpl prmCharTextualContents = new PrmCharTextualContentsImpl();
        return prmCharTextualContents;
    }

    public Prms createPrms() {
        PrmsImpl prms = new PrmsImpl();
        return prms;
    }

    public GerneralparametersPackage getGerneralparametersPackage() {
        return (GerneralparametersPackage)this.getEPackage();
    }

    @Deprecated
    public static GerneralparametersPackage getPackage() {
        return GerneralparametersPackage.eINSTANCE;
    }
}

