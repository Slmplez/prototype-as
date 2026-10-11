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
package gautosar.ggenericstructure.gformulalanguage.impl;

import gautosar.ggenericstructure.gformulalanguage.GformulalanguageFactory;
import gautosar.ggenericstructure.gformulalanguage.GformulalanguagePackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GformulalanguageFactoryImpl
extends EFactoryImpl
implements GformulalanguageFactory {
    public static GformulalanguageFactory init() {
        try {
            GformulalanguageFactory theGformulalanguageFactory = (GformulalanguageFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/gs/fl");
            if (theGformulalanguageFactory != null) {
                return theGformulalanguageFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GformulalanguageFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GformulalanguagePackage getGformulalanguagePackage() {
        return (GformulalanguagePackage)this.getEPackage();
    }

    @Deprecated
    public static GformulalanguagePackage getPackage() {
        return GformulalanguagePackage.eINSTANCE;
    }
}

