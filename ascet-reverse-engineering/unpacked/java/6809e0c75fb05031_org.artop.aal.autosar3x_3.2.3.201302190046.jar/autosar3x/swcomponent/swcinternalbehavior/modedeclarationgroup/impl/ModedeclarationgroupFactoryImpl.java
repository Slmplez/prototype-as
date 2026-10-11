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
package autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.impl;

import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupFactory;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar3x.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModeSwitchPointImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class ModedeclarationgroupFactoryImpl
extends EFactoryImpl
implements ModedeclarationgroupFactory {
    public static ModedeclarationgroupFactory init() {
        try {
            ModedeclarationgroupFactory theModedeclarationgroupFactory = (ModedeclarationgroupFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/swc/sib/mdg");
            if (theModedeclarationgroupFactory != null) {
                return theModedeclarationgroupFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new ModedeclarationgroupFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createModeSwitchPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ModeSwitchPoint createModeSwitchPoint() {
        ModeSwitchPointImpl modeSwitchPoint = new ModeSwitchPointImpl();
        return modeSwitchPoint;
    }

    public ModedeclarationgroupPackage getModedeclarationgroupPackage() {
        return (ModedeclarationgroupPackage)this.getEPackage();
    }

    @Deprecated
    public static ModedeclarationgroupPackage getPackage() {
        return ModedeclarationgroupPackage.eINSTANCE;
    }
}

