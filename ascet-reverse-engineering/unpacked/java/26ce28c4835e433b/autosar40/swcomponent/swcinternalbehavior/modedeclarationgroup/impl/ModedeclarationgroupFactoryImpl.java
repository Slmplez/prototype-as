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
package autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl;

import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.IncludedModeDeclarationGroupSet;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeAccessPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModeSwitchPoint;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupFactory;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.ModedeclarationgroupPackage;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.IncludedModeDeclarationGroupSetImpl;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModeAccessPointImpl;
import autosar40.swcomponent.swcinternalbehavior.modedeclarationgroup.impl.ModeSwitchPointImpl;
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
            ModedeclarationgroupFactory theModedeclarationgroupFactory = (ModedeclarationgroupFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/mdg");
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
                return this.createIncludedModeDeclarationGroupSet();
            }
            case 1: {
                return this.createModeAccessPoint();
            }
            case 2: {
                return this.createModeSwitchPoint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public IncludedModeDeclarationGroupSet createIncludedModeDeclarationGroupSet() {
        IncludedModeDeclarationGroupSetImpl includedModeDeclarationGroupSet = new IncludedModeDeclarationGroupSetImpl();
        return includedModeDeclarationGroupSet;
    }

    public ModeAccessPoint createModeAccessPoint() {
        ModeAccessPointImpl modeAccessPoint = new ModeAccessPointImpl();
        return modeAccessPoint;
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

