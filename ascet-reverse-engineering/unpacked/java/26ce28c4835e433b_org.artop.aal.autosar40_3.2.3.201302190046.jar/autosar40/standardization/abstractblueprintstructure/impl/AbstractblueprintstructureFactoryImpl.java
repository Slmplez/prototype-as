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
package autosar40.standardization.abstractblueprintstructure.impl;

import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructureFactory;
import autosar40.standardization.abstractblueprintstructure.AbstractblueprintstructurePackage;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintImpl;
import autosar40.standardization.abstractblueprintstructure.impl.AtpBlueprintableImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AbstractblueprintstructureFactoryImpl
extends EFactoryImpl
implements AbstractblueprintstructureFactory {
    public static AbstractblueprintstructureFactory init() {
        try {
            AbstractblueprintstructureFactory theAbstractblueprintstructureFactory = (AbstractblueprintstructureFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/standardization/abs");
            if (theAbstractblueprintstructureFactory != null) {
                return theAbstractblueprintstructureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AbstractblueprintstructureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 1: {
                return this.createAtpBlueprintable();
            }
            case 2: {
                return this.createAtpBlueprint();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AtpBlueprintable createAtpBlueprintable() {
        AtpBlueprintableImpl atpBlueprintable = new AtpBlueprintableImpl();
        return atpBlueprintable;
    }

    public AtpBlueprint createAtpBlueprint() {
        AtpBlueprintImpl atpBlueprint = new AtpBlueprintImpl();
        return atpBlueprint;
    }

    public AbstractblueprintstructurePackage getAbstractblueprintstructurePackage() {
        return (AbstractblueprintstructurePackage)this.getEPackage();
    }

    @Deprecated
    public static AbstractblueprintstructurePackage getPackage() {
        return AbstractblueprintstructurePackage.eINSTANCE;
    }
}

