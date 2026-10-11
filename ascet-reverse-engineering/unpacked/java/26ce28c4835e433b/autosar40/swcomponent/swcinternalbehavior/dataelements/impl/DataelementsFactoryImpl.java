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
package autosar40.swcomponent.swcinternalbehavior.dataelements.impl;

import autosar40.swcomponent.swcinternalbehavior.dataelements.ArVariableInImplementationDataInstanceRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarParameterRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.AutosarVariableRef;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsFactory;
import autosar40.swcomponent.swcinternalbehavior.dataelements.DataelementsPackage;
import autosar40.swcomponent.swcinternalbehavior.dataelements.ParameterAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccess;
import autosar40.swcomponent.swcinternalbehavior.dataelements.VariableAccessScopeEnum;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.ArVariableInImplementationDataInstanceRefImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.AutosarParameterRefImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.AutosarVariableRefImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.ParameterAccessImpl;
import autosar40.swcomponent.swcinternalbehavior.dataelements.impl.VariableAccessImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DataelementsFactoryImpl
extends EFactoryImpl
implements DataelementsFactory {
    public static DataelementsFactory init() {
        try {
            DataelementsFactory theDataelementsFactory = (DataelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/sib/de");
            if (theDataelementsFactory != null) {
                return theDataelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DataelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createArVariableInImplementationDataInstanceRef();
            }
            case 1: {
                return this.createAutosarParameterRef();
            }
            case 2: {
                return this.createParameterAccess();
            }
            case 3: {
                return this.createVariableAccess();
            }
            case 4: {
                return this.createAutosarVariableRef();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Object createFromString(EDataType eDataType, String initialValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.createVariableAccessScopeEnumFromString(eDataType, initialValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public String convertToString(EDataType eDataType, Object instanceValue) {
        switch (eDataType.getClassifierID()) {
            case 5: {
                return this.convertVariableAccessScopeEnumToString(eDataType, instanceValue);
            }
        }
        throw new IllegalArgumentException("The datatype '" + eDataType.getName() + "' is not a valid classifier");
    }

    public ArVariableInImplementationDataInstanceRef createArVariableInImplementationDataInstanceRef() {
        ArVariableInImplementationDataInstanceRefImpl arVariableInImplementationDataInstanceRef = new ArVariableInImplementationDataInstanceRefImpl();
        return arVariableInImplementationDataInstanceRef;
    }

    public AutosarParameterRef createAutosarParameterRef() {
        AutosarParameterRefImpl autosarParameterRef = new AutosarParameterRefImpl();
        return autosarParameterRef;
    }

    public ParameterAccess createParameterAccess() {
        ParameterAccessImpl parameterAccess = new ParameterAccessImpl();
        return parameterAccess;
    }

    public VariableAccess createVariableAccess() {
        VariableAccessImpl variableAccess = new VariableAccessImpl();
        return variableAccess;
    }

    public AutosarVariableRef createAutosarVariableRef() {
        AutosarVariableRefImpl autosarVariableRef = new AutosarVariableRefImpl();
        return autosarVariableRef;
    }

    public VariableAccessScopeEnum createVariableAccessScopeEnumFromString(EDataType eDataType, String initialValue) {
        VariableAccessScopeEnum result = VariableAccessScopeEnum.get(initialValue);
        if (result == null) {
            throw new IllegalArgumentException("The value '" + initialValue + "' is not a valid enumerator of '" + eDataType.getName() + "'");
        }
        return result;
    }

    public String convertVariableAccessScopeEnumToString(EDataType eDataType, Object instanceValue) {
        return instanceValue == null ? null : instanceValue.toString();
    }

    public DataelementsPackage getDataelementsPackage() {
        return (DataelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static DataelementsPackage getPackage() {
        return DataelementsPackage.eINSTANCE;
    }
}

