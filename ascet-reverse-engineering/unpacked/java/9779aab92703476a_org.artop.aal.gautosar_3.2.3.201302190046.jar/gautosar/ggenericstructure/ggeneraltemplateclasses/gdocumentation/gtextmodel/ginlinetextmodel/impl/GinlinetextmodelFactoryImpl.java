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
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.impl;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GinlinetextmodelFactoryImpl
extends EFactoryImpl
implements GinlinetextmodelFactory {
    public static GinlinetextmodelFactory init() {
        try {
            GinlinetextmodelFactory theGinlinetextmodelFactory = (GinlinetextmodelFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/gtc/d/itm");
            if (theGinlinetextmodelFactory != null) {
                return theGinlinetextmodelFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GinlinetextmodelFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GinlinetextmodelPackage getGinlinetextmodelPackage() {
        return (GinlinetextmodelPackage)this.getEPackage();
    }

    @Deprecated
    public static GinlinetextmodelPackage getPackage() {
        return GinlinetextmodelPackage.eINSTANCE;
    }
}

