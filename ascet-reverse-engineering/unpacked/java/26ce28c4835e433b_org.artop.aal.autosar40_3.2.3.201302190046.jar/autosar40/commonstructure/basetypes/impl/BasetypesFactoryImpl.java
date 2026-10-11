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
package autosar40.commonstructure.basetypes.impl;

import autosar40.commonstructure.basetypes.BaseTypeAbsSize;
import autosar40.commonstructure.basetypes.BaseTypeDirectDefinition;
import autosar40.commonstructure.basetypes.BaseTypeMaxSize;
import autosar40.commonstructure.basetypes.BasetypesFactory;
import autosar40.commonstructure.basetypes.BasetypesPackage;
import autosar40.commonstructure.basetypes.SwBaseType;
import autosar40.commonstructure.basetypes.impl.BaseTypeAbsSizeImpl;
import autosar40.commonstructure.basetypes.impl.BaseTypeDirectDefinitionImpl;
import autosar40.commonstructure.basetypes.impl.BaseTypeMaxSizeImpl;
import autosar40.commonstructure.basetypes.impl.SwBaseTypeImpl;
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
            BasetypesFactory theBasetypesFactory = (BasetypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/cs/bt");
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
                return this.createBaseTypeMaxSize();
            }
            case 6: {
                return this.createSwBaseType();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
                return this.createBaseTypeEncodingStringFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 7: {
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

