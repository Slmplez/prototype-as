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
package autosar21.swcomponent.internalbehavior.modedeclarationgroup.impl;

import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupFactory;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar21.swcomponent.internalbehavior.modedeclarationgroup.impl.ModeSwitchPointImpl;
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
            ModedeclarationgroupFactory theModedeclarationgroupFactory = (ModedeclarationgroupFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/ib/mdg");
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

