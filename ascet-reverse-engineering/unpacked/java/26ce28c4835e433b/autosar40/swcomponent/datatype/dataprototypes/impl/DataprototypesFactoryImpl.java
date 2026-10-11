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
package autosar40.swcomponent.datatype.dataprototypes.impl;

import autosar40.swcomponent.datatype.dataprototypes.ApplicationArrayElement;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationCompositeElementDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.ApplicationRecordElement;
import autosar40.swcomponent.datatype.dataprototypes.AutosarDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesFactory;
import autosar40.swcomponent.datatype.dataprototypes.DataprototypesPackage;
import autosar40.swcomponent.datatype.dataprototypes.ParameterDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import autosar40.swcomponent.datatype.dataprototypes.impl.ApplicationArrayElementImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.ApplicationCompositeElementDataPrototypeImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.ApplicationRecordElementImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.AutosarDataPrototypeImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.DataPrototypeImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.ParameterDataPrototypeImpl;
import autosar40.swcomponent.datatype.dataprototypes.impl.VariableDataPrototypeImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DataprototypesFactoryImpl
extends EFactoryImpl
implements DataprototypesFactory {
    public static DataprototypesFactory init() {
        try {
            DataprototypesFactory theDataprototypesFactory = (DataprototypesFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/swc/d/dp");
            if (theDataprototypesFactory != null) {
                return theDataprototypesFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DataprototypesFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createApplicationArrayElement();
            }
            case 1: {
                return this.createApplicationCompositeElementDataPrototype();
            }
            case 2: {
                return this.createDataPrototype();
            }
            case 3: {
                return this.createApplicationRecordElement();
            }
            case 4: {
                return this.createAutosarDataPrototype();
            }
            case 5: {
                return this.createParameterDataPrototype();
            }
            case 6: {
                return this.createVariableDataPrototype();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public ApplicationArrayElement createApplicationArrayElement() {
        ApplicationArrayElementImpl applicationArrayElement = new ApplicationArrayElementImpl();
        return applicationArrayElement;
    }

    public ApplicationCompositeElementDataPrototype createApplicationCompositeElementDataPrototype() {
        ApplicationCompositeElementDataPrototypeImpl applicationCompositeElementDataPrototype = new ApplicationCompositeElementDataPrototypeImpl();
        return applicationCompositeElementDataPrototype;
    }

    public DataPrototype createDataPrototype() {
        DataPrototypeImpl dataPrototype = new DataPrototypeImpl();
        return dataPrototype;
    }

    public ApplicationRecordElement createApplicationRecordElement() {
        ApplicationRecordElementImpl applicationRecordElement = new ApplicationRecordElementImpl();
        return applicationRecordElement;
    }

    public AutosarDataPrototype createAutosarDataPrototype() {
        AutosarDataPrototypeImpl autosarDataPrototype = new AutosarDataPrototypeImpl();
        return autosarDataPrototype;
    }

    public ParameterDataPrototype createParameterDataPrototype() {
        ParameterDataPrototypeImpl parameterDataPrototype = new ParameterDataPrototypeImpl();
        return parameterDataPrototype;
    }

    public VariableDataPrototype createVariableDataPrototype() {
        VariableDataPrototypeImpl variableDataPrototype = new VariableDataPrototypeImpl();
        return variableDataPrototype;
    }

    public DataprototypesPackage getDataprototypesPackage() {
        return (DataprototypesPackage)this.getEPackage();
    }

    @Deprecated
    public static DataprototypesPackage getPackage() {
        return DataprototypesPackage.eINSTANCE;
    }
}

