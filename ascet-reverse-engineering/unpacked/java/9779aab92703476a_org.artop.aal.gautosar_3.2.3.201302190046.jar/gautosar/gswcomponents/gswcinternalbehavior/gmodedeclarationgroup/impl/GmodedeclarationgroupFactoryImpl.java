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
package gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.impl;

import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupFactory;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class GmodedeclarationgroupFactoryImpl
extends EFactoryImpl
implements GmodedeclarationgroupFactory {
    public static GmodedeclarationgroupFactory init() {
        try {
            GmodedeclarationgroupFactory theGmodedeclarationgroupFactory = (GmodedeclarationgroupFactory)EPackage.Registry.INSTANCE.getEFactory("http://artop.org/gautosar/swc/sib/mdg");
            if (theGmodedeclarationgroupFactory != null) {
                return theGmodedeclarationgroupFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new GmodedeclarationgroupFactoryImpl();
    }

    public EObject create(EClass eClass) {
        eClass.getClassifierID();
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public GmodedeclarationgroupPackage getGmodedeclarationgroupPackage() {
        return (GmodedeclarationgroupPackage)this.getEPackage();
    }

    @Deprecated
    public static GmodedeclarationgroupPackage getPackage() {
        return GmodedeclarationgroupPackage.eINSTANCE;
    }
}

