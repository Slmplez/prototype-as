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
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.impl;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GlanguagedatamodelFactoryImpl
extends EFactoryImpl
implements GlanguagedatamodelFactory {
    public static GlanguagedatamodelFactory init() {
        try {
            GlanguagedatamodelFactory theGlanguagedatamodelFactory = (GlanguagedatamodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/gtc/d/tm/ldm");
            if (theGlanguagedatamodelFactory != null) {
                return theGlanguagedatamodelFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GlanguagedatamodelFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GlanguagedatamodelPackage getGlanguagedatamodelPackage() {
        return (GlanguagedatamodelPackage)this.getEPackage();
    }

    @Deprecated
    public static GlanguagedatamodelPackage getPackage() {
        return GlanguagedatamodelPackage.eINSTANCE;
    }
}

