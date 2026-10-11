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
package autosar40.genericstructure.abstractstructure.impl;

import autosar40.genericstructure.abstractstructure.AbstractstructureFactory;
import autosar40.genericstructure.abstractstructure.AbstractstructurePackage;
import autosar40.genericstructure.abstractstructure.AtpFeature;
import autosar40.genericstructure.abstractstructure.impl.AtpFeatureImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class AbstractstructureFactoryImpl
extends EFactoryImpl
implements AbstractstructureFactory {
    public static AbstractstructureFactory init() {
        try {
            AbstractstructureFactory theAbstractstructureFactory = (AbstractstructureFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/as");
            if (theAbstractstructureFactory != null) {
                return theAbstractstructureFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new AbstractstructureFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 3: {
                return this.createAtpFeature();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public AtpFeature createAtpFeature() {
        AtpFeatureImpl atpFeature = new AtpFeatureImpl();
        return atpFeature;
    }

    public AbstractstructurePackage getAbstractstructurePackage() {
        return (AbstractstructurePackage)this.getEPackage();
    }

    @Deprecated
    public static AbstractstructurePackage getPackage() {
        return AbstractstructurePackage.eINSTANCE;
    }
}

