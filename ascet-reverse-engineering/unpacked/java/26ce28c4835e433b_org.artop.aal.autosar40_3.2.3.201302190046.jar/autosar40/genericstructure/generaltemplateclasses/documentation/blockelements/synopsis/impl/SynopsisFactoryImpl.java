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
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynArgument;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.SynopsisPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.synopsis.impl.SynArgumentImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class SynopsisFactoryImpl
extends EFactoryImpl
implements SynopsisFactory {
    public static SynopsisFactory init() {
        try {
            SynopsisFactory theSynopsisFactory = (SynopsisFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be/s");
            if (theSynopsisFactory != null) {
                return theSynopsisFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new SynopsisFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createSynArgument();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public SynArgument createSynArgument() {
        SynArgumentImpl synArgument = new SynArgumentImpl();
        return synArgument;
    }

    public SynopsisPackage getSynopsisPackage() {
        return (SynopsisPackage)this.getEPackage();
    }

    @Deprecated
    public static SynopsisPackage getPackage() {
        return SynopsisPackage.eINSTANCE;
    }
}

