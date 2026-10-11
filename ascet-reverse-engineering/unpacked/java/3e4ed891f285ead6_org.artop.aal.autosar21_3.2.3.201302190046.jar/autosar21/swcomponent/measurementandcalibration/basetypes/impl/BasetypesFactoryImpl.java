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
package autosar21.swcomponent.measurementandcalibration.basetypes.impl;

import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeAbsSize;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeDirectDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeIndirectDefinition;
import autosar21.swcomponent.measurementandcalibration.basetypes.BaseTypeMaxSize;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesFactory;
import autosar21.swcomponent.measurementandcalibration.basetypes.BasetypesPackage;
import autosar21.swcomponent.measurementandcalibration.basetypes.SwBaseType;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BaseTypeAbsSizeImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BaseTypeDirectDefinitionImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BaseTypeIndirectDefinitionImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.BaseTypeMaxSizeImpl;
import autosar21.swcomponent.measurementandcalibration.basetypes.impl.SwBaseTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BasetypesFactoryImpl
extends EFactoryImpl
implements BasetypesFactory {
    public static BasetypesFactory init() {
        try {
            BasetypesFactory theBasetypesFactory = (BasetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/2.1.5/autosar21/swc/mac/bt");
            if (theBasetypesFactory != null) {
                return theBasetypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BasetypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 2: {
                return this.createBaseTypeAbsSize();
            }
            case 4: {
                return this.createBaseTypeDirectDefinition();
            }
            case 5: {
                return this.createBaseTypeIndirectDefinition();
            }
            case 6: {
                return this.createBaseTypeMaxSize();
            }
            case 7: {
                return this.createSwBaseType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public BaseTypeAbsSize createBaseTypeAbsSize() {
        BaseTypeAbsSizeImpl baseTypeAbsSize = new BaseTypeAbsSizeImpl();
        return baseTypeAbsSize;
    }

    public BaseTypeDirectDefinition createBaseTypeDirectDefinition() {
        BaseTypeDirectDefinitionImpl baseTypeDirectDefinition = new BaseTypeDirectDefinitionImpl();
        return baseTypeDirectDefinition;
    }

    public BaseTypeIndirectDefinition createBaseTypeIndirectDefinition() {
        BaseTypeIndirectDefinitionImpl baseTypeIndirectDefinition = new BaseTypeIndirectDefinitionImpl();
        return baseTypeIndirectDefinition;
    }

    public BaseTypeMaxSize createBaseTypeMaxSize() {
        BaseTypeMaxSizeImpl baseTypeMaxSize = new BaseTypeMaxSizeImpl();
        return baseTypeMaxSize;
    }

    public SwBaseType createSwBaseType() {
        SwBaseTypeImpl swBaseType = new SwBaseTypeImpl();
        return swBaseType;
    }

    public BasetypesPackage getBasetypesPackage() {
        return (BasetypesPackage)this.getEPackage();
    }

    @Deprecated
    public static BasetypesPackage getPackage() {
        return BasetypesPackage.eINSTANCE;
    }
}

