/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar3x.commonstructure.basetypes.impl;

import autosar3x.commonstructure.basetypes.BaseTypeAbsSize;
import autosar3x.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeIndirectDefinition;
import autosar3x.commonstructure.basetypes.BaseTypeMaxSize;
import autosar3x.commonstructure.basetypes.BasetypesFactory;
import autosar3x.commonstructure.basetypes.BasetypesPackage;
import autosar3x.commonstructure.basetypes.SwBaseType;
import autosar3x.commonstructure.basetypes.impl.BaseTypeAbsSizeImpl;
import autosar3x.commonstructure.basetypes.impl.BaseTypeDirectDefinitionImpl;
import autosar3x.commonstructure.basetypes.impl.BaseTypeIndirectDefinitionImpl;
import autosar3x.commonstructure.basetypes.impl.BaseTypeMaxSizeImpl;
import autosar3x.commonstructure.basetypes.impl.SwBaseTypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BasetypesFactoryImpl
extends EFactoryImpl
implements BasetypesFactory {
    public static BasetypesFactory init() {
        try {
            BasetypesFactory theBasetypesFactory = (BasetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/cs/bt");
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

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.createBaseTypeEncodingStringFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 8: {
                return this.convertBaseTypeEncodingStringToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
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

    public String createBaseTypeEncodingStringFromString(EDataType eDataType, String initialValue) {
        return (String)super.createFromString(eDataType, initialValue);
    }

    public String convertBaseTypeEncodingStringToString(EDataType eDataType, Object instanceValue) {
        return super.convertToString(eDataType, instanceValue);
    }

    public BasetypesPackage getBasetypesPackage() {
        return (BasetypesPackage)this.getEPackage();
    }

    @Deprecated
    public static BasetypesPackage getPackage() {
        return BasetypesPackage.eINSTANCE;
    }
}

