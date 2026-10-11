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
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.impl;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GmultilanguagedataFactoryImpl
extends EFactoryImpl
implements GmultilanguagedataFactory {
    public static GmultilanguagedataFactory init() {
        try {
            GmultilanguagedataFactory theGmultilanguagedataFactory = (GmultilanguagedataFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/gtc/d/tm/mld");
            if (theGmultilanguagedataFactory != null) {
                return theGmultilanguagedataFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GmultilanguagedataFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GmultilanguagedataPackage getGmultilanguagedataPackage() {
        return (GmultilanguagedataPackage)this.getEPackage();
    }

    @Deprecated
    public static GmultilanguagedataPackage getPackage() {
        return GmultilanguagedataPackage.eINSTANCE;
    }
}

