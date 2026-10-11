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
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.impl;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationFactory;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GdocumentationFactoryImpl
extends EFactoryImpl
implements GdocumentationFactory {
    public static GdocumentationFactory init() {
        try {
            GdocumentationFactory theGdocumentationFactory = (GdocumentationFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/gtc/d");
            if (theGdocumentationFactory != null) {
                return theGdocumentationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GdocumentationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GdocumentationPackage getGdocumentationPackage() {
        return (GdocumentationPackage)this.getEPackage();
    }

    @Deprecated
    public static GdocumentationPackage getPackage() {
        return GdocumentationPackage.eINSTANCE;
    }
}

