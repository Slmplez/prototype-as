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
package gautosar.gcommonstructure.gmodedeclaration.impl;

import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationFactory;
import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GmodedeclarationFactoryImpl
extends EFactoryImpl
implements GmodedeclarationFactory {
    public static GmodedeclarationFactory init() {
        try {
            GmodedeclarationFactory theGmodedeclarationFactory = (GmodedeclarationFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/cs/md");
            if (theGmodedeclarationFactory != null) {
                return theGmodedeclarationFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GmodedeclarationFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GmodedeclarationPackage getGmodedeclarationPackage() {
        return (GmodedeclarationPackage)this.getEPackage();
    }

    @Deprecated
    public static GmodedeclarationPackage getPackage() {
        return GmodedeclarationPackage.eINSTANCE;
    }
}

